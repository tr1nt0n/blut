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
        (7, 32),
        (3, 2),
        (7, 16),
        (3, 4),
        (7, 8),
        (3, 8),
        (7, 4),
        (3, 16),
        (1, 16),
    ]
)

# fermate

library.fermata_measures(
    score=score,
    measures=[
        9,
    ],
    fermata="ushortfermata",
)

# bass clarinet music commands

for measure, time_mark, dynamic in zip(
    [1, 3, 5, 7], [r"0.5\"", r"1.5\"", r"3\"", r"7\""], ["pp", "p", "mp", "mp"]
):
    for voice_name in library.all_voice_names:
        trinton.make_music(
            lambda _: trinton.select_target(_, (measure,)),
            evans.RhythmHandler(evans.tuplet([(28, 1)], treat_tuplets=False)),
            library.glissando(),
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
            voice=score[voice_name],
        )

for voice_name, second_pitch_list in zip(
    ["bassclarinet voice", "cello 1 voice", "cello 2 voice"],
    [
        [31],
        [
            [
                -3,
                11,
            ]
        ],
        [[-24, 7]],
    ],
):
    for measure in [
        1,
        3,
        5,
        7,
    ]:
        trinton.make_music(
            lambda _: trinton.select_target(_, (measure,)),
            library.pitch_monolith(
                voice_name=voice_name,
                selector=trinton.select_leaves_by_index([0]),
                index=0,
            ),
            trinton.pitch_with_selector_command(
                pitch_list=second_pitch_list,
                selector=trinton.select_leaves_by_index([-1]),
            ),
            library.noteheads_only(),
            library.transparent_noteheads(
                selector=trinton.select_leaves_by_index([-1], pitched=True)
            ),
            trinton.attachment_command(
                attachments=[
                    abjad.LilyPondLiteral(
                        "\once \override Accidental.stencil = ##f", "before"
                    ),
                ],
                selector=trinton.select_leaves_by_index([-1], pitched=True),
            ),
            voice=score[voice_name],
        )

for measure in [
    1,
    3,
    5,
    7,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.ottava_command(selector=trinton.select_leaves_by_index([0, -1])),
        voice=score["bassclarinet voice"],
    )

for measure, dynamic, in zip(
    [
        2,
        4,
        6,
        8,
    ],
    ["mf", "ff", "mf", "p"],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rmakers.note),
        evans.PitchHandler(library.teeth_on_reed_pitches(0)),
        trinton.attachment_command(
            attachments=[
                abjad.Dynamic(dynamic),
                abjad.Articulation(">"),
                abjad.StartHairpin("--"),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["bassclarinet voice"],
    )

for measures, wave_length in zip(
    [
        (2, 3),
        (4, 5),
        (6, 7),
        (8, 9),
    ],
    ["1", "2", "3", "4"],
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
        trinton.attachment_command(
            attachments=[
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([1]),
        ),
        voice=score["bassclarinet voice"],
    )

# percussion music commands

for measure in [
    1,
    3,
    5,
    7,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.PitchHandler([[2, -1]]),
        library.noteheads_only(),
        library.transparent_noteheads(
            selector=trinton.select_leaves_by_index([-1], pitched=True)
        ),
        library.perc_instrument(
            instrument_string="Wood + Stone Wind Chimes",
            selector=trinton.select_leaves_by_index(
                [0],
            ),
        ),
        voice=score["percussion voice"],
    )

for measure, dynamic in zip(
    [
        2,
        4,
        6,
        8,
    ],
    ["mf", "mf", "ff", "p"],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.talea([2, 1], 16)),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-1),
        trinton.beam_durations(
            [
                (3, 16),
            ]
        ),
        library.tremolo(),
        library.perc_instrument(
            instrument_string="Slit Drum w/ rubber mallets",
            selector=trinton.select_leaves_by_index(
                [0],
            ),
        ),
        trinton.linear_attachment_command(
            attachments=cycle(
                [
                    abjad.StartHairpin("o<|"),
                    abjad.Dynamic(dynamic),
                    abjad.StartHairpin("o<"),
                    abjad.Dynamic(dynamic),
                    abjad.StartHairpin("o<|"),
                    abjad.Dynamic(dynamic),
                ]
            ),
            selector=trinton.logical_ties(first=True),
        ),
        library.totem_attachments(),
        voice=score["percussion voice"],
    )

# cello 1 music commands

for measure, tasto_string in zip(
    [
        1,
        3,
        5,
        7,
    ],
    ["tast. moltissimo", "molto tast.", "molto tast.", "tast."],
):
    for voice_name, clef, strings in zip(
        ["cello 1 voice", "cello 2 voice"],
        ["tenorvarC", "bass"],
        ["I + II", "III + IV"],
    ):
        trinton.make_music(
            lambda _: trinton.select_target(_, (measure,)),
            trinton.attachment_command(
                attachments=[abjad.Clef(clef)],
                selector=trinton.select_leaves_by_index([0]),
            ),
            trinton.id_spanner_command(
                selector=trinton.select_leaves_by_index([0, -1]),
                id="One",
                left_text=strings,
                style="dashed-line-with-hook",
                padding=11,
            ),
            trinton.id_spanner_command(
                selector=trinton.select_leaves_by_index([0, -1]),
                id="Two",
                left_text=tasto_string,
                style="dashed-line-with-hook",
                padding=9,
            ),
            voice=score[voice_name],
        )

for measure, dynamic in zip(
    [
        2,
        4,
        6,
        8,
    ],
    ["mf", "mf", "mf", "p"],
):
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
        trinton.force_rest(selector=trinton.patterned_tie_index_selector([3], 7)),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-1),
        evans.PitchHandler([6]),
        trinton.beam_groups(beam_rests=False),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic(dynamic),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1]),
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

# cello 2 music commands

for measure, dynamic in zip(
    [
        2,
        4,
        6,
        8,
    ],
    ["ff", "mf", "mf", "p"],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.PitchHandler(pitch_list=library.visas_pitches(20, 2)),
        library.tremolo(),
        library.artificial_harmonics(),
        library.visas_attachments(),
        trinton.arrow_spanner_command(
            l_string="wide m.p.",
            r_string="tight t.",
            selector=trinton.patterned_tie_index_selector([0, 2], 3, first=True),
            padding=7.5,
        ),
        trinton.attachment_command(
            attachments=[abjad.Clef("tenorvarC"), abjad.Dynamic(dynamic)],
            selector=trinton.select_leaves_by_index([0]),
        ),
        trinton.notehead_bracket_command(),
        voice=score["cello 2 voice"],
        preprocessor=trinton.fuse_quarters_preprocessor((2,)),
        beam_meter=True,
    )


# markups and beams

# trinton.annotate_leaves(score)

library.write_instrument_names(score)

library.write_short_instrument_names(score)

library.one_line(
    score=score,
    voice="percussion voice",
    leaves=[
        2,
        24,
        36,
        43,
    ],
)

library.two_lines(
    score=score,
    voice="percussion voice",
    leaves=[
        0,
        22,
        34,
        41,
    ],
)

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        0,
        2,
        4,
        6,
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
    segment_path="/Users/trintonprater/scores/blut/blut/sections/19",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="19",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
