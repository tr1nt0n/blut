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
    ts.section_7_ts,
)

# bass clarinet music commands

for measures in [
    (5,),
    (
        8,
        9,
    ),
    (
        11,
        16,
    ),
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        evans.RhythmHandler(rmakers.note),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.PitchHandler(library.teeth_on_reed_pitches(4)),
        voice=score["bassclarinet voice"],
    )

for voice_name in library.all_voice_names:
    for measure in [1, 17]:
        trinton.make_music(
            lambda _: trinton.select_target(_, (measure,)),
            evans.RhythmHandler(evans.even_division([8])),
            trinton.treat_tuplets(),
            trinton.beam_durations([(1, 4), (5, 8), (1, 4), (5, 8)]),
            trinton.attachment_command(
                attachments=[
                    abjad.Articulation("tenuto"),
                    abjad.Dynamic("p"),
                ],
                selector=trinton.patterned_leaf_index_selector(
                    [
                        0,
                        2,
                    ],
                    7,
                    pitched=True,
                ),
            ),
            trinton.attachment_command(
                attachments=[
                    abjad.Dynamic("ppp"),
                ],
                selector=trinton.patterned_leaf_index_selector(
                    [
                        1,
                        3,
                    ],
                    7,
                    pitched=True,
                ),
            ),
            voice=score[voice_name],
        )

for measure in [1, 17]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 4)),
    evans.RhythmHandler(evans.tuplet([(8, 7, 1)])),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    abjad.beam,
    library.bcl_bells_handler(
        fundamental_string="fs",
        index=0,
    ),
    library.bcl_bells_attachments(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                3,
                4,
                4,
                6,
                7,
                7,
                -1,
            ]
        ),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(evans.tuplet([(8, 7, 1), (8, 5, 3)])),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    abjad.beam,
    library.bcl_bells_handler(
        fundamental_string="ef",
        index=3,
    ),
    library.bcl_bells_attachments(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, 3, 4, 4, -1]),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
            ]
        ),
    ),
    library.bcl_vibrato(
        amplitudes="(9 10 11 1 2 1.5 1 2 3 1 1.25)",
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                2,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string="teeth",
        selector=trinton.select_leaves_by_index([0, 1]),
        padding=10,
        direction="down",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 10)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    library.bcl_vibrato(
        amplitudes="(0.5 1 2.5 6 4 7 3 11 2 2 2 3)",
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                2,
            ]
        ),
        wave_length="2.63",
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
    lambda _: trinton.select_target(_, (11, 15)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("sfp"),
            abjad.StartHairpin("--"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                3,
                3,
            ]
        ),
    ),
    library.bcl_vibrato(
        amplitudes="(2 1 2 1)",
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
            ]
        ),
        wave_length="0.67",
    ),
    library.bcl_vibrato(
        amplitudes="(2 1 12 1 0.5 1 12 1 2 1 3 1 3 1 2)",
        selector=trinton.select_leaves_by_index(
            [
                1,
                1,
                2,
            ]
        ),
        wave_length="0.67",
    ),
    library.bcl_vibrato(
        amplitudes="(2 1 2 1 2 1)",
        selector=trinton.select_leaves_by_index(
            [
                2,
                2,
                3,
            ]
        ),
        wave_length="0.67",
    ),
    library.bcl_vibrato(
        amplitudes="(2 12 13 12 13 12 11 10 12 13 14)",
        selector=trinton.select_leaves_by_index(
            [
                3,
                3,
                4,
            ]
        ),
        wave_length="0.67",
    ),
    trinton.hooked_spanner_command(
        string="teeth",
        selector=trinton.select_leaves_by_index([0, 3]),
        padding=10,
        direction="down",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 16)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
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
    trinton.hooked_spanner_command(
        string="overblow",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=8,
    ),
    voice=score["bassclarinet voice"],
)

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.perc_instrument(
        instrument_string="Slit Drum w/ sponge ( rub )",
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    library.perc_instrument(
        instrument_string="Lion`s Roar", selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["percussion voice"],
)

for measures in [(2, 4), (6, 7), (10,)]:
    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        evans.RhythmHandler(evans.even_division([8])),
        trinton.treat_tuplets(),
        trinton.attachment_command(
            attachments=[abjad.Articulation(">")],
            selector=trinton.patterned_leaf_index_selector(
                [
                    2,
                    5,
                    7,
                ],
                8,
            ),
        ),
        trinton.attachment_command(
            attachments=[abjad.Dynamic("p")],
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
            padding=5.5,
        ),
        voice=score["percussion voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 16)),
    library.hyperventilation_perc_rhythms([11, 13]),
    evans.PitchHandler([[2, -1]]),
    library.perc_instrument(
        instrument_string="Frame Drum + Slit Drum w/ drum sticks",
        selector=trinton.select_leaves_by_index([0]),
    ),
    abjad.beam,
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (17,)),
    evans.PitchHandler([[2, -1]]),
    library.perc_instrument(
        instrument_string="Frame Drum + Slit Drum w/ sponges ( rub )",
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion voice"],
)

# cello 1 music commands

for voice_name in ["cello 1 voice", "cello 2 voice"]:
    for measure in [1, 17]:
        trinton.make_music(
            lambda _: trinton.select_target(_, (measure,)),
            trinton.hooked_spanner_command(
                string="bridge, -45°",
                selector=trinton.select_leaves_by_index([0, -1]),
                padding=4,
            ),
            voice=score[voice_name],
        )

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            2,
            4,
        ),
    ),
    evans.RhythmHandler(
        evans.talea(
            library.bells_rhythms(0),
            8,
            extra_counts=[
                -2,
                3,
            ],
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 1", index=14, seed=65),
    library.vc_bells_attachments(
        instrument="cello 1",
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.Clef("treble"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index(
            [
                0,
                12,
                12,
            ]
        ),
    ),
    library.beam_logical_ties(),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            4,
            5,
            3,
        )
    ),
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
        evans.talea(
            library.bells_rhythms(4),
            8,
            extra_counts=[
                -2,
                3,
            ],
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 1", index=56, seed=7),
    library.vc_bells_attachments(
        instrument="cello 1",
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index(
            [
                7,
            ]
        ),
    ),
    library.beam_logical_ties(),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            5,
            3,
            4,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (10,),
    ),
    evans.RhythmHandler(
        evans.talea(
            library.bells_rhythms(10),
            8,
            extra_counts=[
                3,
                5,
            ],
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 1", index=56, seed=7),
    library.vc_bells_attachments(
        instrument="cello 1",
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index(
            [
                7,
            ]
        ),
    ),
    library.beam_logical_ties(),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            4,
            2,
            5,
            1,
        )
    ),
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
        evans.talea(
            library.bells_rhythms(4),
            8,
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 2", index=50, seed=7),
    library.vc_bells_attachments(
        instrument="cello 2",
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index(
            [
                7,
                14,
            ]
        ),
    ),
    library.beam_logical_ties(),
    voice=score["cello 2 voice"],
)

# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            2,
            4,
        ),
    ),
    evans.RhythmHandler(
        evans.talea(
            library.bells_rhythms(0),
            8,
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 2", index=0, seed=65),
    library.vc_bells_attachments(
        instrument="cello 2",
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.Clef("treble"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index(
            [
                0,
                13,
                13,
            ]
        ),
    ),
    library.beam_logical_ties(),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (10,),
    ),
    evans.RhythmHandler(
        evans.talea(
            library.bells_rhythms(10),
            8,
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 2", index=49, seed=7),
    library.vc_bells_attachments(
        instrument="cello 2",
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index(
            [
                7,
            ]
        ),
    ),
    library.beam_logical_ties(),
    voice=score["cello 2 voice"],
)

# markups and beams

for voice_name in ["percussion voice", "cello 1 voice", "cello 2 voice"]:
    library.one_line(
        score=score,
        voice=voice_name,
        leaves=[0],
    )

library.two_lines(score=score, voice="bassclarinet voice", leaves=[0])

for voice_name in ["bassclarinet voice", "cello 1 voice", "cello 2 voice"]:
    library.five_lines(
        score=score,
        voice=voice_name,
        leaves=[7],
    )

library.two_lines(score=score, voice="bassclarinet voice", leaves=[37])

library.one_line(
    score=score,
    voice="cello 2 voice",
    leaves=[61],
)

library.one_line(
    score=score,
    voice="cello 1 voice",
    leaves=[64],
)

library.two_lines(score=score, voice="percussion voice", leaves=[69])

# trinton.annotate_leaves(score)

library.write_instrument_names(score)

library.write_short_instrument_names(score)

for leaf, tempo in zip(
    [
        0,
        1,
        4,
        7,
        9,
        10,
        16,
    ],
    [
        4,
        2,
        3,
        1,
        4,
        1,
        2,
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

# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/07",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="07",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
