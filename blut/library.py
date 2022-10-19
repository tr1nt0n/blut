import abjad
import baca
import evans
import trinton
import random
from abjadext import rmakers
from abjadext import microtones
from itertools import cycle

# immutables

visas_tuplets = eval(
    """[
        (1, 10),
        (12, 1),
        (1, 9),
        (12, 1),
        (1, 11),
        (12, 1),
        (1, 6),
        (10, 1),
        (1, 1),
        (10, 1),
        (3, 2),
        (11, 1),
        (3, 4),
        (12, 1),
        (5, 4),
        (10, 1),
    ]"""
)

visas_1_pitch_list = eval(
    """[
        [6, 11],
        6,
        [6, 11],
        [6, 11],
        [6, 11],
        6,
        [6, 11],
        [6, 11],
        [4, 9],
        4,
        [4, 9],
        [4, 9],
        [4, 9],
        4,
        [4, 9],
        [4, 9],
        [6, 11],
        6,
        [6, 11],
        [6, 11],
        [7.5, 12.5],
        7.5,
        [7.5, 12.5],
        [7.5, 12.5],
    ]"""
)

visas_2_pitch_list = eval(
    """[
        [4, 9],
        4,
        [4, 9],
        [4, 9],
        [4, 9],
        4,
        [4, 9],
        [4, 9],
        [2, 7],
        2,
        [2, 7],
        [2, 7],
        [2, 7],
        2,
        [2, 7],
        [2, 7],
        [4, 9],
        4,
        [4, 9],
        [4, 9],
        [5.5, 10.5],
        5.5,
        [5.5, 10.5],
        [5.5, 10.5],
    ]"""
)

# score


def blut_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[
            abjad.BassClarinet(),
            abjad.Percussion(),
            abjad.Cello(),
            abjad.Cello(),
        ],
        groups=[
            1,
            1,
            2,
        ],
        time_signatures=time_signatures,
    )

    return score


# rhythm


def visas_rhythms(index):
    out = trinton.rotated_sequence(visas_tuplets, index)
    return out


# selectors


def tuplet_index_selector(indices):
    def selector(argument):
        for i in indices:
            tuplet = abjad.select.tuplet(argument, i)
            return tuplet

    return selector


# pitch


def teeth_on_reed_pitches(index):
    pitches = trinton.rotated_sequence(
        [
            -9,
            -2,
            -4,
            -9,
            4,
        ],
        index,
    )

    return pitches


def visas_pitches(index, cello):
    _cello_to_pitch_list = {
        1: visas_1_pitch_list,
        2: visas_2_pitch_list,
    }
    pitches = trinton.rotated_sequence(
        _cello_to_pitch_list[cello],
        index,
    )

    return pitches


# commands


def one_line(
    score,
    leaves,
    voice="percussion voice",
):
    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=leaves,
        attachments=[
            abjad.Clef("percussion"),
            abjad.LilyPondLiteral(
                r"\staff-line-count 1",
                "absolute_before",
            ),
        ],
    )


def artificial_harmonics():
    def change_noteheads(argument):
        leaves = abjad.select.leaves(argument, pitched=True)
        for leaf in leaves:
            if isinstance(leaf, abjad.Chord) is False:
                pass

            else:
                noteheads = leaf.note_heads
                abjad.tweak(noteheads[1], rf"\tweak style #'harmonic")

    return change_noteheads


def tremolo():
    def call_stem_tremolo(argument):
        leaves = abjad.select.leaves(argument, pitched=True)
        trinton.unmeasured_stem_tremolo(leaves)

    return call_stem_tremolo


def glissando():
    def call_glissando(argument):
        leaves = abjad.select.leaves(argument, pitched=True)
        abjad.glissando(
            leaves,
            hide_middle_note_heads=True,
            allow_repeats=True,
            allow_ties=True,
        )

    return call_glissando


def grunt(dynamic="ff", hairpin="o<|"):
    def attach(argument):
        first_leaf = abjad.select.leaf(argument, 0, pitched=True)
        last_leaf = abjad.select.leaf(argument, -1, pitched=True)
        abjad.attach(abjad.StartHairpin(hairpin), first_leaf)
        abjad.attach(abjad.Dynamic(dynamic), last_leaf)

    return attach


def visas_attachments():
    def attach(argument):
        tuplets = abjad.select.tuplets(argument)
        for tuplet in tuplets:
            if tuplets.index(tuplet) % 2 == 1:
                tremolo()(tuplet)
            else:
                pass
            glissando()(tuplet)

    return attach


# markups


def perc_instrument(instrument_string, selector):
    literal = abjad.LilyPondLiteral(rf'\boxed-markup "{instrument_string}" 1', "after")
    command = trinton.attachment_command(
        attachments=[literal],
        selector=selector,
    )
    return command


# spanners


def bcl_vibrato(
    amplitudes,
    selector,
    wave_length="2",
):

    command = trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.LilyPondLiteral(
                    rf"\vibrato #'{amplitudes} #{wave_length}  #0.2", site="before"
                ),
                abjad.StartTrillSpan(),
                abjad.StopTrillSpan(),
            ]
        ),
        selector=selector,
    )

    return command


def hooked_spanner(string, padding):
    start_text_span = abjad.StartTextSpan(
        left_text=abjad.Markup(rf"\markup {{ {string} }}"),
        right_text=None,
        style="dashed-line-with-hook",
    )

    bundle = abjad.bundle(start_text_span, rf"- \tweak padding #{padding}")

    return bundle


# tempi

tempi = [
    abjad.Markup(
        r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }'
    ),
    abjad.Markup(
        r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }'
    ),
    abjad.Markup(
        r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }'
    ),
    abjad.Markup(
        r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"117" } }'
    ),
    abjad.Markup(
        r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"140" } }'
    ),
]

for tempo in tempi:
    abjad.bundle(tempo, r"- \tweak padding #7")

# instrument names

all_voice_names = eval(
    """[
        "bassclarinet voice",
        "percussion voice",
        "cello 1 voice",
        "cello 2 voice",
    ]"""
)

all_instrument_names = eval(
    """[
    abjad.InstrumentName(markup=abjad.Markup(r"\markup \\bold { Bass Clarinet }")),
    abjad.InstrumentName(markup=abjad.Markup(r"\markup \\bold { Percussions }")),
    abjad.InstrumentName(markup=abjad.Markup(r"\markup \\bold { Violoncello I }")),
    abjad.InstrumentName(markup=abjad.Markup(r"\markup \\bold { Violoncello II }")),
]"""
)

all_short_instrument_names = eval(
    """[
    abjad.ShortInstrumentName(markup=abjad.Markup(r"\markup \\bold { b. cl. }")),
    abjad.ShortInstrumentName(markup=abjad.Markup(r"\markup \\bold { perc. }")),
    abjad.ShortInstrumentName(markup=abjad.Markup(r"\markup \\bold { vc. I }")),
    abjad.ShortInstrumentName(markup=abjad.Markup(r"\markup \\bold{ vc. II }")),
]"""
)


def write_instrument_names(score):
    for voice_name, markup in zip(all_voice_names, all_instrument_names):
        trinton.attach(voice=score[voice_name], leaves=[0], attachment=markup)


def write_short_instrument_names(score):
    for voice_name, markup in zip(all_voice_names, all_short_instrument_names):
        trinton.attach(voice=score[voice_name], leaves=[0], attachment=markup)


# fermate


def fermata_measures(score, measures):
    for voice_name in [
        "bassclarinet voice",
        "percussion voice",
        "cello 1 voice",
        "cello 2 voice",
    ]:
        all_measures = abjad.select.group_by_measure(score[voice_name])

        start_command = abjad.LilyPondLiteral(
            r"\stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff",
            "before",
        )

        stop_command = abjad.LilyPondLiteral(r"\stopStaff \startStaff", "after")

        for measure in measures:
            abjad.attach(start_command, all_measures[measure - 1][0])
            abjad.attach(stop_command, all_measures[measure - 1][0])

    trinton.attach_multiple(
        score=score,
        voice="Global Context",
        leaves=[_ - 1 for _ in measures],
        attachments=[
            abjad.Markup(
                r'\markup \huge \center-column { \musicglyph "scripts.ufermata" } '
            ),
            abjad.LilyPondLiteral(
                r"\once \override Score.TimeSignature.transparent = ##t",
                "before",
            ),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f", "absolute_before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.transparent = ##f", "absolute_after"
            ),
        ],
    )
