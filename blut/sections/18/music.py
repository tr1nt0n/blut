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

score = library.blut_score(
    [
        (5, 8),
        (9, 8),
        (1, 6),
        (1, 4),
        (1, 6),
        (1, 4),
        (7, 32),
        (1, 16),
        (1, 2),
        (1, 2),
        (5, 12),
        (1, 2),
        (1, 2),
        (5, 12),
        (1, 2),
    ]
)

# fermate

library.fermata_measures(
    score=score,
    measures=[
        8,
    ],
    fermata="uveryshortfermata",
)

# bass clarinet music commands


trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(library.teeth_on_reed_pitches(0)),
    trinton.hooked_spanner_command(
        string="teeth",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=10,
        direction="down",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["bassclarinet voice"],
)

for m, amplitudes, wave, leaves in zip(
    [
        (1, 2),
        (2, 3),
        (3, 4),
        (4, 5),
        (5, 6),
        (6, 7),
        (7, 8),
    ],
    [
        "(1 2 0.5 2 1 0.5 1)",
        "(0.5 2.5 0.5 2 1 3 1)",
        "(0.5 1 1.1 1.25 1.5 1.5 1.7 3 5 7)",
        "(8.5 2 1 3 0.5 0.25 2 0.1 0.1)",
        "(0.1 0.2 0.5 0.7 1 1.5 2.5 3 3.5 8 4.5 5 6)",
        "(6 6.5 7 7.25 7 8 9)",
        "(9 15 9 17 9 12 9 8 7 17)",
    ],
    [
        "2.25",
        "2",
        "2",
        "1.8",
        "1.5",
        "1.3",
        "1",
    ],
    [
        [0, 0, 2],
        [0, 0, 2],
        [0, 0, 1],
        [0, 0, 1],
        [0, 0, 1],
        [0, 0, 1],
        [0, 0, 1],
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, m),
        library.bcl_vibrato(
            amplitudes=amplitudes,
            wave_length=wave,
            selector=trinton.select_leaves_by_index(leaves),
        ),
        voice=score["bassclarinet voice"],
    )

for measure, dynamic, preprocessor in zip(
    [
        9,
        12,
        15,
    ],
    ["ffff", "mf", "mf"],
    [(8,), (8,), (7, 1)],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rmakers.note),
        evans.PitchHandler([-2]),
        trinton.attachment_command(
            attachments=[abjad.Dynamic(dynamic), abjad.Articulation(">")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["bassclarinet voice"],
        preprocessor=trinton.fuse_sixteenths_preprocessor(preprocessor),
    )

for measure, dynamic, in zip(
    [
        10,
        13,
    ],
    ["mf", "ff"],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rmakers.note),
        evans.PitchHandler(library.teeth_on_reed_pitches(0)),
        trinton.attachment_command(
            attachments=[abjad.Dynamic(dynamic), abjad.Articulation(">")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["bassclarinet voice"],
    )

for string, measures in zip(["slight overblow", "overblow"], [(10, 11), (13, 14)]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measures)),
        trinton.hooked_spanner_command(
            string=string,
            selector=trinton.select_leaves_by_index([0, 1]),
            padding=10,
            direction="down",
        ),
        voice=score["bassclarinet voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    library.glissando(),
    voice=score["bassclarinet voice"],
)

for measures, wave_length in zip(
    [
        (9, 10),
        (12, 13),
        (15,),
    ],
    ["1", "2", "4"],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        library.bcl_vibrato(
            amplitudes="(9 15 9 17 9 12 9 8 7 17)",
            wave_length=wave_length,
            selector=trinton.select_leaves_by_index([0, 0, 1]),
        ),
        trinton.hooked_spanner_command(
            string="teeth",
            selector=trinton.select_leaves_by_index(
                [0, 1],
            ),
            padding=10,
            direction="down",
        ),
        voice=score["bassclarinet voice"],
    )

for measure, index in zip(
    [
        11,
        14,
    ],
    [
        3,
        6,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(
            evans.tuplet(
                [
                    (2, 2, 1),
                ]
            )
        ),
        library.bcl_bells_handler(fundamental_string="af", index=index),
        library.bcl_bells_attachments(),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartHairpin("o<"),
                abjad.Dynamic("mf"),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index(
                [
                    0,
                    1,
                    1,
                    -1,
                ]
            ),
        ),
        voice=score["bassclarinet voice"],
    )

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                1,
                1,
                4,
                1,
                1,
            ],
            16,
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(),
    abjad.beam,
    voice=score["percussion voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

for measure in [4, 6]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(
            rmakers.note,
        ),
        library.perc_instrument(
            instrument_string="bow Cymbal",
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["percussion voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ]
        ),
    ),
    voice=score["percussion voice"],
)

for measure, numerator in zip([3, 5, 11, 14], [4, 6, 5, 10]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        library.hyperventilation_perc_rhythms([numerator]),
        evans.PitchHandler([[2, -1]]),
        abjad.beam,
        trinton.attachment_command(
            attachments=[abjad.Articulation("marcato")],
            selector=trinton.pleaves(),
        ),
        library.perc_instrument(
            instrument_string="Frame + Slit w/ sticks",
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["percussion voice"],
    )

for measure, dynamic in zip([11, 14], ["mf", "ff"]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.Dynamic(dynamic)],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["percussion voice"],
    )

for measure in [9, 13]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rmakers.note),
        trinton.attachment_command(
            attachments=[abjad.Dynamic("mf")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        library.perc_instrument(
            instrument_string="Lion's Roar",
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["percussion voice"],
    )

for measure, dynamic in zip(
    [
        10,
        12,
        15,
    ],
    ["ff", "mf", "mf"],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.talea([7, 1], 16)),
        trinton.treat_tuplets(),
        library.glissando(),
        library.tremolo(),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartHairpin("o<"),
                abjad.Dynamic(dynamic),
            ],
            selector=trinton.select_leaves_by_index([0, -1]),
        ),
        library.perc_instrument(
            instrument_string="Slit Drum w/ rubber mallets",
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["percussion voice"],
    )

# cello 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.tuplet(library.visas_rhythms(2))),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=library.visas_pitches(4, 1)),
    library.artificial_harmonics(),
    library.visas_attachments(),
    trinton.arrow_spanner_command(
        l_string="wide",
        r_string="tight",
        selector=trinton.select_leaves_by_index(
            [
                3,
                4,
            ]
        ),
        padding=7.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
            ],
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            6,
            4,
        )
    ),
)


trinton.make_music(
    lambda _: trinton.select_target(_, (2, 6)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            16,
        )
    ),
    evans.PitchHandler(
        [
            -18,
            -21,
            -22,
            -22,
            -22,
            -14,
            -16,
            -17,
            -18,
            -20,
            -22,
            -17,
            -20,
            -21,
            -21,
            -21,
            -14,
        ]
    ),
    library.ghost_attachments(),
    trinton.beam_durations([(3, 8), (5, 16), (3, 8)]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ffff"),
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
        string="IV",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=9,
    ),
    library.invisible_tuplet_brackets(),
    library.perc_instrument(
        instrument_string="( does not prolate with time signature )",
        selector=trinton.select_leaves_by_index(
            [
                18,
            ]
        ),
    ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_preprocessor((6,)),
)

for measure, dynamic in zip([11, 14], ["ff", "mf"]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.tuplet([(4, 1)])),
        evans.PitchHandler([-4]),
        library.totem_attachments(vc=True),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartHairpin("o<|"),
                abjad.Dynamic(dynamic),
            ],
            selector=trinton.select_leaves_by_index([0, -1]),
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
                [0, -1],
            ),
            id="Two",
            left_text="flaut.",
            right_text="scratch",
            style="dashed-line-with-arrow",
            padding=11,
        ),
        voice=score["cello 1 voice"],
    )

for measure, dynamic in zip([9, 12, 15], ["mf", "mf", "ff"]):
    trinton.make_music(
        lambda _: trinton.select_target(
            _,
            (measure,),
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
                ],
                16,
                extra_counts=[
                    0,
                    2,
                ],
            )
        ),
        trinton.force_rest(selector=trinton.select_leaves_by_index([3])),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(),
        evans.PitchHandler([6]),
        trinton.beam_groups(beam_rests=False),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Clef("tenorvarC"),
                abjad.Dynamic(dynamic),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
        ),
        library.electroshock_attachments(),
        trinton.id_spanner_command(
            selector=trinton.select_leaves_by_index([0, -1]),
            id="One",
            left_text="IV, vibrato moltissimo",
            style="dashed-line-with-hook",
            padding=8,
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
        ),
        trinton.notehead_bracket_command(),
        voice=score["cello 1 voice"],
        preprocessor=trinton.fuse_sixteenths_preprocessor(
            (
                3,
                5,
            )
        ),
    )

for measure in [10, 13]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(
            evans.even_division(
                [32],
            )
        ),
        trinton.treat_tuplets(),
        library.pitch_bat_trat(index=0, seed=64),
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
                abjad.Dynamic("mf"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
        ),
        voice=score["cello 1 voice"],
    )


# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            16,
        )
    ),
    evans.PitchHandler(
        [
            -18,
            -21,
            -22,
            -22,
            -22,
            -14,
            -16,
            -16,
            -16,
            -16,
            -16,
            -16,
            -16,
            -17,
            -18,
            -20,
            -22,
        ]
    ),
    library.ghost_attachments(contour="lwy"),
    trinton.beam_durations([(3, 8), (3, 8), (5, 16)]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ffff"),
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
        string="IV",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=9.5,
    ),
    library.invisible_tuplet_brackets(),
    library.perc_instrument(
        instrument_string="( does not prolate with time signature )",
        selector=trinton.select_leaves_by_index(
            [
                28,
            ]
        ),
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_preprocessor((7,)),
)

for measure, pitch in zip([11, 14], [-22, -24]):
    trinton.make_music(
        lambda _: trinton.select_target(
            _,
            (measure,),
        ),
        evans.RhythmHandler(rmakers.note),
        evans.PitchHandler([pitch]),
        library.tremolo(),
        trinton.hooked_spanner_command(
            string="IV, trem. pont.",
            selector=trinton.select_leaves_by_index([0, -1]),
            padding=8,
        ),
        trinton.attachment_command(
            attachments=[
                abjad.Clef("bass"),
                abjad.Dynamic("mf"),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["cello 2 voice"],
    )

for measure in [9, 13]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.tuplet([(7, 1)])),
        trinton.treat_tuplets(),
        evans.PitchHandler([-13]),
        library.totem_attachments(vc=True),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Clef("bass"),
                abjad.StartHairpin("o<"),
                abjad.Dynamic("mf"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1]),
        ),
        trinton.id_spanner_command(
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            id="One",
            left_text="molto pont.",
            style="dashed-line-with-hook",
            padding=13.5,
        ),
        trinton.id_spanner_command(
            selector=trinton.select_leaves_by_index(
                [0, -1],
            ),
            id="Two",
            left_text="scratch",
            right_text="flaut.",
            style="dashed-line-with-arrow",
            padding=11.5,
        ),
        voice=score["cello 2 voice"],
    )

for measure, dynamic in zip(
    [
        10,
        12,
        15,
    ],
    ["mf", "ff", "mf"],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.PitchHandler(pitch_list=library.visas_pitches(20, 2)),
        library.tremolo(),
        abjad.beam,
        library.artificial_harmonics(),
        library.visas_attachments(),
        trinton.arrow_spanner_command(
            l_string="wide molto pont.",
            r_string="tight tast.",
            selector=trinton.select_leaves_by_index(
                [
                    0,
                    -1,
                ]
            ),
            padding=7.5,
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Clef("tenorvarC"),
                abjad.StartHairpin("o<"),
                abjad.Dynamic(dynamic),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index(
                [0, 0, 1, 1, -1],
            ),
        ),
        trinton.notehead_bracket_command(),
        voice=score["cello 2 voice"],
    )

trinton.attach(
    voice=score["Global Context"],
    attachment=abjad.LilyPondLiteral(r"\pageBreak", "after"),
    leaves=[
        1,
        -2,
    ],
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
        21,
        28,
        39,
        52,
    ],
)

library.two_lines(
    score=score,
    voice="percussion voice",
    leaves=[
        17,
        22,
        34,
        42,
    ],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (1, 3),
    ),
    trinton.arrow_spanner_command(
        l_string=r'\markup { \abs-fontsize #12 \upright { "Accel." } }',
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
        0,
    ],
    attachments=[
        abjad.LilyPondLiteral(
            r"""\set Score.repeatCommands = #'((volta "5"))""",
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
        -1,
    ],
    attachments=[
        abjad.BarLine("||", "after"),
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
    segment_path="/Users/trintonprater/scores/blut/blut/sections/18",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="18",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
