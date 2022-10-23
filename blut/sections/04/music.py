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
        (4, 8),
        (1, 16),
        (15, 8),
        (3, 8),
        (10, 8),
        (4, 8),
        (5, 8),
        (1, 8),
        (8, 8),
        (2, 8),
        (15, 8),
        (1, 16),
        (2, 8),
        (5, 8),
    ]
)

# cello 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.even_division([16], extra_counts=[-1])),
    trinton.treat_tuplets(),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index(
            [
                2,
            ]
        )
    ),
    library.pitch_bat_trat(
        seed=13,
    ),
    abjad.beam,
    trinton.change_notehead_command(notehead="triangle", selector=trinton.pleaves()),
    trinton.hooked_spanner_command(
        string="legno trat., molto flaut. pont.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=5.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                -1,
            ],
        ),
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            3,
            7,
        ),
    ),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                1,
                1,
                2,
                1,
                1,
                3,
                1,
                2,
                1,
                1,
                1,
                4,
            ],
            16,
            extra_counts=[
                0,
                3,
                1,
                4,
            ],
        )
    ),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([11], 12)),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(),
    evans.PitchHandler([6]),
    trinton.beam_groups(beam_rests=False),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.bundle(
                abjad.Markup(r"\markup \italic { Espressivo }"), r"- \tweak padding #3"
            ),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                6,
                6,
                12,
                19,
                19,
                26,
                28,
                34,
                36,
                36,
                40,
                46,
                46,
                53,
                54,
                61,
                63,
                63,
                66,
                69,
            ]
        ),
    ),
    library.electroshock_attachments(),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1]),
        id="One",
        left_text="IV, vibrato moltissimo",
        style="dashed-line-with-hook",
        padding=13,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                28,
                33,
                54,
                60,
            ]
        ),
        id="Two",
        left_text="1/2 scratch",
        style="dashed-line-with-hook",
        padding=11,
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            1,
            3,
            1,
            5,
            2,
        )
    ),
)

# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.even_division([8], extra_counts=[1])),
    trinton.treat_tuplets(),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index(
            [
                3,
            ]
        )
    ),
    library.pitch_bat_trat(
        index=12,
        seed=10,
    ),
    abjad.beam,
    trinton.change_notehead_command(notehead="triangle", selector=trinton.pleaves()),
    trinton.hooked_spanner_command(
        string="legno trat., molto flaut. pont.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=5.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                -1,
            ],
        ),
    ),
    voice=score["cello 2 voice"],
)

# fermate

library.fermata_measures(score=score, measures=[2, -2], fermata="ushortfermata")

# attachments

library.one_line(
    score=score,
    voice="percussion voice",
    leaves=[0],
)

# trinton.annotate_leaves(score)

# markups and beams

library.write_instrument_names(score)

library.write_short_instrument_names(score)

for leaf, tempo in zip(
    [
        0,
        3,
        4,
        6,
        8,
        9,
        10,
        12,
    ],
    [
        2,
        3,
        2,
        1,
        0,
        2,
        0,
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

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        0,
    ],
    attachments=[
        abjad.Markup(
            r'\markup { \right-align \abs-fontsize #15 { \upright "×5" } }',
        ),
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
        abjad.LilyPondLiteral(
            r"""\set Score.repeatCommands = #'((volta "1 - 4"))""",
            site="before",
        ),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        2,
    ],
    attachments=[
        abjad.LilyPondLiteral(
            r"""\set Score.repeatCommands = #'((volta "5"))""",
            site="before",
        ),
        abjad.LilyPondLiteral(
            r"""\set Score.repeatCommands = #'((volta #f))""",
            site="after",
        ),
    ],
)

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        1,
    ],
    attachment=abjad.LilyPondLiteral(r"\break", "absolute_after"),
)


# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/04",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
