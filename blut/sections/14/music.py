import abjad
import baca
import evans
import fractions
import trinton
from abjadext import rmakers
from abjadext import microtones
from blut import library
from blut import ts
from itertools import cycle

# score

score = library.blut_score(ts.section_14_ts)

# fermate

library.fermata_measures(
    score=score,
    measures=[
        8,
    ],
)

# bass clarinet music commands

for voice_name, measure_range in zip(
    [
        "bassclarinet voice",
        "percussion voice",
        "cello 1 voice",
        "cello 2 voice",
    ],
    [
        (4,),
        (1, 7),
        (2, 4),
        (3, 4),
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, measure_range),
        evans.RhythmHandler(
            evans.talea(
                [
                    1,
                ],
                8,
            )
        ),
        trinton.treat_tuplets(),
        trinton.beam_durations(
            [
                (1, 4),
                (5, 8),
                (1, 4),
                (5, 8),
                (1, 4),
                (5, 8),
                (1, 4),
                (5, 8),
            ]
        ),
        trinton.attachment_command(
            attachments=[
                abjad.Articulation("tenuto"),
            ],
            selector=trinton.patterned_tie_index_selector(
                [
                    0,
                    2,
                ],
                7,
                pitched=True,
                first=True
            ),
        ),
        voice=score[voice_name],
    )

    if voice_name == "percussion voice":
        trinton.make_music(
            lambda _: trinton.select_target(_, measure_range),
            evans.PitchHandler(
                [
                    2,
                    -1,
                    2,
                    -1,
                    -1,
                    -1,
                    -1,
                ]
            ),
            trinton.attachment_command(
                attachments=[
                    abjad.Dynamic("p"),
                ],
                selector=trinton.patterned_tie_index_selector(
                    [
                        0,
                        2,
                    ],
                    7,
                    pitched=True,
                    first=True
                ),
            ),
            trinton.attachment_command(
                attachments=[
                    abjad.Dynamic("ppp"),
                ],
                selector=trinton.patterned_tie_index_selector(
                    [
                        1,
                        3,
                    ],
                    7,
                    pitched=True,
                    first=True
                ),
            ),
            library.perc_instrument(
                instrument_string="Frame Drum + Slit Drum w/ sponges",
                selector=trinton.select_leaves_by_index([0]),
            ),
            voice=score[voice_name],
        )

    else:
        trinton.make_music(
            lambda _: trinton.select_target(_, measure_range),
            trinton.linear_attachment_command(
                attachments=[
                    abjad.StartHairpin("o<"),
                    abjad.Dynamic("f"),
                ],
                selector=trinton.select_leaves_by_index([0, -1]),
            ),
            voice=score[voice_name],
        )

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.PitchHandler(
        [
            2,
            -1,
            2,
            -1,
            -1,
            -1,
            -1,
        ]
    ),
    voice=score["bassclarinet voice"],
)

for voice_name in ["bassclarinet voice", "cello 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (5, 6)),
        evans.RhythmHandler(
            evans.tuplet(
                [
                    (
                        13,
                        2,
                        1,
                    )
                ]
            )
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartHairpin("o<"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index(
                [
                    0,
                    2,
                    2,
                    -1,
                ]
            ),
        ),
        library.glissando(),
        abjad.beam,
        voice=score[voice_name],
        preprocessor=trinton.fuse_preprocessor((2,)),
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.PitchHandler(
        [
            4,
        ]
    ),
    library.bcl_vibrato(
        amplitudes="(9 8 7 6 5 4 3 2 1 0.75 0.5 0.25 0)",
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                2,
            ]
        ),
        wave_length="2",
    ),
    trinton.hooked_spanner_command(
        string="teeth",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=10,
        direction="down",
    ),
    voice=score["bassclarinet voice"],
)

# cello 1 music commands

for voice_name, measure_range in zip(
    ["cello 1 voice", "cello 2 voice"], [(2, 4), (3, 4)]
):
    trinton.make_music(
        lambda _: trinton.select_target(_, measure_range),
        trinton.hooked_spanner_command(
            string="bridge, -45°",
            selector=trinton.select_leaves_by_index([0, -1]),
            padding=2.5,
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            5,
            6,
        ),
    ),
    evans.RhythmHandler(evans.even_division([16], extra_counts=[0, -1])),
    trinton.treat_tuplets(),
    trinton.force_rest(selector=trinton.patterned_leaf_index_selector([1, 7], 8)),
    library.pitch_bat_trat(
        seed=13,
        index=45,
    ),
    abjad.beam,
    trinton.change_notehead_command(notehead="triangle", selector=trinton.pleaves()),
    trinton.hooked_spanner_command(
        string="legno trat., molto flaut. pont.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=5.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                10,
                10,
                -1,
            ],
        ),
    ),
    voice=score["cello 1 voice"],
)

# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.PitchHandler(
        [
            -22,
        ]
    ),
    library.tremolo(),
    trinton.hooked_spanner_command(
        string="IV, trem. pont.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=9.5,
    ),
    voice=score["cello 2 voice"],
)

# markups and beams

# trinton.annotate_leaves(score)

library.write_instrument_names(score)

library.write_short_instrument_names(score)

library.two_lines(
    score=score,
    voice="bassclarinet voice",
    leaves=[3],
)

library.five_lines(
    score=score,
    voice="bassclarinet voice",
    leaves=[7],
)

library.two_lines(
    score=score,
    voice="percussion voice",
    leaves=[0],
)

library.one_line(
    score=score,
    voice="cello 1 voice",
    leaves=[1],
)

library.one_line(
    score=score,
    voice="cello 2 voice",
    leaves=[2],
)

library.five_lines(
    score=score,
    voice="cello 1 voice",
    leaves=[12],
    clef="bass",
)

library.five_lines(score=score, voice="cello 2 voice", leaves=[9], clef="bass")

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            1,
            5,
        ),
    ),
    trinton.arrow_spanner_command(
        l_string=r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }',
        r_string=r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"140" } }',
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=8.5,
        tempo=True,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            6,
            7,
        ),
    ),
    trinton.arrow_spanner_command(
        l_string=r'\markup { \abs-fontsize #12 \upright { "Rit." } }',
        r_string=r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }',
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=8.5,
        tempo=True,
    ),
    voice=score["Global Context"],
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        -1,
    ],
    attachments=[
        abjad.BarLine("||"),
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "absolute_after"
        ),
    ],
)

trinton.tuplet_brackets(score, library.all_voice_names)

# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/14",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="14",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
