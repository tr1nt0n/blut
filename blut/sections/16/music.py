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

score = library.blut_score(ts.section_16_ts)

# bass clarinet music commands

for voice_name, talea, rest_ties in zip(
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
            18,
            19,
            22,
            23,
            26,
            27,
            -1,
        ],
        [
            14,
            15,
            20,
            21,
            24,
            25,
            -1,
            -2,
            -3,
            -4,
            -5,
        ],
        [],
        [
            10,
            11,
            14,
            15,
            18,
            19,
            22,
            23,
            -1,
            -2,
            -3,
            -4,
            -5,
            -6,
            -7,
            -8,
        ],
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(
            _,
            (
                1,
                4,
            ),
        ),
        evans.RhythmHandler(
            evans.talea(
                talea,
                32,
            )
        ),
        trinton.treat_tuplets(),
        trinton.force_rest(selector=trinton.select_logical_ties_by_index(rest_ties)),
        evans.RewriteMeterCommand(boundary_depth=-2),
        voice=score[voice_name],
    )

for voice_name in ["bassclarinet voice", "percussion voice", "cello 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(
            _,
            (
                1,
                4,
            ),
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("fff"),
                abjad.StartHairpin("|>o"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index(
                [
                    0,
                    0,
                    -1,
                ],
                pitched=True,
            ),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.PitchHandler(
        [
            2.5,
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            2,
            first=True,
            pitched=True,
        ),
    ),
    library.totem_attachments(bcl=True),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            7,
            8,
        ),
    ),
    evans.RhythmHandler(rmakers.note),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(
        boundary_depth=-2,
    ),
    evans.PitchHandler(library.teeth_on_reed_pitches(2)),
    abjad.beam,
    library.bcl_vibrato(
        amplitudes="(0 1 1 1 2 12 12)",
        wave_length="1.75",
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
                1,
                1,
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.hooked_spanner_command(
        string="teeth",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=10,
        direction="down",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
                1,
                -1,
            ]
        ),
    ),
    voice=score["bassclarinet voice"],
)

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            2,
            first=True,
            pitched=True,
        ),
    ),
    library.totem_attachments(),
    library.tremolo(),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            5,
            6,
        ),
    ),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    -6,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                ),
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                ),
            ]
        )
    ),
    evans.PitchHandler(
        [
            -1,
            -1,
            -1,
            2,
            -1,
            2,
            2,
            2,
            [
                2,
                -1,
            ],
            [
                2,
                -1,
            ],
            [
                2,
                -1,
            ],
        ]
    ),
    trinton.beam_groups(beam_rests=False),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                8,
                8,
                10,
                -1,
            ],
            pitched=True,
        ),
    ),
    library.perc_instrument(
        instrument_string="Frame Drum + Slit Drum w/ drum sticks",
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    voice=score["percussion voice"],
)

# cello 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    3,
                    1,
                    2,
                    1,
                    4,
                    1,
                    2,
                    1,
                    1,
                    1,
                    2,
                    1,
                    4,
                    1,
                )
            ]
        )
    ),
    trinton.treat_tuplets(),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            6,
            7,
        ),
    ),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                    -1,
                    3,
                    1,
                    1,
                    1,
                    -2,
                    1,
                    1,
                    3,
                    1,
                ),
                (
                    1,
                    1,
                    -3,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    4,
                    -1,
                    2,
                    1,
                    1,
                    1,
                    -3,
                    4,
                    1,
                    1,
                ),
            ],
        ),
    ),
    trinton.treat_tuplets(),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.PitchHandler(
        [
            -4,
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            2,
            first=True,
            pitched=True,
        ),
    ),
    library.totem_attachments(vc=True),
    trinton.hooked_spanner_command(
        string="molto pont.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ],
            pitched=True,
        ),
        padding=11,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                53,
                53,
            ]
        ),
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            6,
            7,
        ),
    ),
    evans.PitchHandler(
        [
            6,
        ]
    ),
    trinton.beam_groups(beam_rests=False),
    library.electroshock_attachments(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                13,
                20,
            ],
            pitched=True,
        ),
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1]),
        id="One",
        left_text="IV, vibrato moltissimo",
        style="dashed-line-with-hook",
        padding=7.5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                0,
                20,
            ],
            pitched=True,
        ),
        id="Two",
        left_text="scratch",
        right_text="flaut.",
        style="dashed-line-with-arrow",
        padding=5.5,
    ),
    voice=score["cello 1 voice"],
)

# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler(
        [
            -1,
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            2,
            first=True,
            pitched=True,
        ),
    ),
    library.totem_attachments(vc=True),
    trinton.hooked_spanner_command(
        string="molto pont.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ],
            pitched=True,
        ),
        padding=11.5,
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(
        evans.even_division(
            [16],
            extra_counts=[
                -2,
            ],
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                3,
                8,
                9,
            ],
            13,
        )
    ),
    library.pitch_bat_trat(index=12, seed=13),
    abjad.beam,
    trinton.notehead_bracket_command(),
    trinton.change_notehead_command(
        "triangle",
        selector=trinton.pleaves(),
    ),
    trinton.hooked_spanner_command(
        string="legno bat.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ]
        ),
        padding=5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ]
        ),
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
    leaves=[
        0,
    ],
)

library.two_lines(
    score=score,
    voice="percussion voice",
    leaves=[40],
)

for leaf, tempo in zip(
    [
        4,
        6,
    ],
    [
        1,
        4,
    ],
):
    trinton.attach(
        voice=score["Global Context"],
        leaves=[leaf],
        attachment=library.tempi[tempo],
    )

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        0,
    ],
    attachments=[
        abjad.LilyPondLiteral(
            r"""\set Score.repeatCommands = #'((volta "3"))""",
            "before",
        ),
        abjad.LilyPondLiteral(
            r"""\set Score.repeatCommands = #'((volta #f))""",
            "after",
        ),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        -1,
    ],
    attachments=[
        abjad.Markup(
            r'\markup { \abs-fontsize #15 { \upright "×4" } }',
        ),
        abjad.BarLine(".|:", "before"),
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "before"
        ),
        abjad.BarLine(":|.", "after"),
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "after"
        ),
    ],
)

trinton.fill_empty_staves_with_skips(score)

# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/16",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="16",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
