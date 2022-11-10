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

score = library.blut_score(ts.section_10_ts)

# fermate

library.fermata_measures(
    score=score,
    measures=[
        8,
    ],
    fermata="ushortfermata",
)

library.fermata_measures(
    score=score,
    measures=[
        12,
    ],
)

# bass clarinet music commands

for voice_name in library.all_voice_names:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(evans.tuplet([(1, 6, 1)])),
        trinton.treat_tuplets(),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("ff"),
                abjad.StartHairpin("|>"),
                abjad.Dynamic("ppp"),
                abjad.StartHairpin("<"),
                abjad.Dynamic("ff"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 1, 1, -1]),
        ),
        library.glissando(),
        voice=score[voice_name],
    )

for voice_name in ["bassclarinet voice", "cello 1 voice", "cello 2 voice"]:
    for leaf in [0, 1, 2]:
        trinton.make_music(
            lambda _: trinton.select_target(_, (1,)),
            library.pitch_monolith(
                voice_name=voice_name,
                selector=trinton.select_leaves_by_index([leaf]),
                index=2,
            ),
            voice=score[voice_name],
        )

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.perc_instrument(
        instrument_string="Stone Wind Chimes",
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.tremolo(),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    evans.RhythmHandler(
        evans.tuplet(_ for _ in library.visas_rhythms(1) if _ != (10, 1)),
    ),
    library.perc_instrument(
        instrument_string="Lion's Roar", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [
                -1,
                -2,
            ]
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.glissando(),
    trinton.beam_groups(beam_rests=False),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("|>o"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
                2,
                3,
                3,
                5,
                5,
                6,
                7,
                8,
                8,
                10,
                11,
                12,
                13,
                14,
                14,
                16,
                16,
                17,
                17,
                18,
                19,
                21,
                22,
                22,
                23,
                23,
                24,
            ]
        ),
    ),
    voice=score["percussion voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            3,
            2,
            3,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 11)),
    evans.RhythmHandler(
        evans.tuplet(library.visas_rhythms(4)),
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.glissando(),
    trinton.beam_groups(beam_rests=False),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                2,
                3,
                3,
                4,
                5,
                6,
                6,
                7,
                7,
                9,
                10,
                10,
                12,
                12,
                14,
                14,
                -1,
            ]
        ),
    ),
    voice=score["percussion voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((1, 1, 2, 2, 3, 5)),
)

# cello 1 music commands

for voice_name, extra_count, seed in zip(
    ["cello 1 voice", "cello 2 voice"],
    [
        2,
        -2,
    ],
    [
        13,
        17,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[abjad.Clef("bass")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        trinton.hooked_spanner_command(
            string="III + IV",
            selector=trinton.select_leaves_by_index([0, -1]),
            padding=10,
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (2,)),
        evans.RhythmHandler(
            evans.accelerando(
                [(1, 20), (1, 8), (1, 32)],
            ),
        ),
        trinton.force_rest(
            selector=trinton.patterned_tie_index_selector(
                [
                    2,
                    5,
                    7,
                ],
                8,
            )
        ),
        trinton.beam_groups(beam_rests=True),
        rmakers.duration_bracket,
        trinton.attachment_command(
            attachments=[abjad.StartHairpin(">")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (3,)),
        evans.RhythmHandler(evans.even_division([16], extra_counts=[extra_count])),
        trinton.treat_tuplets(),
        abjad.beam,
        trinton.attachment_command(
            attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (4,)),
        evans.RhythmHandler(
            evans.accelerando(
                [(1, 8), (1, 20), (1, 32)],
            ),
        ),
        trinton.force_rest(
            selector=trinton.patterned_tie_index_selector(
                [
                    1,
                    4,
                    6,
                ],
                8,
            )
        ),
        trinton.beam_groups(beam_rests=True),
        rmakers.duration_bracket,
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("mp"),
                abjad.StartHairpin("<"),
                abjad.Dynamic("fff"),
            ],
            selector=trinton.select_leaves_by_index(
                [
                    0,
                    0,
                    -1,
                ]
            ),
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (2, 4)),
        library.pitch_bat_trat(index=0, seed=seed),
        library.left_beam(selector=trinton.select_tuplets_by_index([0])),
        library.right_beam(selector=trinton.select_tuplets_by_index([-1])),
        trinton.hooked_spanner_command(
            string="legno trat., molto flaut. pont.",
            selector=trinton.select_leaves_by_index(
                [
                    0,
                    -1,
                ]
            ),
            padding=7,
        ),
        trinton.change_notehead_command(
            "triangle",
            selector=trinton.pleaves(),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(
        evans.tuplet(library.visas_rhythms(0)),
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0, -1])),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=library.visas_pitches(20, 1)),
    trinton.beam_durations(
        [
            (1, 4),
            (1, 8),
            (3, 16),
            (1, 8),
        ]
    ),
    library.artificial_harmonics(),
    library.visas_attachments(),
    trinton.arrow_spanner_command(
        l_string="wide",
        r_string="tight",
        selector=trinton.select_leaves_by_index(
            [
                2,
                -1,
            ],
            pitched=True,
        ),
        padding=6.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 2, 2, -1], pitched=True),
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            4,
            2,
            3,
            2,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    evans.RhythmHandler(
        evans.tuplet(library.visas_rhythms(2)),
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=library.visas_pitches(20, 1)),
    trinton.beam_durations(
        [
            (3, 16),
            (5, 8),
            (1, 8),
            (7, 16),
        ]
    ),
    library.artificial_harmonics(),
    library.visas_attachments(),
    trinton.arrow_spanner_command(
        l_string="wide tast.",
        r_string="tight pont.",
        selector=trinton.select_leaves_by_index(
            [
                3,
                4,
            ],
        ),
        padding=6.5,
    ),
    trinton.arrow_spanner_command(
        l_string="tight tast.",
        r_string="wide pont.",
        selector=trinton.select_leaves_by_index(
            [
                8,
                9,
            ],
        ),
        padding=6.5,
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((3, 10, 2, 7)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                3,
                3,
                4,
                5,
                5,
                9,
                9,
                -1,
            ],
        ),
    ),
    voice=score["cello 1 voice"],
)

# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        evans.tuplet(library.visas_rhythms(0)),
    ),
    trinton.treat_tuplets(),
    evans.PitchHandler(pitch_list=library.visas_pitches(0, 2)),
    abjad.beam,
    library.artificial_harmonics(),
    library.visas_attachments(),
    trinton.arrow_spanner_command(
        l_string="wide",
        r_string="tight",
        selector=trinton.select_leaves_by_index([3, -1]),
        padding=6.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
                1,
                3,
            ]
        ),
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            1,
            3,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(
        evans.tuplet(library.visas_rhythms(4)),
    ),
    trinton.treat_tuplets(),
    evans.PitchHandler(pitch_list=library.visas_pitches(8, 2)),
    library.artificial_harmonics(),
    library.visas_attachments(),
    trinton.arrow_spanner_command(
        l_string="tight pont.",
        r_string="wide tast.",
        selector=trinton.select_leaves_by_index(
            [
                3,
                -1,
            ]
        ),
        padding=6.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 3, 3, -1]),
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            2,
            4,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(
        evans.tuplet(library.visas_rhythms(1)),
    ),
    trinton.treat_tuplets(),
    evans.PitchHandler(pitch_list=library.visas_pitches(2, 2)),
    library.artificial_harmonics(),
    library.visas_attachments(),
    library.tremolo(),
    trinton.arrow_spanner_command(
        l_string="wide tast.",
        r_string="tight pont.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ]
        ),
        padding=6.5,
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
                1,
                -1,
            ],
        ),
    ),
    voice=score["cello 2 voice"],
)


# markups and beams

# trinton.annotate_leaves(score)

library.write_instrument_names(score)

library.write_short_instrument_names(score)

library.one_line(
    score=score,
    voice="percussion voice",
    leaves=[0],
)

for leaf, tempo in zip(
    [
        0,
        8,
    ],
    [
        4,
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
        (2, 3),
    ),
    trinton.arrow_spanner_command(
        l_string=r'\markup { \abs-fontsize #12 \upright { "Rit." } }',
        r_string=r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }',
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
            4,
            5,
        ),
    ),
    trinton.arrow_spanner_command(
        l_string=r'\markup { \abs-fontsize #12 \upright { "Accel." } }',
        r_string=r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }',
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=9.5,
        tempo=True,
    ),
    voice=score["Global Context"],
)

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        3,
    ],
    attachment=abjad.LilyPondLiteral(r"\pageBreak", "absolute_after"),
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
    segment_path="/Users/trintonprater/scores/blut/blut/sections/10",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="10",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
