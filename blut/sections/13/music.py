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

score = library.blut_score(ts.section_13_ts)

# fermate

library.fermata_measures(
    score=score,
    measures=[
        15,
    ],
)

library.fermata_measures(
    score=score,
    measures=[
        13,
    ],
    fermata="ushortfermata",
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    15,
                    1,
                )
            ]
        )
    ),
    trinton.treat_tuplets(),
    evans.PitchHandler([2.5]),
    abjad.beam,
    library.glissando(),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(library._written_pitch_to_fingering[2.5]),
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
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
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
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            4,
            6,
        ),
    ),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    3,
                    8,
                    5,
                )
            ]
        )
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0, -1])),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.treat_tuplets(),
    evans.PitchHandler([2.5]),
    library.glissando(),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(library._written_pitch_to_fingering[2.5]),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
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
                2,
                -1,
            ],
            pitched=True,
        ),
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            4,
            23,
            8,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    8,
                    7,
                    1,
                )
            ]
        )
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([-1])),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.treat_tuplets(),
    evans.PitchHandler([2.5]),
    library.glissando(),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(library._written_pitch_to_fingering[2.5]),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                -1,
            ],
            pitched=True,
        ),
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((9,)),
)

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.even_division(
            [8, 16],
            extra_counts=[
                0,
                -1,
                0,
                2,
            ],
        )
    ),
    trinton.force_rest(lambda _: abjad.select.leaves(_)),
    trinton.force_note(
        trinton.select_logical_ties_by_index(
            [
                1,
                3,
                5,
                6,
                8,
                9,
            ]
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.treat_tuplets(),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("stopped"),
            abjad.Articulation("baca-circle-markup"),
        ],
        selector=trinton.pleaves(),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.perc_instrument(
        instrument_string="Chinese Cymbal w/ triangle beater",
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            7,
            7,
            7,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            3,
            4,
        ),
    ),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                1,
                1,
            ],
            8,
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(),
    library.perc_instrument(
        instrument_string="w/ bow", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ]
        ),
    ),
    abjad.beam,
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                1,
                1,
                1,
                1,
                3,
            ],
            16,
        )
    ),
    trinton.force_rest(lambda _: abjad.select.leaves(_)),
    trinton.force_note(
        trinton.select_logical_ties_by_index(
            [
                1,
                3,
                -1,
            ]
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.treat_tuplets(),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("stopped"),
            abjad.Articulation("baca-circle-markup"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                1,
                3,
            ]
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    library.perc_instrument(
        instrument_string="w/ triangle beater",
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.perc_instrument(
        instrument_string="w/ bow",
        selector=trinton.select_leaves_by_index([-1]),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                1,
                1,
            ],
            16,
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
            ]
        ),
    ),
    abjad.beam,
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.RhythmHandler(
        evans.even_division(
            [32],
            extra_counts=[
                3,
            ],
        )
    ),
    trinton.force_rest(lambda _: abjad.select.leaves(_)),
    trinton.force_note(
        trinton.patterned_tie_index_selector(
            [1, 3, 4, 7, 10],
            11,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.treat_tuplets(),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("stopped"),
            abjad.Articulation("baca-circle-markup"),
        ],
        selector=trinton.pleaves(),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    library.perc_instrument(
        instrument_string="w/ triangle beater",
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    evans.RhythmHandler(
        evans.even_division(
            [32],
        )
    ),
    trinton.force_rest(lambda _: abjad.select.leaves(_)),
    trinton.force_note(
        trinton.patterned_tie_index_selector(
            [1, 3, 4, 7, 10],
            11,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.treat_tuplets(),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("stopped"),
            abjad.Articulation("baca-circle-markup"),
        ],
        selector=trinton.pleaves(),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    voice=score["percussion voice"],
)

# cello 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            1,
            2,
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
                2,
                0,
                -1,
                0,
            ],
        )
    ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [
                3,
                8,
                -1,
                -2,
                -3,
            ]
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(),
    evans.PitchHandler([6]),
    trinton.beam_groups(beam_rests=False),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            abjad.bundle(
                abjad.Markup(r"\markup \italic { Espressivo }"), r"- \tweak padding #3"
            ),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                3,
                5,
                5,
                7,
                8,
            ],
            pitched=True,
        ),
    ),
    library.electroshock_attachments(),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1]),
        id="One",
        left_text="IV, vibrato moltissimo",
        style="dashed-line-with-hook",
        padding=7.5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                8,
                -1,
            ],
            pitched=True,
        ),
        id="Two",
        left_text="1/2 scratch",
        style="dashed-line-with-hook",
        padding=6,
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            7,
            7,
            7,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            7,
            11,
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
                2,
                0,
                -1,
            ],
        )
    ),
    trinton.force_rest(
        selector=trinton.patterned_leaf_index_selector([5, 8, 16, 20], 22)
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(),
    evans.PitchHandler(
        [
            6,
        ]
    ),
    trinton.beam_groups(beam_rests=False),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic("p"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                8,
                11,
                11,
                13,
                14,
                14,
                16,
                17,
                18,
                -1,
            ],
            pitched=True,
        ),
    ),
    library.electroshock_attachments(),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1]),
        id="One",
        left_text="IV, vibrato moltissimo",
        style="dashed-line-with-hook",
        padding=7.5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                0,
                7,
            ],
            pitched=True,
        ),
        id="Two",
        left_text="flaut.",
        right_text="1/2 scratch",
        style="dashed-line-with-arrow",
        padding=6,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                8,
                10,
            ],
            pitched=True,
        ),
        id="Two",
        left_text=".",
        style="dashed-line-with-hook",
        padding=6,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                18,
                22,
            ],
            pitched=True,
        ),
        id="Two",
        left_text="1/2 scratch",
        style="dashed-line-with-hook",
        padding=6,
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            7,
            6,
            8,
            3,
            7,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (14,),
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
                2,
                1,
            ],
        )
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([-1])),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(),
    evans.PitchHandler(
        [
            6,
        ]
    ),
    trinton.beam_groups(beam_rests=False),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
                4,
                -1,
            ],
            pitched=True,
        ),
    ),
    library.electroshock_attachments(),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        id="One",
        left_text="IV, vibrato moltissimo",
        style="dashed-line-with-hook",
        padding=8,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
            ],
            pitched=True,
        ),
        id="Two",
        left_text="flaut.",
        right_text="1/2 scratch",
        style="dashed-line-with-arrow",
        padding=6,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                6,
                -1,
            ],
            pitched=True,
        ),
        id="Two",
        left_text=".",
        right_text="flaut.",
        style="dashed-line-with-arrow",
        padding=6,
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((9,)),
)

# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(
        [
            -22,
        ]
    ),
    library.tremolo(),
    library.glissando(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string="IV, trem. pont.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=3.5,
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            3,
            1,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (4,),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            6,
            7,
        ),
    ),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(
        [
            -24,
            -22,
        ]
    ),
    library.tremolo(),
    trinton.hooked_spanner_command(
        string="IV, trem. pont.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=3.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ]
        ),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            6,
            8,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()], selector=trinton.select_leaves_by_index([-1])
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    8,
                    7,
                    1,
                )
            ]
        )
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([-1])),
    trinton.treat_tuplets(),
    evans.PitchHandler(
        [
            -22,
        ]
    ),
    library.glissando(),
    library.tremolo(),
    trinton.hooked_spanner_command(
        string="IV, trem. pont.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                -1,
            ],
            pitched=True,
        ),
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((9,)),
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
        3,
        8,
        9,
        10,
        13,
    ],
    [
        3,
        1,
        0,
        2,
        0,
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

trinton.tuplet_brackets(score, library.all_voice_names)

# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/13",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="13",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
