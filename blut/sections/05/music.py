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
    ts.section_5_ts,
)

# fermate

library.fermata_measures(
    score=score,
    measures=[
        4,
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
        lambda _: trinton.select_target(_, (1, 2)),
        evans.RhythmHandler(evans.even_division([8])),
        trinton.treat_tuplets(),
        trinton.force_rest(selector=trinton.select_leaves_by_index([-1])),
        trinton.beam_durations([(1, 4), (5, 8)]),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.PitchHandler(
        pitch_list=[
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
    lambda _: trinton.select_target(
        _,
        (
            5,
            8,
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
    evans.PitchHandler(
        pitch_list=[
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
            first=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ]
        ),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            11,
            12,
        ),
    ),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        pitch_list=[
            6,
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(library._written_pitch_to_fingering[6]),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        direction=abjad.UP,
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((17,)),
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (16,),
    ),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    8,
                    7,
                    1,
                )
            ]
        )
    ),
    trinton.treat_tuplets(),
    library.bcl_bells_handler(fundamental_string="fs", index=1),
    library.bcl_bells_attachments(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ]
        ),
    ),
    voice=score["bassclarinet voice"],
)

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    library.perc_instrument(
        instrument_string="Frame Drum w/ sponge ( rub )",
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            6,
            8,
        ),
    ),
    evans.RhythmHandler(
        evans.even_division(
            [
                8,
            ],
            extra_counts=[0, 0, 1],
        )
    ),
    trinton.treat_tuplets(),
    evans.PitchHandler(pitch_list=[[2, -1]]),
    abjad.beam,
    library.perc_instrument(
        instrument_string="Frame Drum + Slit Drum w/ drum sticks",
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.pleaves(),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 16)),
    evans.RhythmHandler(evans.even_division([8])),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                1,
                4,
            ],
            5,
            first=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                4,
                7,
            ]
        ),
    ),
    library.beam_logical_ties(),
    library.perc_instrument(
        instrument_string="Lion`s Roar",
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string="pizz.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=6.5,
    ),
    voice=score["percussion voice"],
)

# cello 1 music commands_

for voice_name in ["cello 1 voice", "cello 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 2)),
        trinton.hooked_spanner_command(
            string="bridge, -45°",
            selector=trinton.select_leaves_by_index([0, -1]),
            padding=2.5,
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.even_division([32], extra_counts=[-2])),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index(
            [
                1,
            ]
        )
    ),
    trinton.treat_tuplets(),
    library.pitch_bat_trat(index=1),
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
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="Two",
        left_text="pont.",
        right_text="tast.",
        style="dashed-line-with-arrow",
        padding=4.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 12)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                1,
                1,
                1,
                1,
                4,
                1,
                1,
                3,
            ],
            16,
            extra_counts=[3, 0, 1, 4],
        )
    ),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                2,
                5,
            ],
            8,
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=[6]),
    trinton.beam_groups(beam_rests=False),
    library.electroshock_attachments(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                6,
                8,
                8,
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1]),
        id="One",
        left_text="IV, vibrato moltissimo",
        style="dashed-line-with-hook",
        padding=8,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                0,
                6,
                8,
                -1,
            ],
            pitched=True,
        ),
        id="Two",
        left_text="flaut.",
        right_text="1/2 scratch",
        style="dashed-line-with-arrow",
        padding=6,
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        [
            3,
            2,
            4,
        ]
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 16)),
    evans.RhythmHandler(evans.talea(library.bells_rhythms(6), 8)),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 1", index=5, random_walk=False, seed=0),
    library.vc_bells_attachments(
        instrument="cello 1",
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([4]),
    ),
    library.beam_logical_ties(),
    voice=score["cello 1 voice"],
)

# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.even_division([32], extra_counts=[1])),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        )
    ),
    trinton.treat_tuplets(),
    library.pitch_bat_trat(
        index=2,
        seed=2,
    ),
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
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="Two",
        left_text="pont.",
        right_text="tast.",
        style="dashed-line-with-arrow",
        padding=4.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(
        evans.tuplet(library.visas_rhythms(0)),
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=library.visas_pitches(5, 2)),
    trinton.beam_durations(
        divisions=[
            (6, 16),
            (7, 16),
        ]
    ),
    library.artificial_harmonics(),
    library.visas_attachments(),
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
        padding=6,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            6,
            7,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(
        evans.tuplet(library.visas_rhythms(3)),
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=library.visas_pitches(18, 2)),
    trinton.beam_durations(
        divisions=[
            (7, 16),
            (6, 16),
            (3, 16),
            (5, 16),
        ]
    ),
    library.artificial_harmonics(),
    library.visas_attachments(),
    trinton.arrow_spanner_command(
        l_string="molto tast.",
        r_string="molto pont.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ],
            pitched=True,
        ),
    ),
    trinton.arrow_spanner_command(
        l_string="tight pont.",
        r_string="wide tast.",
        selector=trinton.select_leaves_by_index(
            [
                6,
                7,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            7,
            6,
            3,
            5,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 16)),
    evans.RhythmHandler(
        evans.talea(
            library.bells_rhythms(3),
            8,
            extra_counts=[
                1,
                0,
                3,
                0,
            ],
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 2", index=4, random_walk=False, seed=0),
    library.vc_bells_attachments(
        instrument="cello 2",
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("treble"), abjad.Dynamic("p"), abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index(
            [
                2,
                2,
                4,
            ]
        ),
    ),
    library.beam_logical_ties(),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            6,
            2,
        )
    ),
)

# attachments

for voice_name in ["cello 1 voice", "cello 2 voice", "percussion voice"]:
    library.one_line(
        score=score,
        voice=voice_name,
        leaves=[0],
    )

library.two_lines(
    score=score,
    voice="bassclarinet voice",
    leaves=[0],
)

library.five_lines(
    score=score,
    voice="bassclarinet voice",
    leaves=[
        32,
    ],
)

library.two_lines(
    score=score,
    voice="percussion voice",
    leaves=[
        11,
    ],
)

library.one_line(
    score=score,
    voice="percussion voice",
    leaves=[25],
)

library.five_lines(
    score=score,
    voice="cello 1 voice",
    leaves=[
        8,
    ],
    clef="bass",
)

library.five_lines(
    score=score,
    voice="cello 2 voice",
    leaves=[
        9,
    ],
    clef="bass",
)

# markups and beams

library.write_instrument_names(score)

library.write_short_instrument_names(score)

for leaf, tempo in zip(
    [
        0,
        2,
        4,
    ],
    [
        1,
        2,
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
        abjad.BarLine(".|:", "before"),
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "absolute_before"
        ),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        1,
    ],
    attachments=[
        abjad.BarLine(":|.", "after"),
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "absolute_after"
        ),
    ],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            1,
            3,
        ),
    ),
    trinton.hooked_spanner_command(
        string="2nd time Rall.",
        padding=8,
        selector=trinton.select_leaves_by_index([0, -1]),
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

# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/05",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
