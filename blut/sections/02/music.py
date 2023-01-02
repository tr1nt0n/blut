import abjad
import baca
import evans
import trinton
from abjadext import rmakers
from abjadext import microtones
from blut import library
from blut import ts

# score

score = library.blut_score(
    [
        (9, 16),
        (13, 20),
        (1, 16),
        (10, 16),
        (11, 20),
        (9, 14),
        (7, 16),
        (1, 16),
    ]
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=library.teeth_on_reed_pitches(3)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                2,
                2,
                -1,
            ],
        ),
    ),
    trinton.hooked_spanner_command(
        string="teeth",
        selector=trinton.select_leaves_by_index([0, 1]),
        padding=10,
        direction="down",
    ),
    trinton.hooked_spanner_command(
        string="overblow",
        selector=trinton.select_leaves_by_index([2, -1]),
        padding=10,
    ),
    library.bcl_vibrato(
        amplitudes="(8 1 7 5 3 1.5 1.25 1 0.5 0)",
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                2,
            ]
        ),
        wave_length="3.25",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 7)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=library.teeth_on_reed_pitches(1)),
    trinton.beam_groups(beam_rests=False),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                3,
                4,
                4,
                8,
            ],
        ),
    ),
    trinton.hooked_spanner_command(
        string="teeth",
        selector=trinton.select_leaves_by_index([0, 3]),
        padding=8,
        direction="down",
    ),
    trinton.hooked_spanner_command(
        string="overblow",
        selector=trinton.select_leaves_by_index([4, 7]),
        padding=7,
    ),
    library.bcl_vibrato(
        amplitudes="(1 1 7 0 12 1 0.5 0)",
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                3,
            ]
        ),
        wave_length="2",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    library.bcl_vibrato(
        amplitudes="(0 0.25 0.5 0.75 1 1.25 1.5 7 12 15)",
        selector=trinton.select_leaves_by_index(
            [
                -2,
                -2,
                -1,
            ]
        ),
        wave_length="1.25",
    ),
    trinton.hooked_spanner_command(
        string="teeth",
        selector=trinton.select_leaves_by_index([-2, -1]),
        padding=9,
        direction="down",
    ),
    voice=score["bassclarinet voice"],
)

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    library.hyperventilation_perc_rhythms([13]),
    evans.PitchHandler([[2, -1]]),
    trinton.beam_groups(beam_rests=False),
    library.perc_instrument(
        instrument_string="Frame Drum + Slit Drum w/ drum sticks",
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
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
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ]
        ),
    ),
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
    library.hyperventilation_perc_rhythms(
        [
            11,
            9,
        ]
    ),
    evans.PitchHandler([[2, -1]]),
    trinton.beam_groups(beam_rests=False),
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
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ]
        ),
    ),
    voice=score["percussion voice"],
)

# attachments

trinton.reduce_tuplets(
    score=score,
    voice="bassclarinet voice",
    tuplets="all",
)

library.two_lines(
    score=score,
    voice="percussion voice",
    leaves=[
        1,
    ],
)

# markups and beams

library.write_instrument_names(score)

library.write_short_instrument_names(score)

for leaf, tempo in zip(
    [
        0,
        3,
    ],
    [
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

# fermate

library.fermata_measures(
    score=score,
    measures=[3, 8],
)

# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/02",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
