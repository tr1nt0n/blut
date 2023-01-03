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

score = library.blut_score(ts.section_15_ts)

# bass clarinet music commands

for voice_name in [
    "bassclarinet voice",
    "percussion voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(
            evans.talea(
                [
                    1,
                ],
                8,
            )
        ),
        trinton.treat_tuplets(),
        trinton.force_rest(selector=trinton.select_leaves_by_index([-1])),
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
        trinton.beam_durations(
            [
                (1, 4),
                (5, 8),
            ]
        ),
        trinton.attachment_command(
            attachments=[abjad.Dynamic("mf"), abjad.Articulation("tenuto")],
            selector=trinton.patterned_leaf_index_selector(
                [
                    0,
                    2,
                ],
                8,
                pitched=True,
            ),
        ),
        trinton.attachment_command(
            attachments=[
                abjad.Dynamic("p"),
            ],
            selector=trinton.patterned_leaf_index_selector(
                [
                    1,
                    3,
                ],
                8,
                pitched=True,
            ),
        ),
        voice=score[voice_name],
    )

for measure_range, note_ties in zip(
    [
        (2,),
        (3,),
        (4,),
        (5,),
    ],
    [
        [
            8,
            9,
        ],
        [
            8,
            9,
        ],
        [
            4,
            5,
            6,
            7,
            8,
            9,
        ],
        [
            6,
            7,
            8,
            9,
        ],
    ],
):
    for voice_name in ["bassclarinet voice", "cello 2 voice"]:
        trinton.make_music(
            lambda _: trinton.select_target(_, measure_range),
            evans.RhythmHandler(
                evans.talea(
                    [
                        3,
                        1,
                        6,
                        1,
                    ],
                    32,
                )
            ),
            trinton.treat_tuplets(),
            trinton.force_rest(selector=trinton.pleaves()),
            trinton.force_note(
                selector=trinton.select_logical_ties_by_index(note_ties)
            ),
            evans.RewriteMeterCommand(boundary_depth=-2),
            voice=score[voice_name],
        )

for voice_name in ["bassclarinet voice", "cello 2 voice", "percussion voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (6,)),
        evans.RhythmHandler(evans.talea([15, 1], 32)),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        voice=score[voice_name],
    )

for voice_name in library.all_voice_names:
    trinton.make_music(
        lambda _: trinton.select_target(_, (7, 8)),
        evans.RhythmHandler(evans.talea([31, 1, 15, 1], 32)),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 8)),
    evans.PitchHandler(
        [
            8,
            8,
            6,
            6,
        ]
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
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
    library.totem_attachments(bcl=True),
    voice=score["bassclarinet voice"],
)

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    library.tremolo(),
    library.perc_instrument(
        instrument_string="Slit Drum w/ rubber mallets",
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.totem_attachments(),
    voice=score["percussion voice"],
)

# cello 1 music commands

for voice_name, seed in zip(
    ["cello 1 voice", "cello 2 voice"],
    [
        13,
        69,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(
            evans.accelerando(
                [(1, 20), (1, 8), (1, 32)],
            ),
        ),
        trinton.force_rest(
            selector=trinton.select_leaves_by_index(
                [
                    3,
                    5,
                ],
            )
        ),
        trinton.beam_groups(beam_rests=True),
        rmakers.duration_bracket,
        library.pitch_bat_trat(index=45, seed=seed),
        library.left_beam(selector=trinton.select_tuplets_by_index([0])),
        trinton.change_notehead_command(
            "triangle",
            selector=trinton.pleaves(),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 6)),
    evans.RhythmHandler(
        evans.even_division(
            [16],
            extra_counts=[
                1,
                0,
                -1,
                3,
                3,
                -2,
                0,
            ],
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                2,
                7,
            ],
            8,
        )
    ),
    library.pitch_bat_trat(index=50, seed=13),
    abjad.beam,
    trinton.notehead_bracket_command(),
    trinton.change_notehead_command(
        "triangle",
        selector=trinton.pleaves(),
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            1,
            2,
            1,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    trinton.hooked_spanner_command(
        string="legno trat., molto flaut. pont.",
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
            abjad.Clef("bass"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                5,
                5,
                -6,
                -1,
            ],
            pitched=True,
        ),
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            7,
            8,
        ),
    ),
    evans.PitchHandler(
        [
            -12,
            -12,
            -13,
            -13,
        ]
    ),
    library.totem_attachments(vc=True),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<"),
                abjad.Dynamic("ff"),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string="molto pont.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ],
        ),
        padding=12,
    ),
    voice=score["cello 1 voice"],
)

# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.hooked_spanner_command(
        string="legno trat., molto flaut. pont.",
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
            abjad.Clef("bass"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                -1,
            ]
        ),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 8)),
    evans.PitchHandler(
        [
            -4,
            -4,
            -2,
            -2,
        ]
    ),
    library.totem_attachments(vc=True),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
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
    trinton.hooked_spanner_command(
        string="molto pont.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ],
            pitched=True,
        ),
        padding=10.5,
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
    leaves=[0],
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
    voice="percussion voice",
    leaves=[
        8,
    ],
)

for leaf, tempo in zip(
    [
        3,
    ],
    [
        3,
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
            1,
            3,
        ),
    ),
    trinton.arrow_spanner_command(
        l_string=r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"117" } }',
        r_string=r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }',
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
        -2,
    ],
    attachments=[
        abjad.LilyPondLiteral(
            r'\tweak text "×3" \startMeasureSpanner', "absolute_before"
        ),
        abjad.BarLine(".|:", "before"),
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "before"
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
        abjad.BarLine(":|.", "after"),
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "after"
        ),
        abjad.LilyPondLiteral(
            r"""\set Score.repeatCommands = #'((volta "1 - 2"))""",
            "before",
        ),
        abjad.LilyPondLiteral(
            r"""\set Score.repeatCommands = #'((volta #f))""",
            "after",
        ),
        abjad.LilyPondLiteral(r"\stopMeasureSpanner", "absolute_after"),
    ],
)

# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/15",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="15",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
