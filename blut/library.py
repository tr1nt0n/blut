import abjad
import baca
import evans
import fractions
import trinton
import random
import quicktions
from abjadext import rmakers
from abjadext import microtones
from itertools import cycle
import itertools

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

bells_talea = eval(
    """[
        1,
        1,
        1,
        1,
        3,
        1,
        1,
        2,
        1,
        4,
        1,
        1,
        1,
        1,
        1,
        3,
    ]"""
)

vc_1_bells_hexachord = eval(
    """[
        21,
        24.5,
        19,
        26,
        30,
        26.5,
    ]"""
)

vc_2_bells_hexachord = eval(
    """[
        31.5,
        24,
        19,
        24.5,
        28,
        26,
    ]"""
)

bat_trat_pitches = eval(
    """[
        -12.5,
        -5,
        -12,
        -6.5,
        -10.5,
        -6.5,
        -12,
        -5,
    ]"""
)

# dictionaries

_written_pitch_to_fingering = {
    2.5: r"\markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}",
    6: r"\markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (e)))}",
    8: r"\markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two)) (lh . (thumb)) (rh . (two)))}",
}

_written_pitch_to_cent = {
    -13: r'\markup \center-column { \upright "III" \upright "+55" }',
    -12: r'\markup \center-column { \upright "III" \upright "+51" }',
    -4: r'\markup \center-column { \upright "II" \upright "+37" }',
    -2: r'\markup \center-column { \upright "II" \upright "+41" }',
    -1: r'\markup \center-column { \upright "II" \upright "+33" }',
}

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


def bells_rhythms(index):
    out = trinton.rotated_sequence(bells_talea, index)
    return out


def hyperventilation_perc_rhythms(numerators):
    tuplets = []

    for n in numerators:
        tup = []

        r = list(range(0, n))

        for i in r:
            tup.append(1)

        tup = tuple(tup)

        tuplets.append(tup)

    handler = evans.RhythmHandler(evans.tuplet(tuplets))

    return handler


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


def bcl_bells_handler(fundamental_string, index):
    _fund_to_pitch_list = {
        "ef": [
            -9,
            fractions.Fraction(35, -4),
            -9,
            fractions.Fraction(33, -4),
            -9,
            -8.5,
            fractions.Fraction(35, -4),
            fractions.Fraction(33, -4),
        ],
        "fs": [
            -6,
            fractions.Fraction(23, -4),
            -6,
            fractions.Fraction(21, -4),
            -6,
            -5.5,
            fractions.Fraction(23, -4),
            fractions.Fraction(21, -4),
        ],
        "af": [
            -4,
            fractions.Fraction(15, -4),
            -4,
            fractions.Fraction(13, -4),
            -4,
            -3.5,
            fractions.Fraction(15, -4),
            fractions.Fraction(13, -4),
        ],
    }
    microtone_handler = evans.PitchHandler(
        pitch_list=trinton.rotated_sequence(
            _fund_to_pitch_list[fundamental_string],
            index,
        ),
        forget=False,
    )

    def handler(argument):
        microtone_handler(argument)

    return handler


def vc_bells_handler(instrument, index, random_walk=True, seed=0):
    _voice_to_hexachord = {
        "cello 1": vc_1_bells_hexachord,
        "cello 2": vc_2_bells_hexachord,
    }
    _voice_to_open_string = {
        "cello 1": [-24, -3],
        "cello 2": [-3, -24],
    }

    if random_walk is True:
        pitch_list = trinton.random_walk(
            chord=_voice_to_hexachord[instrument],
            seed=seed,
        )

    else:
        pitch_list = _voice_to_hexachord[instrument]

    harmonic_handler = evans.PitchHandler(
        pitch_list=trinton.rotated_sequence(
            pitch_list,
            index,
        ),
        forget=False,
    )

    open_string_handler = evans.PitchHandler(
        pitch_list=_voice_to_open_string[instrument],
        forget=False,
    )

    def handle(argument):
        logical_ties = abjad.select.logical_ties(argument)

        it = iter(logical_ties)

        tups = [*zip(it, it)]

        for tup in tups:
            if abjad.get.duration(tup[0]) > abjad.get.duration(tup[1]):
                open_string_handler(tup[0])
                harmonic_handler(tup[1])
            elif abjad.get.duration(tup[0]) < abjad.get.duration(tup[1]):
                open_string_handler(tup[1])
                harmonic_handler(tup[0])
            else:
                harmonic_handler(tup)

    return handle


def pitch_bat_trat(index=0, seed=0):
    pitch_list = trinton.random_walk(
        chord=bat_trat_pitches,
        seed=seed,
    )
    handler = evans.PitchHandler(pitch_list=trinton.rotated_sequence(pitch_list, index))

    def handle(argument):
        handler(argument)

    return handle


def pitch_monolith(voice_name, index, selector=trinton.pleaves()):
    _voice_name_to_fundamental_list = {
        "bassclarinet voice": [
            -13,
            -12,
            -12,
        ],
        "cello 1 voice": [
            -27,
            -26,
            -26,
        ],
        "cello 2 voice": [
            -27,
            -26,
            -26,
        ],
    }
    _voice_name_to_pitch_list = {
        "bassclarinet voice": trinton.rotated_sequence(["13/1", "11/1", "39/4"], index),
        "cello 1 voice": trinton.rotated_sequence(
            [
                [
                    quicktions.Fraction("4/1"),
                    quicktions.Fraction("9/1"),
                ],
                [
                    quicktions.Fraction("9/8"),
                    quicktions.Fraction("9/1"),
                ],
                [quicktions.Fraction("9/8"), quicktions.Fraction("198/34")],
            ],
            index,
        ),
        "cello 2 voice": trinton.rotated_sequence(
            [
                [quicktions.Fraction("6/5"), quicktions.Fraction("7/1")],
                [quicktions.Fraction("15/4"), quicktions.Fraction("15/1")],
                [quicktions.Fraction("9/8"), quicktions.Fraction("7/1")],
            ],
            index,
        ),
    }

    _voice_name_to_cent_string = {
        "cello 1 voice": trinton.rotated_sequence(
            [
                "+4",
                "+4",
                "+50",
            ],
            index,
        ),
        "cello 2 voice": trinton.rotated_sequence(
            [
                "-31",
                "-12",
                "-31",
            ],
            index,
        ),
        "bassclarinet voice": None,
    }

    fundamental_handler = evans.PitchHandler(
        pitch_list=trinton.rotated_sequence(
            _voice_name_to_fundamental_list[voice_name],
            index,
        )
    )
    ratio_handler = evans.PitchHandler(
        pitch_list=_voice_name_to_pitch_list[voice_name], as_ratios=True
    )

    def pitch(argument):
        selections = selector(argument)
        fundamental_handler(selections)
        selections = selector(argument)
        ratio_handler(selections)
        selections = selector(argument)
        for leaf in abjad.select.leaves(selections):
            if isinstance(leaf, abjad.Chord):
                leaf.note_heads[1].is_forced = True
            else:
                leaf.note_head.is_forced = True

        if voice_name == "cello 1 voice" or voice_name == "cello 2 voice":
            for leaf, string in zip(
                abjad.select.leaves(selections), _voice_name_to_cent_string[voice_name]
            ):
                abjad.detach(abjad.Markup, leaf)
                abjad.attach(
                    abjad.Markup(rf'\markup \upright {{ "{string}" }}'),
                    leaf,
                    direction=abjad.UP,
                )

    return pitch


# commands


def vc_bells_attachments(instrument, padding=9.5):
    def attach(argument):
        logical_ties = abjad.select.logical_ties(argument, pitched=True)

        start_text_span = abjad.StartTextSpan(
            left_text=abjad.Markup(rf'\markup \upright {{ "pizz. molto pont." }}'),
            right_text=None,
            style="dashed-line-with-hook",
        )

        bundle = abjad.bundle(start_text_span, rf"- \tweak padding #{padding}")

        abjad.attach(bundle, logical_ties[0][0])

        abjad.attach(abjad.StopTextSpan(), logical_ties[-1][-1])

        it = iter(logical_ties)

        tups = [*zip(it, it)]

        for tup in tups:
            if abjad.get.duration(tup[0]) > abjad.get.duration(tup[1]):
                abjad.attach(
                    abjad.Clef("bass"),
                    tup[0][0],
                )
                abjad.attach(
                    abjad.Clef("treble"),
                    tup[1][0],
                )
                abjad.attach(
                    abjad.Dynamic("ff"),
                    tup[0][0],
                )
                abjad.attach(
                    abjad.Dynamic("p"),
                    tup[1][0],
                )
                if tup[0][0].written_pitch.number == -24:
                    abjad.attach(
                        abjad.Markup(r'\markup \upright { "IV" }'),
                        tup[0][0],
                        direction=abjad.UP,
                    )
                else:
                    abjad.attach(
                        abjad.Markup(r'\markup \upright { "I" }'),
                        tup[0][0],
                        direction=abjad.UP,
                    )
            elif abjad.get.duration(tup[0]) < abjad.get.duration(tup[1]):
                abjad.attach(
                    abjad.Clef("bass"),
                    tup[1][0],
                )
                abjad.attach(
                    abjad.Clef("treble"),
                    tup[0][0],
                )
                abjad.attach(
                    abjad.Dynamic("ff"),
                    tup[1][0],
                )
                abjad.attach(
                    abjad.Dynamic("p"),
                    tup[0][0],
                )
                if tup[1][0].written_pitch.number == -24:
                    abjad.attach(
                        abjad.Markup(r'\markup \upright { "IV" }'),
                        tup[1][0],
                        direction=abjad.UP,
                    )
                else:
                    abjad.attach(
                        abjad.Markup(r'\markup \upright { "I" }'),
                        tup[1][0],
                        direction=abjad.UP,
                    )
        for tie in logical_ties:
            pitch = tie[0].written_pitch.number
            if pitch == -24 or pitch == -3:
                pass
            else:
                for note in tie:
                    abjad.tweak(note.note_head, rf"\tweak style #'harmonic-mixed")

            if (
                pitch == 24
                or pitch == 28
                or pitch == 30
                or pitch == 31.5
                or pitch == 21
            ):
                abjad.attach(
                    abjad.Markup(r'\markup \upright { "II" }'),
                    tie[0],
                    direction=abjad.UP,
                )

            elif pitch == 24.5 or pitch == 19 or pitch == 26.5:
                abjad.attach(
                    abjad.Markup(r'\markup \upright { "III" }'),
                    tie[0],
                    direction=abjad.UP,
                )

            elif pitch == 26 and instrument == "cello 1":
                abjad.attach(
                    abjad.Markup(r'\markup \upright { "II" }'),
                    tie[0],
                    direction=abjad.UP,
                )

            elif pitch == 26 and instrument == "cello 2":
                abjad.attach(
                    abjad.Markup(r'\markup \upright { "III" }'),
                    tie[0],
                    direction=abjad.UP,
                )

    return attach


def bcl_bells_attachments():
    def attach(argument):
        logical_ties = abjad.select.logical_ties(argument)
        for tie in logical_ties:
            first = tie[0]
            first.note_head.is_forced = True
        slur_groups = abjad.sequence.partition_by_counts(
            sequence=logical_ties,
            counts=[3 for _ in range(len(logical_ties))],
            overhang=True,
        )
        for group in slur_groups:
            abjad.slur(group)
            all_but_last_tie = abjad.select.exclude(group, [-1])
            for tie in all_but_last_tie:
                if len(tie) > 1:
                    abjad.glissando(
                        abjad.select.with_next_leaf(tie),
                        hide_middle_note_heads=True,
                        allow_repeats=True,
                        allow_ties=True,
                    )
                else:
                    abjad.attach(abjad.Glissando(), tie[0])

    return attach


def totem_attachments(
    bcl=False,
    vc=False,
):
    def attach(argument):
        ties = abjad.select.logical_ties(argument, pitched=True)
        groups = abjad.sequence.partition_by_counts(
            sequence=ties,
            counts=[2 for _ in range(len(ties))],
            overhang=True,
        )
        glissando_tweaks = []
        if vc is True:
            glissando_tweaks.append(
                abjad.Tweak(r"- \tweak bound-details.right.arrow ##t")
            )
            glissando_tweaks.append(abjad.Tweak(r"- \tweak arrow-length #2"))
            glissando_tweaks.append(abjad.Tweak(r"- \tweak arrow-width #0.5"))
            glissando_tweaks.append(abjad.Tweak(r"- \tweak thickness #2"))
        for group in groups:
            abjad.beam(group)

            if len(group) > 1:
                abjad.glissando(
                    group,
                    *glissando_tweaks,
                    hide_middle_note_heads=True,
                    allow_repeats=True,
                    allow_ties=True,
                )

            if bcl is True:
                first_leaf = group[0][0]

                pitch = first_leaf.written_pitch.number

                abjad.attach(
                    abjad.Markup(_written_pitch_to_fingering[pitch]),
                    first_leaf,
                    direction=abjad.UP,
                )
            if vc is True:

                abjad.slur(group)

                first_leaf = group[0][0]

                pitch = first_leaf.written_pitch.number

                abjad.attach(
                    abjad.Markup(_written_pitch_to_cent[pitch]),
                    first_leaf,
                    direction=abjad.UP,
                )

                if groups.index(group) % 2 == 1:
                    for leaf in group[0]:
                        abjad.tweak(leaf.note_head, rf"\tweak style #'harmonic-mixed")

                else:
                    for leaf in group[-1]:
                        abjad.tweak(leaf.note_head, rf"\tweak style #'harmonic-mixed")

    return attach


def electroshock_attachments():
    def attach(argument):
        ties = abjad.select.logical_ties(argument, pitched=True)
        for tie in ties:
            abjad.attach(abjad.Articulation(">"), tie[0])
        groups = abjad.select.group_by_contiguity(ties)
        for group in groups:
            abjad.glissando(
                group,
                abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
                abjad.Tweak(r"- \tweak arrow-length #2"),
                abjad.Tweak(r"- \tweak arrow-width #0.5"),
                abjad.Tweak(r"- \tweak thickness #2"),
                hide_middle_note_heads=True,
                allow_repeats=True,
                allow_ties=True,
            )
            if groups.index(group) % 3 == 1:
                for leaf in group[0]:
                    abjad.tweak(leaf.note_head, rf"\tweak style #'harmonic-mixed")

            elif groups.index(group) % 2 == 1:
                for leaf in group[-1]:
                    abjad.tweak(leaf.note_head, rf"\tweak style #'triangle")
                for leaf in group[0]:
                    abjad.tweak(leaf.note_head, rf"\tweak style #'harmonic-mixed")
            else:
                for leaf in group[-1]:
                    abjad.tweak(leaf.note_head, rf"\tweak style #'harmonic-mixed")

    return attach


def noteheads_only():
    def only_noteheads(argument):
        for leaf in abjad.select.leaves(argument):
            abjad.override(leaf).Stem.transparent = True
            abjad.override(leaf).Beam.transparent = True
            abjad.override(leaf).Flag.transparent = True
            abjad.override(leaf).Dots.transparent = True
            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\once \override NoteHead.duration-log = 2", "before"
                ),
                leaf,
            )

    return only_noteheads


def transparent_noteheads(selector):
    def transparent(argument):
        selections = selector(argument)
        for leaf in abjad.select.leaves(selections):
            abjad.override(leaf).NoteHead.transparent = True
            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\once \override NoteHead.no-ledgers = ##t", "before"
                ),
                leaf,
            )

    return transparent


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


def two_lines(
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
                r"\staff-line-count 2",
                "absolute_before",
            ),
        ],
    )


def five_lines(
    score,
    leaves,
    clef="treble",
    voice="percussion voice",
):
    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=leaves,
        attachments=[
            abjad.Clef(clef),
            abjad.LilyPondLiteral(
                r"\staff-line-count 5",
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


def tremolo(selector=None):
    def call_stem_tremolo(argument):
        if selector is not None:
            leaves = selector(argument)
        else:
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


def invisible_rests():
    def rests(argument):
        rests = abjad.select.rests(argument)
        for rest in rests:
            rest_literal = abjad.LilyPondLiteral(
                r"\once \override Rest.transparent = ##t", "before"
            )
            abjad.attach(rest_literal, rest)

    return rests


def left_beam(selector=None):
    def beam(argument):
        if selector is not None:
            for tuplet in selector(argument):
                abjad.override(tuplet[0]).Beam.grow_direction = abjad.LEFT
        else:
            for tuplet in abjad.select.tuplets(argument):
                abjad.override(tuplet[0]).Beam.grow_direction = abjad.LEFT

    return beam


def right_beam(selector=None):
    def beam(argument):
        if selector is not None:
            for tuplet in selector(argument):
                abjad.override(tuplet[0]).Beam.grow_direction = abjad.RIGHT
        else:
            for tuplet in abjad.select.tuplets(argument):
                abjad.override(tuplet[0]).Beam.grow_direction = abjad.RIGHT

    return beam


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


def fermata_measures(score, measures, fermata="ufermata"):
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
                rf'\markup \huge \center-column {{ \musicglyph "scripts.{fermata}" }} '
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
