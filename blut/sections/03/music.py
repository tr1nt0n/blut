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
    ts.section_3_ts,
)

# fermate

library.fermata_measures(
    score=score,
    measures=[
        11,
    ],
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (1, 4),
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
                1,
                1,
                2,
            ]
        ),
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((5,)),
)

trinton.reduce_tuplets(score=score, voice="bassclarinet voice", tuplets=[0])

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (1, 4),
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
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.beam_logical_ties(),
    library.perc_instrument(
        instrument_string="Lion`s Roar", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.hooked_spanner_command(
        string="pizz.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=6,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_leaf_index_selector([2, 4, 7], 8),
    ),
    voice=score["percussion voice"],
)

# cello 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (1, 4),
    ),
    evans.RhythmHandler(evans.talea(library.bells_rhythms(0), 8)),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 1", index=0, seed=13),
    library.vc_bells_attachments(instrument="cello 1"),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.beam_logical_ties(),
    voice=score["cello 1 voice"],
)

# cello 2 music_commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (1, 4),
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
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.beam_logical_ties(),
    library.vc_bells_handler(instrument="cello 2", index=0, seed=13),
    library.vc_bells_attachments(instrument="cello 2"),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([9]),
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
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (5,),
    ),
    evans.RhythmHandler(evans.tuplet([(1, 4, 3)])),
    trinton.treat_tuplets(),
    evans.PitchHandler(
        library.visas_pitches(
            0,
            2,
        )
    ),
    library.artificial_harmonics(),
    abjad.beam,
    abjad.glissando,
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fp"),
            abjad.Articulation(">"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    voice=score["cello 2 voice"],
)

# attachments

library.one_line(
    score=score,
    voice="percussion voice",
    leaves=[0],
)

# markups and beams

library.write_instrument_names(score)

library.write_short_instrument_names(score)

for leaf, tempo in zip(
    [
        0,
        4,
        5,
        7,
    ],
    [
        0,
        4,
        2,
        1,
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
    segment_path="/Users/trintonprater/scores/blut/blut/sections/03",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
