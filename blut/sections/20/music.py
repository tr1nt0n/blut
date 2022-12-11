import abjad
import baca
import evans
import fractions
import trinton
from abjadext import rmakers
from abjadext import microtones
from blut import library
from blut import ts
from itertools import cycle

# score

score = library.blut_score(ts.section_20_ts)

# fermate

library.fermata_measures(
    score=score,
    measures=[
        8,
    ],
    fermata="uverylongfermata",
    last_measure=True,
)

# bass clarinet music commands

for measure, time_mark, dynamic, preprocessor in zip(
    [1, 2],
    ['\musicglyph "scripts.ulongfermata"', '\musicglyph "scripts.uverylongfermata"'],
    ["ff", "ffff"],
    [
        (4,),
        (8,),
    ],
):
    for voice_name in library.all_voice_names:
        trinton.make_music(
            lambda _: trinton.select_target(_, (measure,)),
            evans.RhythmHandler(evans.tuplet([(28, 1)], treat_tuplets=False)),
            trinton.attachment_command(
                attachments=[abjad.Glissando()],
                selector=trinton.select_leaves_by_index([0, -2]),
            ),
            trinton.linear_attachment_command(
                attachments=[
                    abjad.Dynamic(dynamic),
                    abjad.StartHairpin("--"),
                    abjad.StopHairpin(),
                ],
                selector=trinton.select_leaves_by_index([0, 0, -1]),
            ),
            library.change_tuplet_text(
                selector=lambda _: abjad.select.tuplets(_), text=time_mark
            ),
            # library.glissando(selector=lambda _: abjad.select.tuplets(_)),
            voice=score[voice_name],
            preprocessor=trinton.fuse_quarters_preprocessor(preprocessor),
        )

for voice_name in library.all_voice_names:
    abjad.override(
        abjad.select.tuplets(score[voice_name])[0]
    ).TupletNumber.text = (
        r'\markup \huge \center-column { \musicglyph "scripts.ulongfermata" }'
    )
    abjad.override(
        abjad.select.tuplets(score[voice_name])[1]
    ).TupletNumber.text = (
        r'\markup \huge \center-column { \musicglyph "scripts.ulongfermata" }'
    )
    abjad.override(
        abjad.select.tuplets(score[voice_name])[2]
    ).TupletNumber.text = (
        r'\markup \huge \center-column { \musicglyph "scripts.uverylongfermata" }'
    )

for voice_name, second_pitch_list in zip(
    ["bassclarinet voice", "cello 1 voice", "cello 2 voice"],
    [
        [
            31,
            29,
            28,
        ],
        [
            [-3, 11],
            [-24, 12],
            [-24, 5],
        ],
        [
            [-24, 7],
            [
                -3,
                20,
            ],
            [-24, 9],
        ],
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 2)),
        library.pitch_monolith(
            voice_name=voice_name,
            selector=trinton.select_leaves_by_index([0, 2, 4]),
            index=0,
        ),
        trinton.pitch_with_selector_command(
            pitch_list=second_pitch_list,
            selector=trinton.select_leaves_by_index([1, 3, 5]),
        ),
        library.noteheads_only(),
        library.transparent_noteheads(
            selector=trinton.select_leaves_by_index([1, 3, 5]),
        ),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    "\once \override Accidental.stencil = ##f", "before"
                ),
            ],
            selector=trinton.select_leaves_by_index([1, 3, 5]),
        ),
        voice=score[voice_name],
    )

for voice_name in ["bassclarinet voice", "cello 1 voice", "cello 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (7,)),
        evans.RhythmHandler(evans.tuplet([(1,)], treat_tuplets=False)),
        library.noteheads_only(),
        library.transparent_noteheads(selector=trinton.pleaves()),
        voice=score[voice_name],
    )

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.PitchHandler([[2, -1]]),
    library.noteheads_only(),
    library.transparent_noteheads(
        selector=trinton.select_leaves_by_index(
            [1, 3, -1],
        )
    ),
    library.perc_instrument(
        instrument_string="Wood + Stone Wind Chimes",
        selector=trinton.select_leaves_by_index(
            [0],
        ),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 6)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.perc_instrument(
        instrument_string="Ocean Drum",
        selector=trinton.select_leaves_by_index(
            [0],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.Tie(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1, -1]),
    ),
    voice=score["percussion voice"],
    preprocessor=trinton.fuse_preprocessor((4,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(evans.tuplet([(16, 1)])),
    library.noteheads_only(),
    library.glissando(),
    library.transparent_noteheads(selector=trinton.select_leaves_by_index([-1])),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["percussion voice"],
)

for voice_name in library.all_voice_names:
    abjad.override(
        abjad.select.tuplets(score[voice_name])[-1]
    ).TupletNumber.text = (
        r'\markup \huge \center-column { \musicglyph "scripts.ufermata" }'
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(9, 1)])),
    library.pitch_monolith(
        voice_name="bassclarinet voice",
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        index=2,
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            28,
        ],
        selector=trinton.select_leaves_by_index(
            [
                -1,
            ]
        ),
    ),
    library.glissando(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    abjad.beam,
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(
        [
            4,
        ]
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    library.bcl_vibrato(
        amplitudes="(0.5 1 0.5 9 0.5 0.25 0.5 0.1 0.5 1 9 0 12 0 7 0 0.5 1 0.2 1 0)",
        wave_length="2.35",
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string="teeth",
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        padding=10,
        direction="down",
    ),
    voice=score["bassclarinet voice"],
)

# cello 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 6)),
    evans.RhythmHandler(evans.tuplet([(15, 1)], treat_tuplets=False)),
    library.pitch_monolith(
        voice_name="cello 1 voice",
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        index=2,
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[[-24, 5]],
        selector=trinton.select_leaves_by_index(
            [
                -1,
            ]
        ),
    ),
    library.glissando(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.notehead_bracket_command(),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_preprocessor((4,)),
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            1,
            7,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
            ]
        ),
    ),
    trinton.id_spanner_command(
        id="Two",
        style="dashed-line-with-hook",
        left_text="I + II",
        selector=trinton.select_leaves_by_index([0, 1]),
        padding=12.5,
    ),
    trinton.id_spanner_command(
        id="Two",
        style="dashed-line-with-hook",
        left_text="III + IV",
        selector=trinton.select_leaves_by_index([2, -1]),
        padding=12.5,
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_preprocessor((4,)),
)

for voice_name in ["cello 1 voice", "cello 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.id_spanner_command(
            id="One",
            style="dashed-line-with-arrow",
            left_text="molto pont.",
            right_text="tast.",
            selector=trinton.select_leaves_by_index([0, 2]),
            padding=10.5,
        ),
        trinton.id_spanner_command(
            id="One",
            style="dashed-line-with-hook",
            left_text=".",
            selector=trinton.select_leaves_by_index([2, -1]),
            padding=10.5,
        ),
        voice=score[voice_name],
    )

# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(evans.tuplet([(15, 1)], treat_tuplets=False)),
    library.pitch_monolith(
        voice_name="cello 2 voice",
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        index=2,
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[[-24, 9]],
        selector=trinton.select_leaves_by_index(
            [
                -1,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.LilyPondLiteral("\once \override Accidental.stencil = ##f", "before"),
        ],
        selector=trinton.select_leaves_by_index([0, -1, -1]),
    ),
    trinton.notehead_bracket_command(),
    library.glissando(),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_preprocessor((4,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        evans.even_division(
            [8],
        )
    ),
    trinton.treat_tuplets(),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index(
            [
                3,
            ]
        )
    ),
    library.pitch_bat_trat(
        index=30,
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
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ],
        ),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            1,
            4,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("bass"), abjad.Clef("treble"), abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0, 2, 4]),
    ),
    trinton.id_spanner_command(
        id="Two",
        style="dashed-line-with-hook",
        left_text="I + II",
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
            ]
        ),
        padding=12.5,
    ),
    trinton.id_spanner_command(
        id="Two",
        style="dashed-line-with-hook",
        left_text="III + IV",
        selector=trinton.select_leaves_by_index([0, 1, 4, -1]),
        padding=12.5,
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_preprocessor((4,)),
)

# markups and beams

# trinton.annotate_leaves(score)

library.write_instrument_names(score)

library.write_short_instrument_names(score)

library.two_lines(
    score=score,
    voice="percussion voice",
    leaves=[
        0,
    ],
)

library.one_line(
    score=score,
    voice="percussion voice",
    leaves=[
        6,
    ],
)

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        2,
    ],
    attachment=library.tempi[0],
)

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        0,
        1,
        -2,
    ],
    attachment=abjad.LilyPondLiteral(
        r"\once \override Score.TimeSignature.stencil = #(blank-time-signature)",
        "before",
    ),
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        0,
    ],
    attachments=[
        abjad.Markup(
            r'\markup { \abs-fontsize #15 { \upright "×7" } }',
        ),
        abjad.LilyPondLiteral(
            rf'\boxed-markup "rearticulations cresc. dal niente" 1', "before"
        ),
        abjad.BarLine(".|:", "before"),
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "before"
        ),
        abjad.BarLine(":|.", "after"),
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "after"
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
        abjad.LilyPondLiteral(rf'\boxed-markup "marcato rearticulations" 1', "after")
    ],
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        -1,
    ],
    attachments=[
        abjad.BarLine("|.", "after"),
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "after"
        ),
    ],
)

# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/20",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="20",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
