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
    [
        (5, 8),
        (5, 8),
        (2, 8),
        (3, 8),
        (4, 8),
        (15, 32),
        (1, 16),
    ]
)

# fermate

library.fermata_measures(
    score=score,
    measures=[
        0,
    ],
)

# # bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (1, 2),
    ),
    # evans.RhythmHandler(
    #     evans.tuplet(
    #         [
    #             (
    #                 8,
    #                 7,
    #                 1,
    #             )
    #         ]
    #     )
    # ),
    evans.RhythmHandler(evans.talea([10, 9, 1], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.bcl_bells_handler(fundamental_string="af", index=0),
    library.bcl_bells_attachments(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
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
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                0,
                3,
            ],
            4,
        )
    ),
    evans.PitchHandler([2.5]),
    library.totem_attachments(bcl=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            1,
            3,
            1,
            2,
        )
    ),
)

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (1, 2),
    ),
    evans.RhythmHandler(
        evans.even_division(
            [8],
            extra_counts=[
                2,
                1,
                5,
            ],
        )
    ),
    trinton.change_lines(
        lines=1,
        clef="percussion",
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.perc_instrument(
        instrument_string="Lion's Roar", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.hooked_spanner_command(
        string="pizz.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=6,
        right_padding=2,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_leaf_index_selector([2, 4, 7], 8),
    ),
    voice=score["percussion voice"],
    preprocessor=trinton.fuse_thirty_seconds_preprocessor((9, 8, 9, 14)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.force_rest(selector=trinton.select_leaves_by_index([2])),
    library.tremolo(),
    library.perc_instrument(
        instrument_string="Slit Drum w/ rubber mallets",
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.totem_attachments(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                -1,
                -1,
            ],
            pitched=True,
        ),
    ),
    voice=score["percussion voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            2,
            1,
            1,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion voice"],
)

# cello 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (1, 2),
    ),
    evans.RhythmHandler(evans.talea(library.bells_rhythms(0), 8)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 1", index=0, seed=13),
    library.vc_bells_attachments(instrument="cello 1", padding=10.5),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["cello 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (4,),
    ),
    evans.RhythmHandler(
        evans.talea(
            [
                -2,
                3,
                1,
            ],
            16,
        ),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-2]),
    library.totem_attachments(vc=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.arrow_spanner_command(
        l_string="scratch",
        r_string="flaut. molto pont.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=11,
        right_padding=-2,
    ),
    voice=score["cello 1 voice"],
)

for voice_name in ["cello 1 voice", "cello 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(
            _,
            (5, 6),
        ),
        evans.RhythmHandler(rmakers.note),
        evans.RewriteMeterCommand(boundary_depth=-2),
        trinton.force_rest(selector=trinton.select_logical_ties_by_index([4])),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("fff"),
                abjad.StartHairpin("o<"),
                abjad.Dynamic("fff"),
                abjad.Dynamic("ff"),
                abjad.StartHairpin(">o"),
                abjad.Dynamic("mf"),
                abjad.StartHairpin("|>o"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index(
                [0, 1, 2, 3, 4, 4, 8, 8, -1], pitched=True
            ),
        ),
        voice=score[voice_name],
        preprocessor=trinton.fuse_sixteenths_preprocessor((3, 1, 2, 1)),
    )

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (5, 6),
    ),
    evans.PitchHandler(
        [
            -12,
            -12,
            -4,
            -4,
            -1,
            -1,
        ]
    ),
    library.totem_attachments(vc=True),
    trinton.arrow_spanner_command(
        l_string="flaut.",
        r_string="scratch m.p.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ],
            pitched=True,
        ),
        padding=12.5,
        right_padding=-3,
    ),
    trinton.arrow_spanner_command(
        l_string="fl.m.p.",
        r_string="scratch",
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
            ],
            pitched=True,
        ),
        padding=10.5,
        right_padding=-2,
    ),
    voice=score["cello 1 voice"],
)

# cello 2 music_commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (1, 2),
    ),
    evans.RhythmHandler(
        evans.talea(
            library.bells_rhythms(5),
            8,
            extra_counts=[
                1,
                3,
                2,
            ],
        )
    ),
    trinton.force_rest(trinton.select_logical_ties_by_index([0, -1])),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 2", index=0, seed=13),
    library.vc_bells_attachments(instrument="cello 2"),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble"), abjad.Dynamic("p")],
        selector=trinton.select_logical_ties_by_index([4], pitched=True, first=True),
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            2,
            5,
            3,
            1,
        )
    ),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (3,),
    ),
    evans.RhythmHandler(evans.tuplet([(5, 3)])),
    trinton.treat_tuplets(),
    library.visas_graces(
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        )
    ),
    evans.PitchHandler(
        library.visas_pitches(
            0,
            2,
        )
    ),
    library.artificial_harmonics(),
    abjad.slur,
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            abjad.Dynamic("fp"),
            abjad.Articulation(">"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    voice=score["cello 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (4,),
    ),
    evans.RhythmHandler(
        evans.talea(
            [4, 1, -1],
            16,
        ),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-13]),
    library.totem_attachments(vc=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    trinton.arrow_spanner_command(
        l_string="scratch",
        r_string="flaut. molto pont.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=12,
        right_padding=-3,
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (5, 6),
    ),
    evans.PitchHandler(
        [
            -4,
            -4,
            -2,
            -2,
            -13,
            -13,
        ]
    ),
    library.totem_attachments(vc=True),
    trinton.arrow_spanner_command(
        l_string="flaut.",
        r_string="scratch m.p.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ],
            pitched=True,
        ),
        padding=13,
        right_padding=-3,
    ),
    trinton.arrow_spanner_command(
        l_string="fl.m.p.",
        r_string="scratch",
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
            ],
            pitched=True,
        ),
        padding=11,
        right_padding=-2,
    ),
    voice=score["cello 2 voice"],
)

# markups and beams

library.write_instrument_names(score)

library.write_short_instrument_names(score)

for leaf, tempo in zip(
    [
        0,
        2,
        3,
        4,
    ],
    [
        0,
        4,
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
#
trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        -2,
    ],
    attachments=[
        abjad.BarLine("||"),
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "absolute_after"
        ),
    ],
)


trinton.fill_empty_staves_with_skips(score)

trinton.remove_redundant_time_signatures(score=score)

# trinton.attach(
#     voice=score["Global Context"],
#     leaves=[
#         6,
#     ],
#     attachment=abjad.LilyPondLiteral(r"\break", "absolute_after"),
# )

trinton.tuplet_brackets(score, library.all_voice_names)

# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/03",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
