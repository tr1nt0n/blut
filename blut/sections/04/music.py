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
        (5, 8),
        (5, 8),
        (5, 8),
        (3, 8),
        (10, 8),
        (4, 8),
        (5, 8),
        (1, 8),
        (8, 8),
        (2, 8),
        (5, 8),
        (5, 8),
        (5, 8),
        (1, 16),
        (2, 8),
        (5, 8),
    ]
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
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
    trinton.treat_tuplets(),
    evans.PitchHandler([8]),
    abjad.beam,
    library.glissando(),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(library._written_pitch_to_fingering[8]),
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
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                2,
            ]
        ),
    ),
    voice=score["bassclarinet voice"],
)

for measure in [8, 11]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
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
        trinton.treat_tuplets(),
        evans.PitchHandler([8]),
        abjad.beam,
        library.glissando(),
        trinton.attachment_command(
            attachments=[
                abjad.Markup(library._written_pitch_to_fingering[8]),
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
                abjad.Dynamic("ffff"),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index(
                [
                    0,
                    1,
                    1,
                    2,
                ]
            ),
        ),
        voice=score["bassclarinet voice"],
    )

for measures in [
    (13, 15),
    (17,),
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
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
        trinton.treat_tuplets(),
        evans.PitchHandler([8]),
        abjad.beam,
        library.glissando(),
        trinton.attachment_command(
            attachments=[
                abjad.Markup(library._written_pitch_to_fingering[8]),
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
                abjad.Dynamic("fffff"),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index(
                [
                    0,
                    1,
                    1,
                    2,
                ]
            ),
        ),
        voice=score["bassclarinet voice"],
        preprocessor=trinton.fuse_preprocessor((3,)),
    )

for voice_name in library.all_voice_names:
    trinton.make_music(
        lambda _: trinton.select_target(_, (18,)),
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
        rmakers.force_augmentation,
        abjad.beam,
        library.glissando(),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartHairpin("o<"),
                abjad.Dynamic("mp"),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index(
                [
                    0,
                    1,
                    1,
                    2,
                ]
            ),
        ),
        voice=score[voice_name],
    )

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(
        evans.even_division(
            [8, 16],
            extra_counts=[
                0,
                1,
                3,
                2,
            ],
        )
    ),
    trinton.force_rest(lambda _: abjad.select.leaves(_)),
    trinton.force_note(trinton.patterned_leaf_index_selector([1, 6, 12], 13)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.treat_tuplets(),
    trinton.change_lines(
        lines=1,
        clef="percussion",
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("stopped"),
            abjad.Articulation("baca-circle-bowing"),
        ],
        selector=trinton.pleaves(),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
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
            3,
            1,
            4,
            2,
            6,
            5,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(
        evans.even_division(
            [
                16,
                8,
            ],
            extra_counts=[
                3,
                2,
                0,
                1,
            ],
        )
    ),
    trinton.force_rest(lambda _: abjad.select.leaves(_)),
    trinton.force_note(trinton.patterned_leaf_index_selector([2, 5, 12], 13)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    rmakers.force_augmentation,
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("stopped"),
            abjad.Articulation("baca-circle-bowing"),
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
        instrument_string="w/ triangle beater",
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            3,
            4,
            2,
            6,
            5,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            9,
            10,
        ),
    ),
    evans.RhythmHandler(
        evans.even_division(
            [
                16,
            ],
            extra_counts=[
                3,
                0,
            ],
        )
    ),
    trinton.force_rest(lambda _: abjad.select.leaves(_)),
    trinton.force_note(
        trinton.patterned_leaf_index_selector(
            [
                3,
                5,
            ],
            6,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.treat_tuplets(),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("stopped"),
            abjad.Articulation("baca-circle-bowing"),
        ],
        selector=trinton.pleaves(),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.perc_instrument(
        instrument_string="w/ triangle beater",
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            3,
            2,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (12,),
    ),
    evans.RhythmHandler(
        evans.even_division(
            [
                16,
            ],
            extra_counts=[
                3,
            ],
        )
    ),
    rmakers.force_augmentation,
    trinton.force_rest(lambda _: abjad.select.leaves(_)),
    trinton.force_note(
        trinton.patterned_leaf_index_selector(
            [
                2,
                5,
            ],
            7,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.treat_tuplets(),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("stopped"),
            abjad.Articulation("baca-circle-bowing"),
        ],
        selector=trinton.pleaves(),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.perc_instrument(
        instrument_string="w/ triangle beater",
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion voice"],
)


for measures, dynamic in zip(
    [
        (6,),
        (8,),
        (11,),
        (13, 15),
        (17,),
    ],
    [
        "fff",
        "ffff",
        "ffff",
        "fffff",
        "fffff",
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(
            _,
            measures,
        ),
        evans.RhythmHandler(rmakers.note),
        evans.RewriteMeterCommand(boundary_depth=-2),
        library.perc_instrument(
            instrument_string="w/ bow", selector=trinton.select_leaves_by_index([0])
        ),
        trinton.attachment_command(
            attachments=[
                abjad.Dynamic(dynamic),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["percussion voice"],
        preprocessor=trinton.fuse_preprocessor((3,)),
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    library.perc_instrument(
        instrument_string="Wooden Wind Chimes",
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.tremolo(),
    voice=score["percussion voice"],
)

trinton.fuse_tuplet_rests(score["percussion voice"])

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
            9,
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
                4,
                1,
                4,
            ],
        )
    ),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([11], 12)),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([6]),
    trinton.beam_groups(beam_rests=False),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { Espressivo }"""
                ),
                r"- \tweak padding #3",
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
            abjad.StopHairpin(),
            abjad.Dynamic("ffff"),
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
                13,
                19,
                19,
                26,
                28,
                34,
                36,
                36,
                40,
                47,
                47,
                51,
                53,
                59,
                61,
                61,
                65,
                -1,
            ]
        ),
    ),
    library.electroshock_attachments(),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1]),
        id="One",
        left_text="IV, vibrato moltissimo",
        style="dashed-line-with-hook",
        padding=7.5,
        right_padding=1,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                28,
                33,
                53,
                58,
            ]
        ),
        id="Two",
        left_text="1/2 scratch",
        style="dashed-line-with-hook",
        padding=6,
        right_padding=1,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(evans.even_division([16], extra_counts=[1])),
    trinton.treat_tuplets(),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index(
            [
                1,
            ]
        )
    ),
    library.pitch_bat_trat(
        index=13,
        seed=13,
    ),
    abjad.beam,
    trinton.change_notehead_command(notehead="triangle", selector=trinton.pleaves()),
    trinton.hooked_spanner_command(
        string="\markup \center-column { \line { legno trat. } \line { molto flaut. } \line { pont. } }",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=8,
        right_padding=2.5,
        full_string=True,
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
            11,
            15,
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
                4,
                5,
                -1,
                0,
            ],
        )
    ),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([0, 8], 8)),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(),
    evans.PitchHandler([6]),
    trinton.beam_groups(beam_rests=False),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            abjad.Dynamic("ffff"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic("fffff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                1,
                1,
                13,
                14,
                14,
                16,
                18,
            ]
        ),
    ),
    library.electroshock_attachments(),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([1, -1]),
        id="One",
        left_text="IV, vibrato moltissimo",
        style="dashed-line-with-hook",
        padding=9.5,
        right_padding=2,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([1, 12, 18, -1]),
        id="Two",
        left_text="1/2 scratch",
        style="dashed-line-with-hook",
        padding=7.5,
        right_padding=2,
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            3,
            1,
            4,
            1,
            2,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (17,),
    ),
    evans.RhythmHandler(
        evans.talea(
            [
                2,
                1,
                1,
                1,
            ],
            16,
            extra_counts=[1],
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(),
    evans.PitchHandler([6]),
    trinton.beam_groups(beam_rests=False),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fffff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    library.electroshock_attachments(),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index([0, -1]),
        id="One",
        left_text="IV, vibrato moltissimo",
        style="dashed-line-with-hook",
        padding=8,
        right_padding=4.5,
    ),
    trinton.id_spanner_command(
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ]
        ),
        id="Two",
        left_text="1/2 scratch",
        style="dashed-line-with-hook",
        padding=6,
        right_padding=4.5,
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["cello 1 voice"],
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

for measures, dynamic, pitch in zip(
    [
        (6,),
        (8,),
        (11,),
        (13, 15),
        (17,),
    ],
    ["fff", "ffff", "ffff", "fffff", "fffff"],
    [
        -22,
        -24,
        -22,
        -24,
        -22,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        evans.RhythmHandler(rmakers.note),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.PitchHandler(
            [
                pitch,
            ]
        ),
        trinton.attachment_command(
            attachments=[abjad.Dynamic(dynamic)],
            selector=trinton.select_leaves_by_index([0]),
        ),
        library.tremolo(),
        voice=score["cello 2 voice"],
        preprocessor=trinton.fuse_preprocessor((3,)),
    )

for measures, right_padding in zip(
    [
        (6, 7),
        (8, 9),
        (11, 12),
        (13, 15),
    ],
    [
        -3,
        -3,
        -3,
        4,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(
            _,
            measures,
        ),
        trinton.hooked_spanner_command(
            string="IV, trem. pont.",
            selector=trinton.select_leaves_by_index([0, -1]),
            padding=3.5,
            right_padding=right_padding,
        ),
        voice=score["cello 2 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(evans.even_division([32], extra_counts=[1])),
    trinton.treat_tuplets(),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index(
            [
                3,
            ]
        )
    ),
    library.pitch_bat_trat(
        index=0,
        seed=10,
    ),
    abjad.beam,
    trinton.change_notehead_command(notehead="triangle", selector=trinton.pleaves()),
    trinton.hooked_spanner_command(
        string="\markup \center-column { \line { legno trat. } \line { molto flaut. } \line { pont. } }",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=8,
        full_string=True,
        right_padding=1,
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

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (17,),
    ),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup { IV, trem. pont. } ")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["cello 2 voice"],
)

for voice_name, second_pitch_list in zip(
    ["bassclarinet voice", "cello 1 voice", "cello 2 voice"],
    [
        [
            28,
        ],
        [[-24, 5]],
        [[-24, 9]],
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (18,)),
        library.pitch_monolith(
            voice_name=voice_name,
            selector=trinton.select_leaves_by_index([0]),
            index=2,
        ),
        trinton.pitch_with_selector_command(
            pitch_list=second_pitch_list,
            selector=trinton.select_leaves_by_index([1, 2]),
        ),
        voice=score[voice_name],
    )

for voice_name in ["cello 1 voice", "cello 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (18,)),
        trinton.hooked_spanner_command(
            string="III + IV",
            selector=trinton.select_leaves_by_index([0, -1]),
            padding=10,
        ),
        voice=score[voice_name],
    )

# fermate

library.fermata_measures(score=score, measures=[2, -2], fermata="ushortfermata")

# markups and beams

library.write_instrument_names(score)

library.write_short_instrument_names(score)

for leaf, tempo in zip(
    [
        0,
        5,
        6,
        8,
        10,
        11,
        12,
        16,
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
        direction=abjad.UP,
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
        abjad.LilyPondLiteral(
            r'\tweak text "×5" \startMeasureSpanner', "absolute_before"
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
        abjad.LilyPondLiteral(r"\stopMeasureSpanner", "absolute_after"),
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

# trinton.attach(
#     voice=score["Global Context"],
#     leaves=[
#         1,
#     ],
#     attachment=abjad.LilyPondLiteral(r"\break", "absolute_after"),
# )

trinton.tuplet_brackets(score, library.all_voice_names)

trinton.remove_redundant_time_signatures(score=score)

library.push_markups(
    score["bassclarinet voice"],
    measures=[
        6,
        8,
        11,
        13,
        17,
    ],
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
