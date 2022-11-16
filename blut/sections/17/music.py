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

score = library.blut_score(ts.section_17_ts)

# fermate

library.fermata_measures(
    score=score,
    measures=[
        7,
        21,
    ],
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (8, 7, 1),
            ]
        )
    ),
    trinton.treat_tuplets(),
    library.bcl_bells_handler(
        fundamental_string="af",
        index=3,
    ),
    abjad.beam,
    library.bcl_bells_attachments(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                3,
                6,
                6,
                7,
                -1,
            ]
        ),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(rmakers.note),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([6]),
    abjad.beam,
    trinton.attachment_command(
        attachments=[
            abjad.Markup(library._written_pitch_to_fingering[6]),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ]
        ),
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_preprocessor((3,)),
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.even_division([16])),
    trinton.treat_tuplets(),
    library.perc_instrument(
        instrument_string="Lion's Roar",
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string="pizz.", selector=trinton.select_leaves_by_index([0, -1]), padding=6.5
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_leaf_index_selector([2, 4], 6),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, -1],
        ),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    abjad.beam,
    library.perc_instrument(
        instrument_string="Chinese Cymbal w/ bow",
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<"), abjad.Dynamic("fff")],
        selector=trinton.select_leaves_by_index(
            [0, 0, -1],
        ),
    ),
    voice=score["percussion voice"],
    preprocessor=trinton.fuse_preprocessor((3,)),
)

# cello 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (1,),
    ),
    evans.RhythmHandler(evans.talea(library.bells_rhythms(4), 16)),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 1", index=57, seed=11),
    library.vc_bells_attachments(instrument="cello 1"),
    trinton.detach_command(
        detachments=[abjad.Dynamic],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                1,
            ],
            first=True,
        ),
    ),
    voice=score["cello 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.even_division(
            [16],
            extra_counts=[2],
        )
    ),
    trinton.treat_tuplets(),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index(
            [
                2,
                -2,
            ]
        )
    ),
    library.pitch_bat_trat(index=25, seed=64),
    abjad.beam,
    trinton.change_notehead_command(
        "triangle",
        selector=trinton.pleaves(),
    ),
    trinton.hooked_spanner_command(
        string="legno bat.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ]
        ),
        padding=5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 6)),
    evans.RhythmHandler(evans.tuplet(library.visas_rhythms(0))),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=library.visas_pitches(0, 1)),
    library.artificial_harmonics(),
    library.visas_attachments(),
    trinton.arrow_spanner_command(
        l_string="tight tast.",
        r_string="wide pont.",
        selector=trinton.select_leaves_by_index(
            [
                3,
                4,
            ]
        ),
        padding=7.5,
    ),
    trinton.arrow_spanner_command(
        l_string="wide",
        r_string="tight",
        selector=trinton.select_leaves_by_index(
            [
                8,
                9,
                17,
                18,
            ]
        ),
        padding=7.5,
    ),
    trinton.arrow_spanner_command(
        l_string="pont.",
        r_string="molto tast.",
        selector=trinton.select_leaves_by_index(
            [
                13,
                14,
            ]
        ),
        padding=7.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            abjad.Articulation(">"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                1,
                3,
                4,
                5,
                5,
                -2,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
            abjad.Articulation("staccato"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                -1,
                -2,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                8,
                12,
            ],
            first=True,
        ),
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            2,
            5,
            3,
        )
    ),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 18)),
    evans.RhythmHandler(
        evans.even_division(
            [16],
            extra_counts=[
                -1,
                2,
                1,
                -3,
            ],
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.treat_tuplets(),
    trinton.force_rest(
        selector=trinton.patterned_leaf_index_selector([2, 6, 7, 10, 20], 21)
    ),
    library.pitch_bat_trat(index=7, seed=0),
    abjad.beam,
    trinton.change_notehead_command(
        "triangle",
        selector=trinton.pleaves(),
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        id="One",
        left_text="legno",
        style="dashed-line-with-hook",
        padding=14.5,
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_preprocessor(
        (
            1,
            2,
            1,
            1,
            1,
            1,
            2,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 14)),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -3], pitched=True),
        id="Two",
        left_text="bat. ( no horizontal motion )",
        right_text="trat. ( full bows as possible )",
        style="dashed-line-with-arrow",
        padding=12.5,
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 18)),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        id="Two",
        left_text=".",
        style="dashed-line-with-hook",
        padding=12.5,
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 16)),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, 15], pitched=True),
        id="Three",
        left_text="molto pont.",
        right_text="molto tast.",
        style="dashed-line-with-arrow",
        padding=10.5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([18, -1], pitched=True),
        id="Three",
        left_text="molto tast.",
        right_text="molto pont.",
        style="dashed-line-with-arrow",
        padding=10.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                24,
                24,
                -1,
            ],
            pitched=True,
        ),
    ),
    voice=score["cello 1 voice"],
)


# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.even_division(
            [16],
            extra_counts=[
                -2,
            ],
        )
    ),
    trinton.treat_tuplets(),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                3,
                9,
            ],
            10,
        )
    ),
    library.pitch_bat_trat(index=17, seed=137),
    abjad.beam,
    trinton.change_notehead_command(
        "triangle",
        selector=trinton.pleaves(),
    ),
    trinton.hooked_spanner_command(
        string="legno bat.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ]
        ),
        padding=5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                5,
            ],
            pitched=True,
        ),
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet(library.visas_rhythms(3))),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=library.visas_pitches(3, 2)),
    library.artificial_harmonics(),
    library.visas_attachments(),
    trinton.arrow_spanner_command(
        l_string="pont.",
        r_string="tast.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ]
        ),
        padding=6,
    ),
    trinton.arrow_spanner_command(
        l_string="tast.",
        r_string="molto pont.",
        selector=trinton.select_leaves_by_index(
            [
                3,
                -2,
            ]
        ),
        padding=7.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.Articulation("marcato"),
            abjad.Articulation("staccato"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Articulation(">"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                1,
                2,
                2,
                2,
                3,
                3,
                6,
                -1,
            ],
            pitched=True,
        ),
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            2,
            3,
        )
    ),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            -24,
            -22,
        ]
    ),
    abjad.beam,
    library.tremolo(),
    trinton.hooked_spanner_command(
        string="IV, trem. pont.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=6,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                -1,
            ],
            pitched=True,
        ),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 19)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                1,
                1,
            ],
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.treat_tuplets(),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                4,
                6,
                9,
                15,
                16,
            ],
            21,
        )
    ),
    library.pitch_bat_trat(index=56, seed=37),
    abjad.beam,
    trinton.change_notehead_command(
        "triangle",
        selector=trinton.pleaves(),
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        id="One",
        left_text="legno",
        style="dashed-line-with-hook",
        padding=10.5,
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 14)),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -4], pitched=True),
        id="Two",
        left_text="bat. ( no horizontal motion )",
        right_text="trat. ( full bows as possible )",
        style="dashed-line-with-arrow",
        padding=8,
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 19)),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        id="Two",
        left_text=".",
        style="dashed-line-with-hook",
        padding=8,
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 16)),
    trinton.id_spanner_command(
        selector=trinton.select_logical_ties_by_index(
            [0, 15], pitched=True, first=True
        ),
        id="Three",
        left_text="molto tast.",
        right_text="molto pont.",
        style="dashed-line-with-arrow",
        padding=6,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_logical_ties_by_index(
            [20, -1], pitched=True, first=True
        ),
        id="Three",
        left_text="molto pont.",
        right_text="molto tast.",
        style="dashed-line-with-arrow",
        padding=6,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                27,
                27,
                -1,
            ],
            pitched=True,
            first=True,
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
    leaves=[
        0,
    ],
)

for leaf, tempo in zip(
    [
        0,
        2,
        17,
        19,
    ],
    [
        3,
        1,
        2,
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
            8,
            17,
        ),
    ),
    trinton.arrow_spanner_command(
        l_string=r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }',
        r_string=r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"140" } }',
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=8.5,
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
        abjad.LilyPondLiteral(
            r"""\set Score.repeatCommands = #'((volta "1 - 4"))""",
            "before",
        ),
        abjad.LilyPondLiteral(
            r"""\set Score.repeatCommands = #'((volta #f))""",
            "after",
        ),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        -2,
    ],
    attachments=[
        abjad.Markup(
            r'\markup { \right-align \abs-fontsize #15 { \upright "×5" } }',
        ),
        abjad.BarLine(".|:", "before"),
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "before"
        ),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        -1,
    ],
    attachments=[
        abjad.BarLine(":|.", "after"),
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "after"
        ),
    ],
)

trinton.tuplet_brackets(score, library.all_voice_names)

# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/17",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="17",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
