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
    ts.section_8_ts,
)

# fermate

library.fermata_measures(
    score=score,
    measures=[
        17,
    ],
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            1,
            8,
        ),
    ),
    evans.RhythmHandler(rmakers.note),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(library.teeth_on_reed_pitches(2)),
    abjad.beam,
    trinton.hooked_spanner_command(
        string="teeth",
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
                6,
                9,
            ]
        ),
        padding=10,
        direction="down",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                3,
                6,
                6,
                9,
            ],
        ),
    ),
    library.bcl_vibrato(
        amplitudes="(1 1 4 2 1 1.5 1.5 3 3.5 2 0.5 0.2 0.1 1 2)",
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
            ]
        ),
        wave_length="1.25",
    ),
    library.bcl_vibrato(
        amplitudes="(5 1 5 0.2 5 8 15 8 3 1 0.5 0.2 0)",
        selector=trinton.select_leaves_by_index(
            [
                1,
                1,
                2,
            ]
        ),
        wave_length="2",
    ),
    library.bcl_vibrato(
        amplitudes="(14 0.5 1 5 6 3 6)",
        selector=trinton.select_leaves_by_index(
            [
                2,
                2,
                4,
            ]
        ),
        wave_length="3.2",
    ),
    library.bcl_vibrato(
        amplitudes="(0.5 1 0.5 2 0.5 1 0.5 2.5 0.5 0.5 0.5 1 0.2)",
        selector=trinton.select_leaves_by_index(
            [
                6,
                6,
                9,
            ]
        ),
        wave_length="5.31",
    ),
    trinton.hooked_spanner_command(
        string="overblow",
        selector=trinton.select_leaves_by_index(
            [
                4,
                5,
                10,
                14,
            ]
        ),
        padding=3.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ffff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic("ffff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                4,
                4,
                5,
                10,
                10,
                14,
            ],
        ),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            10,
            14,
        ),
    ),
    evans.RhythmHandler(rmakers.note),
    trinton.treat_tuplets(),
    evans.PitchHandler(library.teeth_on_reed_pitches(4)),
    trinton.arrow_spanner_command(
        l_string="air",
        r_string="overblow",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=3.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ],
        ),
    ),
    voice=score["bassclarinet voice"],
)

for voice_name in [
    "bassclarinet voice",
    "percussion voice",
    "cello 1 voice",
    "cello 2 voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (15,)),
        evans.RhythmHandler(
            evans.talea(
                [
                    15,
                    1,
                ],
                16,
            )
        ),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("sfp"),
                abjad.StartHairpin("<"),
                abjad.Dynamic("f"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1]),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    evans.PitchHandler([8]),
    library.totem_attachments(bcl=True),
    voice=score["bassclarinet voice"],
)

for voice_name in library.all_voice_names:
    trinton.make_music(
        lambda _: trinton.select_target(_, (16,)),
        evans.RhythmHandler(evans.tuplet([(8, 7, 1)])),
        trinton.treat_tuplets(),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartHairpin("o<"),
                abjad.Dynamic("f"),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 1, 1, -1]),
        ),
        library.glissando(),
        trinton.notehead_bracket_command(),
        voice=score[voice_name],
    )

for voice_name in ["bassclarinet voice", "cello 1 voice", "cello 2 voice"]:
    for leaf in [0, 1, 2]:
        trinton.make_music(
            lambda _: trinton.select_target(_, (16,)),
            library.pitch_monolith(
                voice_name=voice_name,
                selector=trinton.select_leaves_by_index([leaf]),
                index=2,
            ),
            voice=score[voice_name],
        )

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    library.hyperventilation_perc_rhythms(
        [
            13,
        ]
    ),
    evans.PitchHandler([[2, -1]]),
    library.perc_instrument(
        instrument_string="Frame Drum + Slit Drum w/ drum sticks",
        selector=trinton.select_leaves_by_index([0]),
    ),
    abjad.beam,
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    library.hyperventilation_perc_rhythms(
        [
            16,
            17,
            9,
        ]
    ),
    evans.PitchHandler([[2, -1]]),
    abjad.beam,
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(evans.even_division([8])),
    trinton.treat_tuplets(),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_leaf_index_selector(
            [
                1,
                3,
            ],
            4,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("fff")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.perc_instrument(
        instrument_string="Lion's Roar",
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string="pizz.",
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ]
        ),
        padding=7,
    ),
    trinton.notehead_bracket_command(),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 14)),
    library.hyperventilation_perc_rhythms(
        [
            14,
            12,
            15,
            11,
            13,
        ]
    ),
    evans.PitchHandler([[2, -1]]),
    library.perc_instrument(
        instrument_string="Frame Drum + Slit Drum w/ drum sticks",
        selector=trinton.select_leaves_by_index([0]),
    ),
    abjad.beam,
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    library.totem_attachments(),
    library.tremolo(),
    library.perc_instrument(
        instrument_string="Slit Drum w/ rubber mallets",
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
    library.perc_instrument(
        instrument_string="Stone Wind Chimes",
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.tremolo(),
    voice=score["percussion voice"],
)

# cello 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (9,),
    ),
    evans.RhythmHandler(
        evans.talea(
            library.bells_rhythms(1),
            16,
        )
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 1", index=12, seed=12),
    library.vc_bells_attachments(
        instrument="cello 1",
    ),
    trinton.detach_command(
        detachments=[
            abjad.Dynamic,
        ],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("fff"), abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
            ]
        ),
    ),
    voice=score["cello 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (15,),
    ),
    evans.PitchHandler([-2]),
    library.totem_attachments(vc=True),
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
        left_text="scratch",
        right_text="flaut.",
        style="dashed-line-with-arrow",
        padding=11,
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["cello 1 voice"],
)

for voice_name in ["cello 1 voice", "cello 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (16,)),
        trinton.hooked_spanner_command(
            string="III + IV",
            selector=trinton.select_leaves_by_index([0, -1]),
            padding=10,
        ),
        voice=score[voice_name],
    )

# cello 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (9,),
    ),
    evans.RhythmHandler(evans.talea(library.bells_rhythms(4), 16, extra_counts=[-2])),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.vc_bells_handler(instrument="cello 2", index=12, seed=12),
    library.vc_bells_attachments(
        instrument="cello 2",
    ),
    trinton.detach_command(
        detachments=[
            abjad.Dynamic,
        ],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    voice=score["cello 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (15,),
    ),
    evans.PitchHandler([-13]),
    library.totem_attachments(vc=True),
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

# markups and beams

# trinton.annotate_leaves(score)

library.two_lines(
    score=score,
    voice="percussion voice",
    leaves=[0],
)

library.one_line(
    score=score,
    voice="percussion voice",
    leaves=[59],
)

library.two_lines(
    score=score,
    voice="percussion voice",
    leaves=[63],
)

library.one_line(
    score=score,
    voice="percussion voice",
    leaves=[128],
)

library.five_lines(
    score=score,
    voice="bassclarinet voice",
    leaves=[0],
)

library.five_lines(
    score=score,
    voice="cello 1 voice",
    leaves=[8],
)

library.five_lines(score=score, voice="cello 2 voice", leaves=[8], clef="bass")

library.write_instrument_names(score)

library.write_short_instrument_names(score)

for leaf, tempo in zip(
    [
        3,
        5,
        8,
        9,
        14,
        15,
    ],
    [
        3,
        2,
        4,
        1,
        4,
        0,
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

trinton.tuplet_brackets(score, ["cello 1 voice", "cello 2 voice"])

# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/08",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="08",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
