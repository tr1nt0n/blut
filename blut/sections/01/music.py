import abjad
import baca
import evans
import trinton
from abjadext import rmakers
from abjadext import microtones
from blut import library
from blut import ts

# score

score = library.blut_score(ts.section_1a_ts)

# cello 1 music commands

for n in [
    1,
    3,
    7,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (n,)),
        evans.RhythmHandler(evans.tuplet([(12, 1)])),
        trinton.treat_tuplets(),
        abjad.beam,
        voice=score["cello 1 voice"],
    )

for voice_name in library.all_voice_names:
    trinton.make_music(
        lambda _: trinton.select_target(_, (5,)),
        evans.RhythmHandler(evans.tuplet([(12, 1)])),
        trinton.treat_tuplets(),
        abjad.beam,
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (9,)),
        evans.RhythmHandler(rmakers.note),
        voice=score[voice_name],
    )

for m in [1, 3, 5, 7, 9]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (m,)),
        evans.PitchHandler(pitch_list=[[4, 9]]),
        library.artificial_harmonics(),
        library.tremolo(),
        voice=score["cello 1 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 13)),
    evans.RhythmHandler(
        evans.tuplet(library.visas_rhythms(0)),
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=library.visas_pitches(0, 1)),
    trinton.beam_durations(
        divisions=[
            (1, 16),
            (3, 16),
            (1, 16),
            (3, 16),
            (2, 16),
            (3, 16),
            (2, 16),
            (3, 16),
            (2, 16),
            (7, 16),
            (5, 16),
            (2, 16),
            (7, 16),
            (9, 16),
        ]
    ),
    library.artificial_harmonics(),
    library.visas_attachments(),
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
                3,
                5,
                6,
                8,
                10,
                13,
                13,
                14,
                15,
                16,
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
                26,
                27,
                30,
                30,
                31,
                33,
                34,
            ],
        ),
    ),
    trinton.arrow_spanner_command(
        l_string="wide",
        r_string="tight",
        selector=trinton.select_leaves_by_index(
            [
                3,
                4,
                8,
                9,
            ]
        ),
        padding=16,
    ),
    trinton.arrow_spanner_command(
        l_string="tight",
        r_string="wide",
        selector=trinton.select_leaves_by_index(
            [
                13,
                14,
                27,
                29,
            ]
        ),
        padding=16.5,
    ),
    trinton.arrow_spanner_command(
        l_string="molto tast.",
        r_string="molto pont.",
        selector=trinton.select_leaves_by_index(
            [
                -2,
                -1,
            ],
            pitched=True,
        ),
        padding=11.5,
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            1,
            3,
            1,
            3,
            2,
            3,
            2,
            3,
            2,
            7,
            5,
            2,
            7,
            9,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(
        evans.tuplet(library.visas_rhythms(14)),
    ),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [
                -1,
                -2,
                -3,
            ]
        )
    ),
    evans.PitchHandler(pitch_list=library.visas_pitches(20, 1)),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(),
    trinton.beam_durations(
        divisions=[
            (5, 16),
            (2, 16),
            (3, 16),
            (2, 16),
            (2, 16),
            (5, 16),
            (2, 16),
            (5, 16),
            (6, 16),
            (7, 16),
            (1, 16),
        ]
    ),
    library.artificial_harmonics(),
    library.visas_attachments(),
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
            abjad.StartPhrasingSlur(),
            abjad.Articulation("staccato"),
            abjad.StopPhrasingSlur(),
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
                12,
                12,
                14,
                15,
                17,
                17,
                19,
                19,
                20,
                21,
                23,
                24,
                24,
                24,
                25,
                25,
                26,
                26,
                28,
                28,
                29,
                29,
                30,
                30,
                32,
                32,
                35,
            ]
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
        padding=16,
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
        padding=16.5,
    ),
    trinton.arrow_spanner_command(
        l_string="wide pont.",
        r_string="tight tast.",
        selector=trinton.select_leaves_by_index(
            [
                12,
                13,
                17,
                18,
            ]
        ),
        padding=12,
    ),
    trinton.arrow_spanner_command(
        l_string="wide tast.",
        r_string="tight pont.",
        selector=trinton.select_leaves_by_index(
            [
                21,
                23,
            ]
        ),
        padding=12.5,
    ),
    trinton.arrow_spanner_command(
        l_string="tast.",
        r_string="pont.",
        selector=trinton.select_leaves_by_index(
            [
                26,
                27,
            ]
        ),
        padding=10.5,
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            5,
            2,
            3,
            2,
            2,
            5,
            2,
            5,
            6,
            7,
            1,
        )
    ),
)

# bass clarinet music commands

for measure, tuplet, preprocessor in zip(
    [
        1,
        3,
        7,
    ],
    [
        (4, 1),
        (11, 2),
        (
            2,
            1,
        ),
    ],
    [
        (4, 2),
        (5, 5),
        (
            20,
            6,
        ),
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.tuplet([tuplet])),
        trinton.force_rest(library.tuplet_index_selector((0,))),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        trinton.beam_groups(beam_rests=False),
        voice=score["bassclarinet voice"],
        preprocessor=trinton.fuse_sixteenths_preprocessor(preprocessor),
    )

for measure in [
    1,
    3,
    5,
    7,
    9,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.PitchHandler([-9]),
        voice=score["bassclarinet voice"],
    )

for m in [(1,), (3,), (5,), (7,), (9,)]:
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
    lambda _: trinton.select_target(_, (10,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral("\stopTrillSpan", site="after"),
            abjad.LilyPondLiteral("\stopTextSpan", site="after"),
        ],
        selector=trinton.select_leaves_by_index(
            [0],
        ),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral("\stopTrillSpan", site="after"),
            abjad.LilyPondLiteral("\stopTextSpan", site="after"),
        ],
        selector=trinton.select_leaves_by_index(
            [0],
        ),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
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
                2,
                3,
                4,
                5,
                6,
                7,
            ]
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(),
    evans.PitchHandler(pitch_list=[-9]),
    trinton.beam_groups(beam_rests=False),
    library.glissando(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                2,
            ]
        ),
    ),
    library.bcl_vibrato(
        amplitudes="(1 1 1 7 2 1 1)",
        selector=trinton.select_leaves_by_index([0, 0, -1]),
        wave_length="0.75",
    ),
    trinton.hooked_spanner_command(
        string="teeth",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=10,
        direction="down",
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 17)),
    evans.RhythmHandler(rmakers.note),
    trinton.force_rest(selector=trinton.select_leaves_by_index([0])),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=library.teeth_on_reed_pitches(1)),
    trinton.beam_groups(
        beam_rests=False,
    ),
    trinton.hooked_spanner_command(
        string="teeth",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
        direction="down",
    ),
    library.bcl_vibrato(
        amplitudes="(1 7 2 5 4 3 1 7)",
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
                1,
                1,
                3,
                3,
                3,
                6,
                6,
                6,
                8,
                8,
                8,
                11,
                11,
                11,
                13,
            ],
            pitched=True,
        ),
        wave_length="3.25",
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
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            2,
            5,
            3,
            6,
            7,
            1,
        ),
    ),
)

# percussions music commands

for measure, tuplet, preprocessor in zip(
    [
        1,
        3,
        7,
    ],
    [
        (4, 1),
        (3, 1),
        (5, 1),
    ],
    [
        (4, 2),
        (7, 3),
        (14, 12),
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.tuplet([tuplet])),
        trinton.force_rest(library.tuplet_index_selector((0,))),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        trinton.beam_groups(beam_rests=False),
        voice=score["percussion voice"],
        preprocessor=trinton.fuse_sixteenths_preprocessor(preprocessor),
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
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
            12,
            15,
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
    trinton.glissando_command(selector=trinton.tuplets()),
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

library.one_line(score=score, leaves=[0])

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.perc_instrument(
        instrument_string="Lion`s Roar", selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["percussion voice"],
)

trinton.reduce_tuplets(
    score=score,
    voice="percussion voice",
    tuplets="all",
)

# cello 2 music commands

for measure, tuplet, preprocessor in zip(
    [
        1,
        3,
        7,
    ],
    [(9, 1), (4, 1), (9, 1)],
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
        evans.RhythmHandler(evans.tuplet([tuplet])),
        trinton.force_rest(library.tuplet_index_selector((0,))),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        trinton.beam_groups(beam_rests=False),
        voice=score["cello 2 voice"],
        preprocessor=trinton.fuse_sixteenths_preprocessor(preprocessor),
    )


for m in [1, 3, 5, 7, 9]:
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
            library.glissando(),
            voice=score[voice_name],
        )

for voice_name in ["cello 1 voice", "cello 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.arrow_spanner_command(
            l_string="wide trem. tast.",
            r_string="tight trem. pont.",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=13.5,
        ),
        voice=score[voice_name],
    )

    for m, padding in zip(
        [
            3,
            5,
            7,
        ],
        [
            11,
            16,
            7.5,
        ],
    ):
        trinton.make_music(
            lambda _: trinton.select_target(_, (m,)),
            trinton.hooked_spanner_command(
                string="sim.",
                selector=trinton.select_leaves_by_index([0, -1], pitched=True),
                padding=padding,
            ),
            voice=score[voice_name],
        )

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(
        evans.tuplet(library.visas_rhythms(0)),
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0, -1])),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(),
    evans.PitchHandler(pitch_list=library.visas_pitches(22, 2)),
    library.artificial_harmonics(),
    library.glissando(),
    library.tremolo(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ],
            pitched=True,
        ),
    ),
    trinton.arrow_spanner_command(
        l_string="trem. tight tast.",
        r_string="trem. wide pont.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ],
            pitched=True,
        ),
        padding=11,
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            3,
            5,
            3,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.RhythmHandler(
        evans.tuplet(library.visas_rhythms(12)),
    ),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [
                2,
            ]
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(),
    evans.PitchHandler(pitch_list=library.visas_pitches(0, 2)),
    trinton.beam_durations(
        divisions=[
            (3, 16),
            (3, 16),
            (4, 16),
            (2, 16),
            (4, 16),
        ]
    ),
    library.artificial_harmonics(),
    library.visas_attachments(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("sfz"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.Dynamic("sff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Articulation(">"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                4,
                4,
                -1,
                8,
            ],
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
        padding=15.5,
    ),
    trinton.arrow_spanner_command(
        l_string="tight pont.",
        r_string="wide molto tast.",
        selector=trinton.select_leaves_by_index(
            [
                7,
                9,
            ],
            pitched=True,
        ),
        padding=11.5,
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            3,
            3,
            4,
            2,
            4,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            14,
            16,
        ),
    ),
    evans.RhythmHandler(
        evans.tuplet(library.visas_rhythms(12)),
    ),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [
                -1,
                -2,
                -3,
            ]
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(),
    evans.PitchHandler(pitch_list=library.visas_pitches(7, 2)),
    library.artificial_harmonics(),
    library.visas_attachments(),
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
            abjad.StartPhrasingSlur(),
            abjad.Articulation("staccato"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("sfz"),
            abjad.Articulation(">"),
            abjad.StopPhrasingSlur(),
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
                9,
                10,
                10,
                10,
                11,
                11,
                11,
                12,
                12,
                13,
                13,
                14,
                14,
                16,
                17,
                17,
                19,
            ],
        ),
    ),
    trinton.beam_durations(
        divisions=[
            (1, 8),
            (1, 8),
            (2, 8),
            (1, 8),
            (3, 8),
            (2, 8),
            (4, 8),
            (5, 8),
        ]
    ),
    trinton.arrow_spanner_command(
        l_string="wide",
        r_string="tight",
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
                7,
                9,
            ],
            pitched=True,
        ),
        padding=15.5,
    ),
    trinton.arrow_spanner_command(
        l_string="tast.",
        r_string="molt pont.",
        selector=trinton.select_leaves_by_index(
            [
                4,
                6,
            ],
            pitched=True,
        ),
        padding=10.5,
    ),
    trinton.arrow_spanner_command(
        l_string="wide molto tast.",
        r_string="wide molto pont.",
        selector=trinton.select_leaves_by_index(
            [
                12,
                13,
            ],
            pitched=True,
        ),
        padding=11.5,
    ),
    trinton.arrow_spanner_command(
        l_string="wide molto pont.",
        r_string="tight molto tast.",
        selector=trinton.select_leaves_by_index(
            [
                -2,
                -1,
            ],
            pitched=True,
        ),
        padding=11.5,
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            1,
            1,
            2,
            1,
            3,
            2,
            4,
            5,
        )
    ),
)

# markups and beams

library.write_instrument_names(score)

library.write_short_instrument_names(score)

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

# fermate

library.fermata_measures(
    score=score,
    measures=[
        2,
        4,
        6,
        8,
    ],
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
