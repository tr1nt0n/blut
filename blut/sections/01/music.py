import abjad
import baca
import evans
import trinton
from abjadext import rmakers
from abjadext import microtones
from blut import library
from blut import ts

# score

score = library.blut_score(ts.section_1a_ts)

# bass clarinet music commands

for measure, tuplet, preprocessor in zip(
    [
        1,
        3,
        7,
    ],
    [
        (4, 1),
        (11, 2),
        (
            2,
            1,
        ),
    ],
    [
        (4, 2),
        (5, 5),
        (
            20,
            6,
        ),
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.tuplet([tuplet])),
        trinton.force_rest(library.tuplet_index_selector((0,))),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        trinton.beam_groups(beam_rests=False),
        voice=score["bassclarinet voice"],
        preprocessor=trinton.fuse_sixteenths_preprocessor(preprocessor),
    )

# percussions music commands

for measure, tuplet, preprocessor in zip(
    [
        1,
        3,
        7,
    ],
    [
        (4, 1),
        (3, 1),
        (5, 1),
    ],
    [
        (4, 2),
        (7, 3),
        (14, 12),
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.tuplet([tuplet])),
        trinton.force_rest(library.tuplet_index_selector((0,))),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        trinton.beam_groups(beam_rests=False),
        voice=score["percussion voice"],
        preprocessor=trinton.fuse_sixteenths_preprocessor(preprocessor),
    )

# cello 1 music commands

for n in [
    1,
    3,
    7,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (n,)),
        evans.RhythmHandler(evans.tuplet([(12, 1)])),
        trinton.treat_tuplets(),
        abjad.beam,
        voice=score["cello 1 voice"],
    )

for voice_name in library.all_voice_names:
    trinton.make_music(
        lambda _: trinton.select_target(_, (5,)),
        evans.RhythmHandler(evans.tuplet([(12, 1)])),
        trinton.treat_tuplets(),
        abjad.beam,
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (9,)),
        evans.RhythmHandler(rmakers.note),
        voice=score[voice_name],
    )

for m in [1, 3, 5, 7, 9]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (m,)),
        evans.PitchHandler(pitch_list=[[4, 9]]),
        library.artificial_harmonics(),
        library.tremolo(),
        voice=score["cello 1 voice"],
    )

# cello 2 music commands

for measure, tuplet, preprocessor in zip(
    [
        1,
        3,
        7,
    ],
    [(9, 1), (4, 1), (9, 1)],
    [
        (1, 5),
        (
            6,
            4,
        ),
        (6, 20),
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.tuplet([tuplet])),
        trinton.force_rest(library.tuplet_index_selector((0,))),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        trinton.beam_groups(beam_rests=False),
        voice=score["cello 2 voice"],
        preprocessor=trinton.fuse_sixteenths_preprocessor(preprocessor),
    )

for m in [1, 3, 5, 7, 9]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (m,)),
        evans.PitchHandler(pitch_list=[[2, 7]]),
        library.artificial_harmonics(),
        library.tremolo(),
        voice=score["cello 2 voice"],
    )

for voice_name in library.all_voice_names:
    for m in [
        1,
        3,
        5,
        7,
    ]:
        trinton.make_music(
            lambda _: trinton.select_target(_, (m,)),
            library.glissando(),
            voice=score[voice_name],
        )

# bass clarinet pitching

for measure in [
    1,
    3,
    5,
    7,
    9,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.PitchHandler([-9]),
        voice=score["bassclarinet voice"],
    )

# markups and beams

library.write_instrument_names(score)

library.write_short_instrument_names(score)

for leaf, tempo in zip(
    [
        0,
        2,
        4,
        6,
        8,
    ],
    [
        4,
        1,
        3,
        2,
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

# general attachments

for voice_name in library.all_voice_names:
    for m, dynamic in zip(
        [
            1,
            3,
            5,
            7,
        ],
        ["f", "mp", "p", "ff"],
    ):
        trinton.make_music(
            lambda _: trinton.select_target(_, (m,)),
            library.grunt(dynamic=dynamic),
            voice=score[voice_name],
        )

    for m, attachment in zip([9, 10], [abjad.StartHairpin("o<"), abjad.Dynamic("f")]):
        trinton.make_music(
            lambda _: trinton.select_target(_, (m,)),
            trinton.attachment_command(
                attachments=[attachment],
                selector=trinton.select_leaves_by_index(
                    [
                        0,
                    ]
                ),
            ),
            voice=score[voice_name],
        )

# percussion attachments

library.one_line(score=score, leaves=[0])

# trinton.fill_empty_staves_with_skips(score)

# fermate

library.fermata_measures(
    score=score,
    measures=[
        2,
        4,
        6,
        8,
    ],
)

# parts

trinton.extract_parts(score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sections/01",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
