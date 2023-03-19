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

score = library.blut_score([(4, 8), (3, 8), (15, 8)])

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([4, 5, 4, 6], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            14,
            15,
            16,
            0,
            1,
            4,
            3,
        ]
    ),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

trinton.rebar(
    score=score,
    global_context=score["Global Context"],
    selector_function=lambda _: trinton.select_target(_, (3,)),
    replacement_signatures=[(5, 8), (5, 8), (5, 8)],
    boundary_depth=-2,
    rebeam=[score["bassclarinet voice"]],
)

trinton.remove_redundant_time_signatures(score=score)

trinton.fill_empty_staves_with_skips(score)

# trinton.make_sc_file(
#     score=score,
#     tempo=((1, 4), 47),
#     current_directory="/Users/trintonprater/scores/blut/blut/sketches",
# )

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
