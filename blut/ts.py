import abjad
import baca
import evans
import trinton
import random
from itertools import cycle

section_1a_ts = [
    (3, 8),
    (1, 16),
    (5, 8),
    (1, 16),
    (1, 8),
    (1, 16),
    (13, 8),
    (1, 16),
    (3, 8),
]

root_numerators = eval(
    """[
    6,
    11,
    8,
    3,
    13,
    9,
    8,
    8,
    17,
    4,
    9,
    8,
    9,
    14,
    8,
    4,
    8,
    12,
    4,
    15,
    8,
    6,
    8,
    13,
    4,
    3,
    16,
    5,
]"""
)

partitioned_numerators = abjad.sequence.partition_by_counts(
    sequence=root_numerators,
    counts=[
        2,
        5,
    ],
    overhang=True,
)

helianthated_numerators = baca.sequence.helianthate(partitioned_numerators, n=-1, m=1)

numerator_sequence = []

for l in helianthated_numerators:
    for _ in l:
        numerator_sequence.append(_)

section_numerators = abjad.sequence.partition_by_counts(
    sequence=numerator_sequence,
    counts=[
        7,
    ],
    overhang=True,
)

section_1b_ts = trinton.make_ts_pair_list(
    numerators=section_numerators[0],
    denominators=cycle(
        [
            8,
        ]
    ),
)

for ts in section_1b_ts:
    section_1a_ts.append(ts)
