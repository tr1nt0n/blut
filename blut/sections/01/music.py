import abjad
import baca
import evans
import trinton
from abjadext import rmakers
from abjadext import microtones
from blut import library
from blut import ts
from itertools import cycle

# score

# score = library.blut_score(ts.section_1a_ts)

score = library.blut_score(
    [
        (3, 8),
        (1, 16),
        (5, 8),
        (1, 16),
        (1, 8),
        (1, 16),
        (13, 8),
        (1, 16),
        (3, 8),
        (6, 8),
        (6, 8),
        (5, 8),
        (5, 8),
        (6, 8),
        (6, 8),
        (7, 8),
        (8, 8),
        (9, 8),
    ],
)

# cello 1 music commands

for n in [
    1,
    3,
    7,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (n,)),
        evans.RhythmHandler(rmakers.note),
        evans.RewriteMeterCommand(boundary_depth=-2),
        library.visas_graces(
            alternate=False,
        ),
        voice=score["cello 1 voice"],
    )

for voice_name in library.all_voice_names:
    trinton.make_music(
        lambda _: trinton.select_target(_, (5,)),
        evans.RhythmHandler(rmakers.note),
        evans.RewriteMeterCommand(boundary_depth=-2),
        library.visas_graces(
            alternate=False,
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(rmakers.note),
    voice=score["cello 1 voice"],
)

for m in [
    1,
    3,
    5,
    7,
    9,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (m,)),
        evans.PitchHandler(pitch_list=[[4, 9]]),
        library.artificial_harmonics(),
        library.tremolo(),
        voice=score["cello 1 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 14)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                3,
                1,
                3,
                2,
                3,
                2,
                3,
                1,
                1,
                7,
                3,
                2,
                2,
                3,
                4,
                9,
                -6,
            ],
            16,
        ),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.visas_graces(
        selector=trinton.ranged_selector(
            ranges=[
                range(0, 11),
            ],
            # nested=False
        ),
    ),
    library.visas_graces(
        selector=trinton.select_leaves_by_index(
            [
                13,
                14,
                17,
                21,
                22,
            ],
            grace=False,
        ),
        alternate=False,
    ),
    evans.PitchHandler(pitch_list=library.visas_pitches(0, 1)),
    library.artificial_harmonics(),
    library.visas_attachments(
        selector=trinton.ranged_selector(
            ranges=[
                range(0, 10),
            ],
            grace=False,
        ),
    ),
    library.visas_attachments(
        selector=trinton.select_leaves_by_index(
            [
                10,
            ],
            grace=False,
        ),
        solitary=True,
    ),
    library.visas_attachments(
        selector=trinton.select_leaves_by_index(
            [
                13,
                14,
            ],
            grace=False,
        ),
        solitary=True,
    ),
    library.visas_attachments(
        selector=trinton.select_leaves_by_index(
            [
                17,
            ],
            grace=False,
        ),
        solitary=True,
    ),
    library.visas_attachments(
        selector=trinton.select_leaves_by_index(
            [
                21,
                22,
            ],
            grace=False,
        ),
        solitary=True,
    ),
    trinton.tremolo_command(
        selector=trinton.select_leaves_by_index(
            [
                26,
                27,
            ],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("sfz"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("sfz"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.Articulation("tenuto"),
            abjad.Articulation("tenuto"),
            abjad.Dynamic("mf"),
            abjad.Articulation(">"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("sfz"),
            abjad.Dynamic("sfz"),
            abjad.Articulation("tenuto"),
            abjad.Articulation("tenuto"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("fff"),
            abjad.StartPhrasingSlur(),
            abjad.Dynamic("p"),
            abjad.Articulation("tenuto"),
            abjad.StopPhrasingSlur(),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.Articulation("tenuto"),
            abjad.Articulation("tenuto"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                1,
                2,
                4,
                5,
                6,
                9,
                11,
                11,
                13,
                14,
                15,
                17,
                17,
                17,
                18,
                19,
                20,
                19,
                20,
                21,
                23,
                24,
                24,
                24,
                25,
                26,
                28,
                28,
                29,
                31,
                33,
            ],
        ),
    ),
    trinton.arrow_spanner_command(
        l_string="wide",
        r_string="tight",
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
                6,
                8,
            ]
        ),
        padding=11.5,
        right_padding=-1.5,
    ),
    trinton.arrow_spanner_command(
        l_string="tight",
        r_string="wide",
        selector=trinton.select_leaves_by_index(
            [
                11,
                13,
                26,
                27,
            ]
        ),
        padding=11.5,
        right_padding=-1.5,
    ),
    trinton.arrow_spanner_command(
        l_string="molto tast.",
        r_string="molto pont.",
        selector=trinton.select_leaves_by_index(
            [
                31,
                33,
            ],
            pitched=True,
        ),
        padding=10,
        right_padding=-3,
    ),
    voice=score["cello 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 18)),
    evans.RhythmHandler(
        evans.talea(
            [10, 4, 6, 4, 4, 10, 4, 10, 12, 14, 1, 1, 10, 4, 6, 4, -20],
            32,
        ),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.tuplet(
                [
                    (4, 3),
                ]
            )
        ),
        selector=trinton.select_leaves_by_index([0, 1]),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(3, 4)])),
        selector=trinton.select_leaves_by_index(
            [
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(3, 2)])),
        selector=trinton.select_leaves_by_index(
            [
                -4,
            ],
            pitched=True,
        ),
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.visas_graces(
        selector=trinton.ranged_selector(ranges=[range(4, 18)]),
    ),
    library.visas_graces(
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
            ],
            grace=False,
        ),
        alternate=False,
    ),
    library.visas_graces(
        selector=trinton.select_leaves_by_index(
            [
                20,
                21,
            ],
            grace=False,
        ),
        alternate=False,
    ),
    library.visas_graces(
        selector=trinton.select_leaves_by_index(
            [
                24,
                25,
            ],
            grace=False,
        ),
        alternate=False,
    ),
    evans.PitchHandler(pitch_list=library.visas_pitches(20, 1)),
    library.artificial_harmonics(),
    library.visas_attachments(
        selector=trinton.ranged_selector(ranges=[range(4, 25)]),
    ),
    library.visas_attachments(
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
            ],
            grace=False,
        ),
        solitary=True,
    ),
    library.visas_attachments(
        selector=trinton.select_leaves_by_index(
            [
                20,
                21,
            ],
            grace=False,
        ),
        solitary=True,
    ),
    trinton.tremolo_command(
        selector=trinton.select_leaves_by_index([2, 3, 4, -8, -9]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
            abjad.Articulation(">"),
            abjad.Dynamic("sfz"),
            abjad.Articulation(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("ff"),
            abjad.Articulation(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("mp"),
            abjad.Articulation("tenuto"),
            abjad.Dynamic("sff"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("mf"),
            abjad.Articulation("tenuto"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            abjad.Articulation("staccato"),
            abjad.Articulation("staccato"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.Articulation("tenuto"),
            abjad.Articulation("tenuto"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                2,
                5,
                5,
                6,
                7,
                8,
                9,
                10,
                10,
                11,
                11,
                14,
                17,
                17,
                17,
                20,
                21,
                21,
                23,
                26,
                27,
                27,
                28,
                29,
                29,
                32,
                32,
                33,
                33,
                34,
                34,
                36,
                36,
                -2,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ],
        ),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                18,
                19,
                22,
                23,
                26,
                27,
            ],
            grace=False,
        ),
    ),
    trinton.arrow_spanner_command(
        l_string="tight",
        r_string="wide",
        selector=trinton.select_leaves_by_index(
            [
                7,
                8,
            ]
        ),
        padding=11.5,
        right_padding=-1.5,
    ),
    trinton.arrow_spanner_command(
        l_string="wide",
        r_string="tight",
        selector=trinton.select_leaves_by_index(
            [
                2,
                4,
            ]
        ),
        padding=11.5,
        right_padding=-1.5,
    ),
    trinton.arrow_spanner_command(
        l_string="wide pont.",
        r_string="tight tast.",
        selector=trinton.select_leaves_by_index(
            [
                11,
                13,
                17,
                19,
            ]
        ),
        padding=11.5,
        right_padding=-3,
    ),
    trinton.arrow_spanner_command(
        l_string="wide tast.",
        r_string="tight pont.",
        selector=trinton.select_leaves_by_index(
            [
                23,
                26,
            ]
        ),
        padding=11.5,
        right_padding=-3,
    ),
    trinton.arrow_spanner_command(
        l_string="tast.",
        r_string="pont.",
        selector=trinton.select_leaves_by_index(
            [
                29,
                31,
            ]
        ),
        padding=10,
        right_padding=-1.5,
    ),
    voice=score["cello 1 voice"],
    beam_meter=True,
)

# bass clarinet music commands

for measure, preprocessor in zip(
    [
        1,
        3,
        7,
    ],
    [
        (4, 2),
        (5, 5),
        (20, 6),
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rmakers.note),
        trinton.force_rest(selector=trinton.select_logical_ties_by_index([0])),
        evans.RewriteMeterCommand(boundary_depth=-2),
        library.visas_graces(
            alternate=False,
        ),
        voice=score["bassclarinet voice"],
        preprocessor=trinton.fuse_sixteenths_preprocessor(preprocessor),
    )

for voice_name in [
    "bassclarinet voice",
    "percussion voice",
    "cello 2 voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (9, 10)),
        evans.RhythmHandler(evans.talea([24, 1, -47], 64)),
        evans.RewriteMeterCommand(boundary_depth=-2),
        trinton.attachment_command(
            attachments=[abjad.Glissando()],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score[voice_name],
    )

for measure in [
    1,
    3,
    5,
    7,
    9,
    10,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.PitchHandler([-9]),
        voice=score["bassclarinet voice"],
    )

for m in [(1,), (3,), (5,), (7,), (9, 10)]:
    trinton.make_music(
        lambda _: trinton.select_target(_, m),
        library.bcl_vibrato(
            amplitudes="(0 1 1 1 2 9)",
            wave_length="1",
            selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        ),
        trinton.hooked_spanner_command(
            string="teeth",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=10,
            direction="down",
        ),
        voice=score["bassclarinet voice"],
    )


trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    2,
                )
            ]
        )
    ),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [
                1,
            ]
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=[-9]),
    trinton.beam_groups(beam_rests=False),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Glissando(),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
                1,
                2,
            ]
        ),
    ),
    library.bcl_vibrato(
        amplitudes="(1 1 1 7 2 1 1)",
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        wave_length="0.75",
    ),
    trinton.hooked_spanner_command(
        string="teeth",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=10,
        direction="down",
        right_padding=6.5,
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((1, 5)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 18)),
    evans.RhythmHandler(
        evans.talea(
            [
                -5,
                5,
                3,
                6,
                7,
                1,
                2,
                5,
                3,
            ],
            8,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=library.teeth_on_reed_pitches(1)),
    trinton.hooked_spanner_command(
        string="teeth",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
        direction="down",
    ),
    library.bcl_vibrato(
        amplitudes="(1 7 2 5 4 3 1 7)",
        selector=trinton.select_leaves_by_index(
            [0, 0, 3, 4, 4, 6, 7, 7, 9, 10, 10, -1], pitched=True
        ),
        wave_length="3.25",
        right_padding=12,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

# percussion music commands

for measure, preprocessor in zip(
    [
        1,
        3,
        7,
    ],
    [
        (4, 2),
        (7, 3),
        (14, 12),
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rmakers.note),
        trinton.force_rest(selector=trinton.select_logical_ties_by_index([0])),
        evans.RewriteMeterCommand(boundary_depth=-2),
        library.visas_graces(alternate=False),
        voice=score["percussion voice"],
        preprocessor=trinton.fuse_sixteenths_preprocessor(preprocessor),
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.change_lines(
        lines=1, clef="percussion", selector=trinton.select_leaves_by_index([0])
    ),
    library.perc_instrument(
        instrument_string="Lion's Roar", selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (17,)),
    trinton.attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            13,
            16,
        ),
    ),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    2,
                )
            ]
        )
    ),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [
                1,
            ]
        )
    ),
    trinton.treat_tuplets(),
    trinton.beam_groups(beam_rests=False),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(),
        ],
        selector=trinton.select_leaves_by_index([0, 2], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                2,
                3,
                4,
                4,
            ]
        ),
    ),
    voice=score["percussion voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            1,
            4,
            19,
        ),
    ),
)

# trinton.reduce_tuplets(
#     score=score,
#     voice="percussion voice",
#     tuplets="all",
# )

# # cello 2 music commands

for measure, preprocessor in zip(
    [
        1,
        3,
        7,
    ],
    [
        (1, 5),
        (
            6,
            4,
        ),
        (6, 20),
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rmakers.note),
        trinton.force_rest(selector=trinton.select_logical_ties_by_index([0])),
        evans.RewriteMeterCommand(boundary_depth=-2),
        library.visas_graces(
            alternate=False,
        ),
        trinton.beam_groups(beam_rests=False),
        voice=score["cello 2 voice"],
        preprocessor=trinton.fuse_sixteenths_preprocessor(preprocessor),
    )
#

for m in [1, 3, 5, 7, 9, 10]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (m,)),
        evans.PitchHandler(pitch_list=[[2, 7]]),
        library.artificial_harmonics(),
        library.tremolo(),
        voice=score["cello 2 voice"],
    )

for voice_name in library.all_voice_names:
    for m in [
        1,
        3,
        5,
        7,
    ]:
        trinton.make_music(
            lambda _: trinton.select_target(_, (m,)),
            library.visas_attachments(solitary=True),
            voice=score[voice_name],
        )


for voice_name in ["cello 1 voice", "cello 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.arrow_spanner_command(
            l_string="wide trem. tast.",
            r_string="tight trem. pont.",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=12,
            right_padding=-5,
        ),
        voice=score[voice_name],
    )

    for m in [
        3,
        5,
        7,
    ]:
        trinton.make_music(
            lambda _: trinton.select_target(_, (m,)),
            trinton.hooked_spanner_command(
                string="sim.",
                selector=trinton.select_leaves_by_index([0, -1], pitched=True),
                padding=10.5,
            ),
            voice=score[voice_name],
        )

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    evans.RhythmHandler(evans.talea([-3, 5, -3], 8)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.visas_graces(
        alternate=False,
    ),
    evans.PitchHandler(pitch_list=library.visas_pitches(22, 2)),
    library.artificial_harmonics(),
    library.tremolo(),
    library.visas_attachments(solitary=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.arrow_spanner_command(
        l_string="tight trem. tast.",
        r_string="wide trem. pont.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ],
            pitched=True,
        ),
        padding=11,
        right_padding=-5,
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                3,
                -4,
                2,
                4,
                -6,
            ],
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.visas_graces(selector=trinton.select_leaves_by_index([0, 1])),
    library.visas_graces(
        selector=trinton.select_leaves_by_index(
            [
                2,
            ],
            pitched=True,
            grace=False,
        ),
        alternate=False,
    ),
    library.visas_graces(
        selector=trinton.select_leaves_by_index(
            [
                3,
            ],
            pitched=True,
            grace=False,
        ),
        alternate=False,
    ),
    evans.PitchHandler(pitch_list=library.visas_pitches(0, 2)),
    library.artificial_harmonics(),
    library.visas_attachments(
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
            ]
        )
    ),
    library.visas_attachments(
        selector=trinton.select_leaves_by_index(
            [
                6,
                7,
            ],
            pitched=True,
        ),
        solitary=True,
    ),
    trinton.tremolo_command(
        selector=trinton.select_leaves_by_index([-1, -2], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([4, 5], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("sfz"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.Articulation(">"),
            abjad.Dynamic("sff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, 3, 5, 6, 6, -1],
            pitched=True,
        ),
    ),
    trinton.arrow_spanner_command(
        l_string="wide tast.",
        r_string="tight pont.",
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
            ],
            pitched=True,
        ),
        padding=11.5,
        right_padding=-2,
    ),
    trinton.arrow_spanner_command(
        l_string="tight pont.",
        r_string="wide molto tast.",
        selector=trinton.select_leaves_by_index(
            [
                -2,
                -1,
            ],
            pitched=True,
        ),
        padding=11.5,
        right_padding=-3,
    ),
    voice=score["cello 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            15,
            17,
        ),
    ),
    evans.RhythmHandler(evans.talea([1, 1, 2, 1, 3, 2, 4, 5, -2], 8)),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.tuplet(
                [
                    (3, 4),
                ]
            )
        ),
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.tuplet(
                [
                    (5, 4),
                ]
            )
        ),
        selector=trinton.select_leaves_by_index(
            [
                3,
            ]
        ),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.visas_graces(
        selector=trinton.select_leaves_by_index([7, 8, 9, 10], grace=False),
    ),
    library.visas_graces(
        selector=trinton.select_leaves_by_index(
            [
                2,
            ],
            grace=False,
        ),
        alternate=False,
    ),
    library.visas_graces(
        selector=trinton.select_leaves_by_index(
            [
                6,
            ],
            grace=False,
        ),
        alternate=False,
    ),
    library.visas_graces(
        selector=trinton.select_leaves_by_index(
            [
                11,
                12,
                13,
            ],
            grace=False,
        ),
        alternate=False,
    ),
    library.visas_graces(
        selector=trinton.select_leaves_by_index([14, 15], grace=False), alternate=False
    ),
    evans.PitchHandler(pitch_list=library.visas_pitches(7, 2)),
    library.artificial_harmonics(),
    library.visas_attachments(
        selector=trinton.select_leaves_by_index(
            [
                9,
                10,
                11,
                12,
                13,
                14,
            ]
        ),
    ),
    library.visas_attachments(
        selector=trinton.select_leaves_by_index([2, 3]), solitary=True
    ),
    library.visas_attachments(
        selector=trinton.select_leaves_by_index([7, 8]), solitary=True
    ),
    library.visas_attachments(
        selector=trinton.select_leaves_by_index(
            [
                15,
                16,
                17,
                18,
            ]
        ),
        solitary=True,
    ),
    library.visas_attachments(
        selector=trinton.select_leaves_by_index(
            [
                19,
                20,
                21,
            ]
        ),
        solitary=True,
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando()], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[range(4, 7)],
            nested=True,
        ),
        no_ties=True,
    ),
    trinton.tremolo_command(
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
                7,
                8,
                19,
                20,
                21,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.Articulation(">"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.Articulation("staccato"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("sfz"),
            abjad.Articulation(">"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Articulation("staccato"),
            abjad.Dynamic("f"),
            abjad.Articulation(">"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                2,
                3,
                4,
                6,
                7,
                7,
                8,
                9,
                9,
                10,
                10,
                12,
                12,
                14,
                14,
                15,
                15,
                18,
                19,
                19,
                22,
            ],
        ),
    ),
    trinton.arrow_spanner_command(
        l_string="wide",
        r_string="tight",
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
                7,
                8,
            ],
        ),
        padding=11,
        right_padding=-1.5,
    ),
    trinton.arrow_spanner_command(
        l_string="tast.",
        r_string="molt pont.",
        selector=trinton.select_leaves_by_index(
            [
                4,
                6,
            ],
        ),
        padding=5.5,
    ),
    trinton.arrow_spanner_command(
        l_string="tight molto tast.",
        r_string="wide molto pont.",
        selector=trinton.select_leaves_by_index(
            [
                12,
                14,
            ],
            pitched=True,
        ),
        padding=11,
        right_padding=-4,
    ),
    trinton.arrow_spanner_command(
        l_string="wide molto pont.",
        r_string="tight molto tast.",
        selector=trinton.select_leaves_by_index(
            [
                -3,
                -1,
            ],
            pitched=True,
        ),
        padding=11,
        right_padding=-5.5,
    ),
    voice=score["cello 2 voice"],
    beam_meter=True,
)

for voice_name in ["cello 1 voice", "cello 2 voice"]:
    abjad.attach(abjad.Clef("tenorvarC"), abjad.select.leaf(score[voice_name], 0))

# # markups and beams

library.write_instrument_names(score)

library.write_short_instrument_names(score)

trinton.fill_empty_staves_with_skips(score)

trinton.remove_redundant_time_signatures(score=score)

for leaf, tempo in zip(
    [
        0,
        2,
        4,
        6,
        8,
    ],
    [
        4,
        1,
        3,
        2,
        0,
    ],
):
    trinton.attach(
        voice=score["Global Context"],
        leaves=[leaf],
        attachment=library.tempi[tempo],
        direction=abjad.UP,
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

# dynamics

for voice_name in library.all_voice_names:
    for m, dynamic in zip(
        [
            1,
            3,
            5,
            7,
        ],
        ["f", "mp", "p", "ff"],
    ):
        trinton.make_music(
            lambda _: trinton.select_target(_, (m,)),
            library.grunt(dynamic=dynamic),
            voice=score[voice_name],
        )

    for m, attachment in zip([9, 10], [abjad.StartHairpin("o<"), abjad.Dynamic("f")]):
        trinton.make_music(
            lambda _: trinton.select_target(_, (m,)),
            trinton.attachment_command(
                attachments=[attachment],
                selector=trinton.select_leaves_by_index(
                    [
                        0,
                    ]
                ),
            ),
            voice=score[voice_name],
        )

trinton.tuplet_brackets(score, library.all_voice_names)

# fermate

trinton.fermata_measures(
    score=score,
    measures=[
        2,
        4,
        6,
        8,
    ],
    font_size="8.7",
)

# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/01",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
