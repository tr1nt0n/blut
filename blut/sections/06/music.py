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
        left_text="scratch.",
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
        right_text="scratch.",
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
        left_text="scratch.",
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
        right_text="scratch.",
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
