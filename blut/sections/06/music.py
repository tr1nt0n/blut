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

# cello 1 music commands

for voice_name in ["cello 1 voice", "cello 2 voice"]:
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
    abjad.beam,
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((11,)),
)

# markups and beams

library.one_line(
    score=score,
    voice="percussion voice",
    leaves=[0],
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
        padding=9.5,
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
        padding=9.5,
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
