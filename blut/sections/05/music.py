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


# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    library.perc_instrument(
        instrument_string="Frame Drum w/ sponge ( rub )",
        selector=trinton.select_leaves_by_index([0]),
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
        id="One",
        left_text="pont.",
        right_text="tast.",
        style="dashed-line-with-arrow",
        padding=4.5,
    ),
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
        id="One",
        left_text="pont.",
        right_text="tast.",
        style="dashed-line-with-arrow",
        padding=4.5,
    ),
    voice=score["cello 2 voice"],
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
