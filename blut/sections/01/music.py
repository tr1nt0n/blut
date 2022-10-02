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

# music commands


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

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        -1,
    ],
    attachment=abjad.BarLine("||"),
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
