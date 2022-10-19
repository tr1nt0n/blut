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
        rewrite=-2,
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
