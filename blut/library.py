import abjad
import baca
import evans
import trinton
import random
from abjadext import rmakers
from abjadext import microtones

# score

def blut_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[
            abjad.BassClarinet(),
            abjad.Percussion(),
            abjad.Cello(),
            abjad.Cello(),
        ],
        groups=[
            1,
            1,
            2,
        ],
        time_signatures=time_signatures,
    )

    return score

# tempi

tempi = [
    abjad.Markup(
        r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }'
    ),
    abjad.Markup(
        r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }'
    ),
    abjad.Markup(
        r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }'
    ),
    abjad.Markup(
        r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"117" } }'
    ),
    abjad.Markup(
        r'\markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"140" } }'
    ),
]

for tempo in tempi:
    abjad.bundle(tempo, r"- \tweak padding #7")

# instrument names

all_voice_names = eval(
    """[
        "bassclarinet voice",
        "percussion voice",
        "cello 1 voice",
        "cello 2 voice",
    ]"""
)

all_instrument_names = eval(
    """[
    abjad.InstrumentName(markup=abjad.Markup(r"\markup \\bold { Bass Clarinet }")),
    abjad.InstrumentName(markup=abjad.Markup(r"\markup \\bold { Percussions }")),
    abjad.InstrumentName(markup=abjad.Markup(r"\markup \\bold { Violoncello I }")),
    abjad.InstrumentName(markup=abjad.Markup(r"\markup \\bold { Violoncello II }")),
]"""
)

all_short_instrument_names = eval(
    """[
    abjad.ShortInstrumentName(markup=abjad.Markup(r"\markup \\bold { b. cl. }")),
    abjad.ShortInstrumentName(markup=abjad.Markup(r"\markup \\bold { perc. }")),
    abjad.ShortInstrumentName(markup=abjad.Markup(r"\markup \\bold { vc. I }")),
    abjad.ShortInstrumentName(markup=abjad.Markup(r"\markup \\bold{ vc. II }")),
]"""
)


def write_instrument_names(score):
    for voice_name, markup in zip(all_voice_names, all_instrument_names):
        trinton.attach(voice=score[voice_name], leaves=[0], attachment=markup)


def write_short_instrument_names(score):
    for voice_name, markup in zip(all_voice_names, all_short_instrument_names):
        trinton.attach(voice=score[voice_name], leaves=[0], attachment=markup)
