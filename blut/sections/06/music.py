import abjad
import baca
import evans
import fractions
import trinton
from abjadext import rmakers
from abjadext import microtones
from blut import library
from blut import ts

# score

score = library.blut_score(
    ts.section_6_ts,
)

# fermate

library.fermata_measures(
    score=score,
    measures=[
        13,
        18,
        25,
    ],
)

# bass clarinet music commands

for voice_name in [
    "bassclarinet voice",
    "percussion voice",
    "cello 1 voice",
    "cello 2 voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(
            evans.talea(
                [
                    7,
                    1,
                ],
                32,
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
                7,
                10,
            ),
        ),
        evans.RhythmHandler(
            evans.talea(
                [
                    9,
                    1,
                    7,
                    1,
                    2,
                    1,
                    22,
                    1,
                ],
                32,
            )
        ),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler([2.5]),
    library.totem_attachments(bcl=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(([0, 0, -1])),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            7,
            10,
        ),
    ),
    evans.PitchHandler(
        [
            8,
            8,
            2.5,
            2.5,
            2.5,
            2.5,
            6,
            6,
        ]
    ),
    library.totem_attachments(bcl=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 4, 5, 8, 9, 11, 12, -1],
        ),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    evans.RhythmHandler(evans.tuplet([(8, 7, 1)])),
    trinton.treat_tuplets(),
    library.bcl_bells_handler(
        fundamental_string="ef",
        index=2,
    ),
    library.bcl_bells_attachments(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                -1,
            ]
        ),
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (8, 7, 1),
                (
                    8,
                    4,
                    4,
                ),
            ]
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.bcl_bells_handler(
        fundamental_string="af",
        index=3,
    ),
    library.bcl_bells_attachments(),
    trinton.beam_groups(beam_rests=False),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, 3, 5, 5, -1]),
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_preprocessor(
        (
            2,
            2,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    trinton.attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            19,
            20,
        ),
    ),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (8, 7, 1),
            ]
        )
    ),
    library.bcl_bells_handler(
        fundamental_string="fs",
        index=5,
    ),
    library.bcl_bells_attachments(),
    trinton.beam_groups(beam_rests=False),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, -1]),
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

for voice_name in library.all_voice_names:
    trinton.make_music(
        lambda _: trinton.select_target(
            _,
            (
                21,
                22,
            ),
        ),
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
                (9, 32),
            ]
        ),
        trinton.attachment_command(
            attachments=[
                abjad.Articulation("tenuto"),
                abjad.Dynamic("p"),
            ],
            selector=trinton.patterned_tie_index_selector(
                [
                    0,
                    2,
                ],
                7,
                first=True,
            ),
        ),
        trinton.attachment_command(
            attachments=[abjad.Dynamic("ppp")],
            selector=trinton.patterned_tie_index_selector(
                [
                    1,
                    3,
                ],
                7,
                first=True,
            ),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (21, 22)),
    evans.PitchHandler(
        [
            2,
            -1,
            2,
            -1,
            -1,
        ]
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            23,
            24,
        ),
    ),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=library.teeth_on_reed_pitches(0)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ],
        ),
    ),
    trinton.hooked_spanner_command(
        string="teeth",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=10,
        direction="down",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (23, 25)),
    library.bcl_vibrato(
        amplitudes="(0 0.25 0.5 0.75 1 1.5 2 3 4 6 9 11 12 6 2 1 0.5 0)",
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ]
        ),
        wave_length="1.75",
    ),
    voice=score["bassclarinet voice"],
)

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.totem_attachments(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, -1],
        ),
    ),
    library.tremolo(),
    library.perc_instrument(
        instrument_string="Slit Drum w/ rubber mallets",
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            7,
            10,
        ),
    ),
    library.totem_attachments(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 4, 5, 8, 9, 11, 12, -1],
        ),
    ),
    library.tremolo(),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    evans.RhythmHandler(evans.even_division([16])),
    trinton.treat_tuplets(),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_leaf_index_selector(
            [
                1,
                4,
            ],
            5,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")], selector=trinton.select_leaves_by_index([0])
    ),
    library.perc_instrument(
        instrument_string="Lion's Roar",
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string="pizz.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ]
        ),
        padding=6.5,
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(
        evans.even_division(
            [16],
            extra_counts=[
                0,
                -1,
                3,
                0,
            ],
        )
    ),
    trinton.treat_tuplets(),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_leaf_index_selector(
            [
                1,
                4,
                8,
            ],
            9,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string="pizz.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ]
        ),
        padding=4,
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (19, 20)),
    evans.RhythmHandler(evans.even_division([16])),
    trinton.treat_tuplets(),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_leaf_index_selector(
            [
                1,
                4,
                8,
            ],
            9,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string="pizz.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ]
        ),
        padding=4,
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (21, 22)),
    evans.PitchHandler([[2, -1]]),
    library.perc_instrument(
        instrument_string="Frame Drum + Slit Drum w/ sponges ( rub )",
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion voice"],
)

# cello 1 music commands

for voice_name in ["cello 1 voice", "cello 2 voice"]:
    abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score[voice_name], 0))
    trinton.make_music(
        lambda _: trinton.select_target(_, (2,)),
        evans.RhythmHandler(
            evans.talea(
                [
                    8,
                    1,
                ],
                32,
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
                5,
                6,
            ),
        ),
        evans.RhythmHandler(evans.talea([7, 1, 11, 1], 32)),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            1,
            2,
        ),
    ),
    evans.PitchHandler([-1]),
    library.totem_attachments(vc=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>o"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                3,
                -1,
            ],
        ),
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="One",
        left_text="molto pont.",
        style="dashed-line-with-hook",
        padding=13,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [0, 1],
        ),
        id="Two",
        left_text="scratch",
        right_text="flaut.",
        style="dashed-line-with-arrow",
        padding=11,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [3, -1],
        ),
        id="Two",
        left_text="flaut.",
        right_text="scratch",
        style="dashed-line-with-arrow",
        padding=11,
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            3,
            4,
        ),
    ),
    evans.RhythmHandler(evans.even_division([16], extra_counts=[2])),
    trinton.treat_tuplets(),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                6,
                -1,
            ]
        )
    ),
    library.pitch_bat_trat(index=55, seed=16),
    trinton.change_notehead_command(notehead="triangle", selector=trinton.pleaves()),
    abjad.beam,
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="One",
        left_text="legno bat.",
        style="dashed-line-with-hook",
        padding=6.5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, 3], pitched=True),
        id="Two",
        left_text="tast.",
        right_text="pont.",
        style="dashed-line-with-arrow",
        padding=4.5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([4, -1], pitched=True),
        id="Two",
        left_text="pont.",
        right_text="tast.",
        style="dashed-line-with-arrow",
        padding=4.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, -1],
            pitched=True,
        ),
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)


trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            5,
            10,
        ),
    ),
    evans.PitchHandler(
        [
            -2,
            -2,
            -4,
            -4,
            -1,
            -1,
        ]
    ),
    library.totem_attachments(vc=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("o<|"),
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
        selector=trinton.select_leaves_by_index(
            [0, 2, 3, 6, 7, 11, 12, 15, 16, 18, 19, -1],
        ),
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="One",
        left_text="molto pont.",
        style="dashed-line-with-hook",
        padding=13,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [0, 1, 3, 5, 7, 10, 12, 14, 19, -1],
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
            11,
            12,
        ),
    ),
    evans.RhythmHandler(
        evans.talea(
            library.bells_rhythms(0),
            16,
            extra_counts=[
                -2,
                -1,
            ],
        )
    ),
    library.vc_bells_handler(instrument="cello 1", index=13, seed=2),
    library.vc_bells_attachments(
        instrument="cello 1",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.Dynamic("p"),
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                2,
            ]
        ),
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            5,
            6,
        )
    ),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            14,
            17,
        ),
    ),
    evans.RhythmHandler(
        evans.talea(
            library.bells_rhythms(2),
            16,
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 1", index=13, seed=6),
    library.vc_bells_attachments(
        instrument="cello 1",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.Clef("treble"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                10,
                10,
            ]
        ),
    ),
    voice=score["cello 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            19,
            20,
        ),
    ),
    evans.RhythmHandler(
        evans.talea(
            library.bells_rhythms(2),
            16,
            extra_counts=[
                -1,
            ],
        )
    ),
    library.vc_bells_handler(instrument="cello 1", index=19, seed=6),
    library.vc_bells_attachments(
        instrument="cello 1",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.Clef("treble"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                -2,
                -2,
            ]
        ),
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            4,
            9,
        )
    ),
    beam_meter=True,
)

for voice_name in ["cello 1 voice", "cello 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (21, 22)),
        trinton.hooked_spanner_command(
            string="bridge, -45°",
            selector=trinton.select_leaves_by_index([0, -1]),
            padding=4,
        ),
        voice=score[voice_name],
    )

trinton.fuse_tuplet_rests(score["cello 1 voice"])

# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            1,
            2,
        ),
    ),
    evans.PitchHandler([-12]),
    library.totem_attachments(vc=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>o"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                3,
                -1,
            ],
        ),
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="One",
        left_text="molto pont.",
        style="dashed-line-with-hook",
        padding=14.5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [0, 1],
        ),
        id="Two",
        left_text="scratch",
        right_text="flaut.",
        style="dashed-line-with-arrow",
        padding=12.5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [3, -1],
        ),
        id="Two",
        left_text="flaut.",
        right_text="scratch",
        style="dashed-line-with-arrow",
        padding=12.5,
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            3,
            4,
        ),
    ),
    evans.RhythmHandler(evans.even_division([16], extra_counts=[-2])),
    trinton.treat_tuplets(),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                6,
            ]
        )
    ),
    library.pitch_bat_trat(index=30, seed=3),
    trinton.change_notehead_command(notehead="triangle", selector=trinton.pleaves()),
    abjad.beam,
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="One",
        left_text="legno bat.",
        style="dashed-line-with-hook",
        padding=6.5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                5,
                -1,
            ],
            pitched=True,
        ),
        id="Two",
        left_text="pont.",
        right_text="tast.",
        style="dashed-line-with-arrow",
        padding=4.5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                2,
                4,
            ],
            pitched=True,
        ),
        id="Two",
        left_text="tast.",
        right_text="pont.",
        style="dashed-line-with-arrow",
        padding=4.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, -1],
            pitched=True,
        ),
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            5,
            10,
        ),
    ),
    evans.PitchHandler(
        [
            -13,
            -13,
            -12,
            -12,
        ]
    ),
    library.totem_attachments(vc=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("o<|"),
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
        selector=trinton.select_leaves_by_index(
            [0, 2, 3, 6, 7, 11, 12, 15, 16, 18, 19, -1],
        ),
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="One",
        left_text="molto pont.",
        style="dashed-line-with-hook",
        padding=14.5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [0, 1, 3, 5, 7, 10, 12, 14, 19, -1],
        ),
        id="Two",
        left_text="fl.",
        right_text="scr.",
        style="dashed-line-with-arrow",
        padding=12.5,
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            11,
            12,
        ),
    ),
    evans.RhythmHandler(evans.talea(library.bells_rhythms(4), 16)),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 2", index=13, seed=16),
    library.vc_bells_attachments(
        instrument="cello 2",
    ),
    voice=score["cello 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            14,
            17,
        ),
    ),
    evans.RhythmHandler(
        evans.talea(
            library.bells_rhythms(5),
            16,
            extra_counts=[
                -2,
                2,
            ],
        )
    ),
    library.vc_bells_handler(instrument="cello 2", index=17, seed=16),
    library.vc_bells_attachments(
        instrument="cello 2",
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_preprocessor(
        (
            2,
            2,
        )
    ),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            19,
            20,
        ),
    ),
    evans.RhythmHandler(evans.talea(library.bells_rhythms(0), 16)),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 2", index=13, seed=16),
    library.vc_bells_attachments(
        instrument="cello 2",
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([-3]),
    ),
    voice=score["cello 2 voice"],
    beam_meter=True,
)

# markups and beams

# trinton.annotate_leaves(score)

library.one_line(
    score=score,
    voice="percussion voice",
    leaves=[0],
)

library.two_lines(
    score=score,
    voice="percussion voice",
    leaves=[73],
)

library.one_line(
    score=score,
    voice="cello 1 voice",
    leaves=[77],
)

library.one_line(
    score=score,
    voice="cello 2 voice",
    leaves=[89],
)

library.two_lines(
    score=score,
    voice="bassclarinet voice",
    leaves=[43],
)

library.five_lines(
    score=score,
    voice="bassclarinet voice",
    leaves=[48],
)

library.write_instrument_names(score)

library.write_short_instrument_names(score)

for leaf, tempo in zip(
    [
        0,
        4,
        6,
        10,
    ],
    [
        2,
        1,
        0,
        2,
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
            14,
            17,
        ),
    ),
    trinton.arrow_spanner_command(
        l_string=r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }',
        r_string=r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }',
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
            19,
            21,
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
    segment_path="/Users/trintonprater/scores/blut/blut/sections/06",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="06",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
