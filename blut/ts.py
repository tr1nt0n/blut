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

# section 1

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

# section 3

section_numerators = abjad.sequence.partition_by_counts(
    sequence=numerator_sequence,
    counts=[
        10,
        10,
    ],
    overhang=True,
)

section_3_ts = trinton.make_ts_pair_list(
    numerators=section_numerators[1],
    denominators=cycle(
        [
            32,
        ]
    ),
)

section_3_ts.append((1, 16))

# section 5

section_numerators = abjad.sequence.partition_by_counts(
    sequence=numerator_sequence,
    counts=[
        14,
        14,
        14,
    ],
    overhang=True,
)

section_5_ts = trinton.make_ts_pair_list(
    numerators=section_numerators[2],
    denominators=cycle(
        [
            16,
        ]
    ),
)

section_5_ts.insert(3, (1, 16))

section_5_ts.append((15, 16))

# section 6

section_numerators = abjad.sequence.partition_by_counts(
    sequence=[_ for _ in numerator_sequence if _ > 6],
    counts=[
        22,
        22,
        22,
        22,
    ],
    overhang=True,
)

section_6_ts = trinton.make_ts_pair_list(
    numerators=section_numerators[3],
    denominators=cycle(
        [
            32,
        ]
    ),
)

section_6_ts.insert(12, (1, 16))

section_6_ts.insert(17, (1, 16))

section_6_ts.append((1, 16))

# section 7

section_numerators = abjad.sequence.partition_by_counts(
    sequence=numerator_sequence,
    counts=[
        15,
        15,
        15,
        15,
        13,
    ],
    overhang=True,
)

section_7_ts = trinton.make_ts_pair_list(
    numerators=section_numerators[4],
    denominators=cycle(
        [
            8,
        ]
    ),
)

section_7_ts.insert(0, (7, 8))

section_7_ts.append((11, 7))

section_7_ts.append((13, 9))

section_7_ts.append((12, 8))

# section 8

section_numerators = abjad.sequence.partition_by_counts(
    sequence=[_ for _ in numerator_sequence if _ > 8],
    counts=[
        15,
        15,
        15,
        15,
        15,
        15,
    ],
    overhang=True,
)

section_8_ts = trinton.make_ts_pair_list(
    numerators=section_numerators[5],
    denominators=[
        16,
        16,
        16,
        20,
        16,
        14,
        18,
        10,
        16,
        10,
        11,
        14,
        12,
        18,
        16,
    ],
)

section_8_ts.append((10, 16))

section_8_ts.append((1, 16))
