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

score = library.blut_score(ts.section_12_ts)

# fermate

library.fermata_measures(
    score=score,
    measures=[
        14,
    ],
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.talea(
            [
                5,
                1,
            ],
            64,
        )
    ),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                4,
                5,
            ]
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            8,
            8,
            6,
            6,
        ]
    ),
    library.totem_attachments(bcl=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                3,
                5,
            ],
            pitched=True,
        ),
    ),
    voice=score["bassclarinet voice"],
)

for voice_name in library.all_voice_names:
    trinton.make_music(
        lambda _: trinton.select_target(_, (4, 5)),
        evans.RhythmHandler(
            evans.talea(
                [
                    4,
                    1,
                    6,
                    1,
                    3,
                    1,
                    3,
                    1,
                    5,
                    1,
                ],
                16,
            )
        ),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartHairpin("o<"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<"),
                abjad.Dynamic("ff"),
            ],
            selector=trinton.select_leaves_by_index([0, 1, 2, 5, 6, 8, 9, 11, 12, -1]),
        ),
        voice=score[voice_name],
    )
    trinton.make_music(
        lambda _: trinton.select_target(_, (4, 5)),
        evans.RhythmHandler(
            evans.talea(
                [
                    4,
                    1,
                    6,
                    1,
                    3,
                    1,
                    3,
                    1,
                    5,
                    1,
                ],
                16,
            )
        ),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartHairpin("o<"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<"),
                abjad.Dynamic("ff"),
            ],
            selector=trinton.select_leaves_by_index([0, 1, 2, 5, 6, 8, 9, 11, 12, -1]),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.PitchHandler(
        [
            2.5,
            2.5,
            2.5,
            2.5,
            8,
            8,
            6,
            6,
        ]
    ),
    library.totem_attachments(bcl=True),
    voice=score["bassclarinet voice"],
)

for voice_name, talea, extra_counts, rest_leaves in zip(
    library.all_voice_names,
    [
        [
            6,
            1,
            4,
            1,
            5,
            1,
            3,
            1,
            6,
            1,
            2,
            1,
            5,
            1,
            3,
            1,
        ],
        trinton.rotated_sequence(
            [
                6,
                1,
                4,
                1,
                5,
                1,
                3,
                1,
                6,
                1,
                2,
                1,
                5,
                1,
                3,
                1,
            ],
            2,
        ),
        trinton.rotated_sequence(
            [
                6,
                1,
                4,
                1,
                5,
                1,
                3,
                1,
                6,
                1,
                2,
                1,
                5,
                1,
                3,
                1,
            ],
            4,
        ),
        trinton.rotated_sequence(
            [
                6,
                1,
                4,
                1,
                5,
                1,
                3,
                1,
                6,
                1,
                2,
                1,
                5,
                1,
                3,
                1,
            ],
            6,
        ),
        trinton.rotated_sequence(
            [
                6,
                1,
                4,
                1,
                5,
                1,
                3,
                1,
                6,
                1,
                2,
                1,
                5,
                1,
                3,
                1,
            ],
            8,
        ),
    ],
    [
        [
            0,
            1,
            -2,
            0,
        ],
        [
            1,
            3,
            0,
        ],
        [
            -2,
            0,
            1,
        ],
        [4, 2, 0, 2, -3],
    ],
    [
        [
            2,
            3,
            9,
            10,
            13,
            14,
            15,
            20,
            21,
            -1,
        ],
        [
            0,
            1,
            7,
            8,
            9,
            15,
            16,
            20,
            21,
            27,
            28,
            29,
            30,
            -1,
        ],
        [
            5,
            6,
            7,
            8,
            14,
            15,
            16,
            19,
            20,
            21,
            24,
            25,
            26,
            -1,
        ],
        [
            0,
            1,
            4,
            5,
            12,
            13,
            14,
            15,
            21,
            22,
            23,
            26,
            27,
            28,
            -1,
            -2,
        ],
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (6, 8)),
        evans.RhythmHandler(
            evans.talea(
                talea,
                16,
            )
        ),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(
            _,
            (
                9,
                13,
            ),
        ),
        evans.RhythmHandler(evans.talea(talea, 16, extra_counts=extra_counts)),
        trinton.force_rest(selector=trinton.select_leaves_by_index(rest_leaves)),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            6,
            13,
        ),
    ),
    evans.PitchHandler(
        [
            2.5,
            2.5,
            2.5,
            2.5,
            8,
            8,
            6,
            6,
            8,
            8,
        ]
    ),
    library.totem_attachments(bcl=True),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<"),
                abjad.Dynamic("ff"),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["bassclarinet voice"],
)

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    library.perc_instrument(
        instrument_string="Slit Drum w/ rubber mallets",
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.tremolo(),
    library.totem_attachments(),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            6,
            13,
        ),
    ),
    library.totem_attachments(),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    library.tremolo(),
    voice=score["percussion voice"],
)

# cello 1 music commands

for voice_name, pitch in zip(
    ["cello 1 voice", "cello 2 voice"],
    [
        -1,
        -2,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(evans.talea([43, 1], 32)),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.PitchHandler([pitch]),
        library.totem_attachments(vc=True),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Clef("bass"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1]),
        ),
        trinton.id_spanner_command(
            selector=trinton.select_leaves_by_index([0, -2], pitched=True),
            id="One",
            left_text="tast.",
            right_text="molto pont.",
            style="dashed-line-with-arrow",
            padding=13,
        ),
        trinton.id_spanner_command(
            selector=trinton.select_leaves_by_index(
                [0, -2],
            ),
            id="Two",
            left_text="scratch",
            right_text="flaut.",
            style="dashed-line-with-arrow",
            padding=11,
        ),
        voice=score[voice_name],
    )

for voice_name, pitch_list in zip(
    [
        "cello 1 voice",
        "cello 2 voice",
    ],
    [
        [
            -2,
            -2,
            -4,
            -4,
            -12,
            -12,
        ],
        [
            -13,
            -13,
            -1,
            -1,
            -1,
            -1,
            -4,
            -4,
        ],
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (3,)),
        evans.RhythmHandler(
            evans.talea(
                [
                    5,
                    1,
                ],
                64,
            )
        ),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.PitchHandler(pitch_list),
        library.totem_attachments(vc=True),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
            ],
            selector=trinton.select_leaves_by_index(
                [
                    0,
                    2,
                    3,
                    5,
                    6,
                    8,
                    9,
                    -1,
                ]
            ),
        ),
        trinton.id_spanner_command(
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            id="One",
            left_text="flaut. molto pont.",
            style="dashed-line-with-hook",
            padding=11.5,
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.PitchHandler(
        [
            -13,
            -13,
            -1,
            -1,
            -1,
            -1,
            -4,
            -4,
        ]
    ),
    library.totem_attachments(vc=True),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="One",
        left_text="molto pont.",
        style="dashed-line-with-hook",
        padding=13,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                6,
                8,
                12,
                14,
            ],
        ),
        id="Two",
        left_text="scr.",
        right_text="fl.",
        style="dashed-line-with-arrow",
        padding=11,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                2,
                5,
                9,
                11,
            ],
        ),
        id="Two",
        left_text="fl.",
        right_text="scr.",
        style="dashed-line-with-arrow",
        padding=11,
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            6,
            13,
        ),
    ),
    evans.PitchHandler(
        [
            -13,
            -13,
            -1,
            -1,
            -1,
            -1,
            -4,
            -4,
        ]
    ),
    library.totem_attachments(vc=True),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="One",
        left_text="molto pont.",
        style="dashed-line-with-hook",
        padding=13,
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartHairpin("o<"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["cello 1 voice"],
)

for measure_range, padding in zip(
    [(6, 8), (9,), (10,), (13,)],
    [
        11,
        14,
        11,
        11,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, measure_range),
        trinton.id_spanner_command(
            selector=trinton.logical_ties(first=True, pitched=True),
            id="Two",
            left_text="scr.",
            right_text="fl.",
            style="dashed-line-with-arrow",
            padding=padding,
        ),
        voice=score["cello 1 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            11,
            12,
        ),
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
            ],
            pitched=True,
        ),
        id="Two",
        left_text="scr.",
        right_text="fl.",
        style="dashed-line-with-arrow",
        padding=11,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ],
            pitched=True,
        ),
        id="Two",
        left_text="scr.",
        right_text="fl.",
        style="dashed-line-with-arrow",
        padding=6,
    ),
    voice=score["cello 1 voice"],
)

# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.talea(
            [
                4,
                1,
                6,
                1,
                3,
                1,
            ],
            32,
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            -12,
            -12,
            -13,
            -13,
            -4,
            -4,
        ]
    ),
    library.totem_attachments(vc=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 4, 5, -1]),
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="One",
        left_text="molto pont.",
        style="dashed-line-with-hook",
        padding=14,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [0, -2],
        ),
        id="Two",
        left_text="flaut.",
        right_text="1/2 scr.",
        style="dashed-line-with-arrow",
        padding=12,
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.PitchHandler(
        [
            -2,
            -2,
            -4,
            -4,
            -12,
            -12,
        ],
    ),
    library.totem_attachments(vc=True),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="One",
        left_text="molto pont.",
        style="dashed-line-with-hook",
        padding=14,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                6,
                8,
                12,
                14,
            ],
        ),
        id="Two",
        left_text="fl.",
        right_text="scr.",
        style="dashed-line-with-arrow",
        padding=12,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                2,
                5,
                9,
                11,
            ],
        ),
        id="Two",
        left_text="scr.",
        right_text="fl.",
        style="dashed-line-with-arrow",
        padding=12,
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            6,
            13,
        ),
    ),
    evans.PitchHandler(
        [
            -2,
            -2,
            -4,
            -4,
            -12,
            -12,
        ],
    ),
    library.totem_attachments(vc=True),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="One",
        left_text="molto pont.",
        style="dashed-line-with-hook",
        padding=14,
    ),
    trinton.id_spanner_command(
        selector=trinton.logical_ties(first=True, pitched=True),
        id="Two",
        left_text="fl.",
        right_text="scr.",
        style="dashed-line-with-arrow",
        padding=12,
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
            ],
        ),
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["cello 2 voice"],
)

# markups and beams

# trinton.annotate_leaves(score)

library.write_instrument_names(score)

library.write_short_instrument_names(score)

library.one_line(
    score=score,
    voice="percussion voice",
    leaves=[0],
)

for leaf, tempo in zip(
    [
        0,
        1,
        2,
        3,
        8,
    ],
    [
        4,
        2,
        0,
        2,
        4,
    ],
):
    trinton.attach(
        voice=score["Global Context"],
        leaves=[leaf],
        attachment=library.tempi[tempo],
    )

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            11,
            14,
        ),
    ),
    trinton.arrow_spanner_command(
        l_string=r'\markup { \abs-fontsize #12 \upright { "Rit." } }',
        r_string=r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }',
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=7,
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

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        -1,
    ],
    attachment=abjad.LilyPondLiteral(r"\break", "absolute_after"),
)

trinton.fill_empty_staves_with_skips(score["cello 2 voice"])

trinton.tuplet_brackets(score, library.all_voice_names)

# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/12",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="12",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
