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

score = library.blut_score(ts.section_11_ts)

# fermate

library.fermata_measures(
    score=score,
    measures=[
        10,
    ],
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            1,
            2,
        ),
    ),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(library.teeth_on_reed_pitches(1)),
    trinton.hooked_spanner_command(
        string="overblow",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=3.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["bassclarinet voice"],
)

trinton.reduce_tuplets(
    score=score,
    voice="bassclarinet voice",
    tuplets=[
        0,
        1,
    ],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            4,
            7,
        ),
    ),
    evans.RhythmHandler(evans.tuplet([(8, 7, 1)])),
    trinton.treat_tuplets(),
    library.bcl_bells_handler(
        fundamental_string="ef",
        index=3,
    ),
    library.bcl_bells_attachments(),
    trinton.notehead_bracket_command(),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("ffff")],
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ]
        ),
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_preprocessor((4,)),
)

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.hyperventilation_perc_rhythms(
        [
            11,
        ]
    ),
    evans.PitchHandler(
        [
            [
                -1,
                2,
            ]
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    library.perc_instrument(
        instrument_string="Frame Drum + Slit Drum w/ drum sticks",
        selector=trinton.select_leaves_by_index([0]),
    ),
    abjad.beam,
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    library.hyperventilation_perc_rhythms(
        [
            4,
        ]
    ),
    evans.PitchHandler(
        [
            [
                -1,
                2,
            ],
            -1,
            2,
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 2, -1]),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 9)),
    evans.RhythmHandler(
        evans.even_division(
            [
                8,
                8,
                16,
                16,
                16,
            ]
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(),
    library.perc_instrument(
        instrument_string="Lion's Roar",
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [
                1,
                2,
                5,
                8,
            ],
            9,
            first=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ffff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 15, 15, -1]),
    ),
    trinton.hooked_spanner_command(
        string="pizz.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=6.5,
    ),
    trinton.notehead_bracket_command(),
    voice=score["percussion voice"],
)

# cello 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (7, 9),
    ),
    evans.RhythmHandler(
        evans.talea(
            library.bells_rhythms(1),
            16,
            extra_counts=[
                -1,
                -2,
                1,
            ],
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 1", index=2, random_walk=False),
    library.vc_bells_attachments(instrument="cello 1"),
    trinton.detach_command(
        detachments=[abjad.Dynamic],
        selector=trinton.pleaves(),
    ),
    trinton.hooked_spanner_command(
        string="pizz. molto pont.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=6.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ffff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                6,
                6,
                -1,
            ]
        ),
    ),
    voice=score["cello 1 voice"],
    beam_meter=True,
)

# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (6, 9),
    ),
    evans.RhythmHandler(
        evans.talea(
            library.bells_rhythms(1),
            16,
            extra_counts=[
                -1,
                0,
                0,
                0,
            ],
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 2", index=2, random_walk=False),
    library.vc_bells_attachments(instrument="cello 2"),
    trinton.detach_command(
        detachments=[abjad.Dynamic],
        selector=trinton.pleaves(),
    ),
    trinton.hooked_spanner_command(
        string="pizz. molto pont.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=6.5,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("treble"), abjad.Clef("treble"), abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index(
            [
                0,
                5,
                9,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ffff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                12,
                16,
                -1,
            ]
        ),
    ),
    voice=score["cello 2 voice"],
    beam_meter=True,
)

# markups and beams

# trinton.annotate_leaves(score)

library.write_instrument_names(score)

library.write_short_instrument_names(score)

library.two_lines(
    score=score,
    voice="percussion voice",
    leaves=[0],
)

library.one_line(
    score=score,
    voice="percussion voice",
    leaves=[17],
)

for leaf, tempo in zip(
    [
        3,
    ],
    [
        0,
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
            5,
            8,
        ),
    ),
    trinton.arrow_spanner_command(
        l_string=r'\markup { \abs-fontsize #12 \upright { "Accel." } }',
        r_string=r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"117" } }',
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
            9,
            10,
        ),
    ),
    trinton.hooked_spanner_command(
        string="Rall.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=8.5,
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

trinton.tuplet_brackets(score, ["cello 1 voice", "cello 2 voice"])

# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/11",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="11",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
