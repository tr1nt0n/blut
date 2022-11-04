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
        (7, 8),
        (1, 16),
        (2, 1),
        (1, 16),
    ],
)

# fermate

library.fermata_measures(
    score=score,
    measures=[
        4,
    ],
    fermata="ulongfermata",
)

# bass clarinet music commands

for voice_name in library.all_voice_names:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(evans.even_division([8])),
        trinton.treat_tuplets(),
        trinton.beam_durations(
            [
                (1, 4),
                (5, 8),
            ]
        ),
        trinton.attachment_command(
            attachments=[
                abjad.Articulation("tenuto"),
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
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 2)),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("ppp"),
                abjad.StartHairpin("<"),
                abjad.Dynamic("ff"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1]),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
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
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(-1, 1), (15, 1, -16)])),
    evans.PitchHandler([24]),
    library.invisible_rests(),
    library.noteheads_only(),
    library.glissando(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                1,
                2,
                2,
                3,
            ],
        ),
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            4,
            4,
        )
    ),
)

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler(
        [
            [
                2,
                -1,
            ]
        ]
    ),
    library.perc_instrument(
        instrument_string="Frame Drum + Slit Drum w/ sponges ( rub )",
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(-1, 1), (15, 1, -16)])),
    library.invisible_rests(),
    library.noteheads_only(),
    library.glissando(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                1,
                2,
                2,
                3,
            ],
        ),
    ),
    library.perc_instrument(
        instrument_string="Ocean Drum", selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["percussion voice"],
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            4,
            4,
        )
    ),
)

# cello 1 music commands

for voice_name in ["cello 1 voice", "cello 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 2)),
        trinton.hooked_spanner_command(
            string="bridge, -45°",
            selector=trinton.select_leaves_by_index([0, -1]),
            padding=4,
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (2,)),
        evans.RhythmHandler(rmakers.note),
        library.noteheads_only(),
        trinton.attachment_command(
            attachments=[abjad.StartHairpin(">o")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(15, 1), (15, 1)])),
    evans.PitchHandler([-24]),
    library.noteheads_only(),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="One",
        left_text="IV",
        style="dashed-line-with-hook",
        padding=11.5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="Two",
        left_text="nut",
        right_text="bridge",
        style="dashed-line-with-arrow",
        padding=10,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        id="Three",
        left_text="trem. wide 45°",
        right_text="trem. tight 0°",
        style="dashed-line-with-arrow",
        padding=8.5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([2, 3], pitched=True),
        id="Three",
        left_text="trem. tight 0°",
        right_text="no trem. -45°",
        style="dashed-line-with-arrow",
        padding=6.5,
    ),
    library.glissando(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fffff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
            ]
        ),
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            4,
            4,
        )
    ),
)


# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(15, 1), (15, 1)])),
    evans.PitchHandler([-3]),
    library.noteheads_only(),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="One",
        left_text="I",
        style="dashed-line-with-hook",
        padding=8.5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="Two",
        left_text="bridge",
        right_text="nut",
        style="dashed-line-with-arrow",
        padding=6.5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        id="Three",
        left_text="no trem. -45°",
        right_text="trem. wide 0°",
        style="dashed-line-with-arrow",
        padding=5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([2, 3], pitched=True),
        id="Three",
        left_text="trem. wide 0°",
        right_text="trem. tight 45°",
        style="dashed-line-with-arrow",
        padding=3.5,
    ),
    library.glissando(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fffff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
            ]
        ),
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            4,
            4,
        )
    ),
)


# markups and beams

# trinton.annotate_leaves(score)

for voice_name in library.all_voice_names:
    for tuplet in abjad.select.tuplets(score[voice_name]):
        abjad.override(tuplet).TupletNumber.text = r"""\markup \upright { "1\'" }"""

for voice_name in ["percussion voice", "bassclarinet voice"]:
    library.two_lines(
        score=score,
        voice=voice_name,
        leaves=[0],
    )

library.five_lines(
    score=score,
    voice="bassclarinet voice",
    leaves=[9],
)

library.one_line(
    score=score,
    voice="percussion voice",
    leaves=[9],
)

for voice_name in ["cello 1 voice", "cello 2 voice"]:
    library.one_line(
        score=score,
        voice=voice_name,
        leaves=[0],
    )

    library.five_lines(score=score, voice=voice_name, leaves=[8], clef="bass")

library.write_instrument_names(score)

library.write_short_instrument_names(score)

trinton.attach(
    voice=score["Global Context"],
    leaves=[0],
    attachment=library.tempi[2],
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        0,
    ],
    attachments=[
        abjad.Markup(
            r'\markup { \right-align \abs-fontsize #15 { \upright "×4" } }',
        ),
        abjad.BarLine(".|:", "before"),
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "absolute_before"
        ),
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
            2,
        ),
    ),
    trinton.hooked_spanner_command(
        string="Rall. sempre",
        padding=8,
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["Global Context"],
)

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        1,
    ],
    attachment=abjad.Markup(
        rf'\markup \huge \center-column {{ \musicglyph "scripts.ulongfermata" }} '
    ),
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        -2,
        -1,
    ],
    attachments=[
        abjad.BarLine("||"),
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "absolute_after"
        ),
    ],
)

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        1,
        2,
    ],
    attachment=abjad.LilyPondLiteral(
        r"\once \override Score.TimeSignature.stencil = #(blank-time-signature)",
        "before",
    ),
)

# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/09",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="09",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
