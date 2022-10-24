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

score = library.blut_score([(3, 1)])

for voice_name in ["cello 1 voice", "cello 2 voice", "bassclarinet voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
        library.pitch_monolith(voice_name=voice_name, index=0),
        voice=score[voice_name],
    )

trinton.make_sc_file(
    score=score,
    tempo=((1, 4), 47),
    current_directory="/Users/trintonprater/scores/blut/blut/sketches",
)

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/blut/blut/sketches",
    build_path="/Users/trintonprater/scores/blut/blut/build",
    segment_name="sketch",
    includes=[
        "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
