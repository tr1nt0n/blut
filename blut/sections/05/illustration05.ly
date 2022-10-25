\version "2.23.14"
\language "english"
\include "/Users/trintonprater/scores/blut/blut/build/blut-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
\score
{
    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \bar ".|:"
            % OPENING:
            % COMMANDS:
            \time 8/16
            s1 * 1/2
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }
            % SPANNER_STARTS:
            - \tweak padding #8
            - \abjad-dashed-line-with-hook
            - \tweak bound-details.left.text \markup \concat { \upright { "2nd time Rall." } \hspace #0.5 }
            \startTextSpan
            % OPENING:
            % COMMANDS:
            \time 8/16
            s1 * 1/2
            % AFTER:
            % COMMANDS:
            \bar ":|."
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % OPENING:
            % COMMANDS:
            \time 3/16
            s1 * 3/16
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            % SPANNER_STOPS:
            \stopTextSpan
            % ABSOLUTE_BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.transparent = ##t
            % OPENING:
            % COMMANDS:
            \time 1/16
            s1 * 1/16
            % AFTER:
            % MARKUP:
            - \markup \huge \center-column { \musicglyph "scripts.ufermata" } 
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % OPENING:
            % COMMANDS:
            \time 13/16
            s1 * 13/16
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"140" } }
            % OPENING:
            % COMMANDS:
            \time 9/16
            s1 * 9/16
            % OPENING:
            % COMMANDS:
            \time 5/16
            s1 * 5/16
            % OPENING:
            % COMMANDS:
            \time 8/16
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 17/16
            s1 * 17/16
            % OPENING:
            % COMMANDS:
            \time 4/16
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 9/16
            s1 * 9/16
            % OPENING:
            % COMMANDS:
            \time 8/16
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 9/16
            s1 * 9/16
            % OPENING:
            % COMMANDS:
            \time 14/16
            s1 * 7/8
            % OPENING:
            % COMMANDS:
            \time 8/16
            s1 * 1/2
            % AFTER:
            % COMMANDS:
            \bar "||"
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
        % CLOSE_BRACKETS:
        }
        % BEFORE:
        % COMMANDS:
        \tag #'group1
        % OPEN_BRACKETS:
        {
            % OPEN_BRACKETS:
            \context StaffGroup = "Staff Group"
            <<
                % BEFORE:
                % COMMANDS:
                \tag #'voice1
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context Staff = "bassclarinet staff"
                    {
                        % OPEN_BRACKETS:
                        \context Voice = "bassclarinet voice"
                        {
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \staff-line-count 2
                            % BEFORE:
                            % COMMANDS:
                            \set Staff.instrumentName = \markup \bold { Bass Clarinet }
                            \set Staff.shortInstrumentName = \markup \bold { b. cl. }
                            % OPENING:
                            % COMMANDS:
                            \clef "percussion"
                            d'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            \p
                            % START_BEAM:
                            [
                            b8
                            % AFTER:
                            % ARTICULATIONS:
                            \ppp
                            % STOP_BEAM:
                            ]
                            d'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            \p
                            % START_BEAM:
                            [
                            b8
                            % AFTER:
                            % ARTICULATIONS:
                            \ppp
                            b8
                            b8
                            b8
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            r8
                            s1 * 3/16
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            s1 * 13/16
                            s1 * 9/16
                            s1 * 5/16
                            s1 * 1/2
                            s1 * 17/16
                            s1 * 1/4
                            s1 * 9/16
                            s1 * 1/2
                            s1 * 9/16
                            s1 * 7/8
                            s1 * 1/2
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % BEFORE:
                % COMMANDS:
                \tag #'voice2
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context Staff = "percussion staff"
                    {
                        % OPEN_BRACKETS:
                        \context Voice = "percussion voice"
                        {
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \staff-line-count 1
                            % BEFORE:
                            % COMMANDS:
                            \set Staff.instrumentName = \markup \bold { Percussions }
                            \set Staff.shortInstrumentName = \markup \bold { perc. }
                            % OPENING:
                            % COMMANDS:
                            \clef "percussion"
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            \p
                            % START_BEAM:
                            [
                            % COMMANDS:
                            \boxed-markup "Frame Drum w/ sponge ( rub )" 1
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            \ppp
                            % STOP_BEAM:
                            ]
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            \p
                            % START_BEAM:
                            [
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            \ppp
                            c'8
                            c'8
                            c'8
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            r8
                            s1 * 3/16
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            s1 * 13/16
                            s1 * 9/16
                            s1 * 5/16
                            s1 * 1/2
                            s1 * 17/16
                            s1 * 1/4
                            s1 * 9/16
                            s1 * 1/2
                            s1 * 9/16
                            s1 * 7/8
                            s1 * 1/2
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % BEFORE:
                % COMMANDS:
                \tag #'group2
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context GrandStaff = "sub group 1"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice3
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "cello 1 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "cello 1 voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 1
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \bold { Violoncello I }
                                    \set Staff.shortInstrumentName = \markup \bold { vc. I }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    c'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak padding #2.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "bridge, -45°" } \hspace #0.5 }
                                    \startTextSpan
                                    c'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % STOP_BEAM:
                                    ]
                                    c'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % START_BEAM:
                                    [
                                    c'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    c'8
                                    c'8
                                    c'8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    r8
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \tweak style #'triangle
                                    c32.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #4.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "pont." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "tast." } \hspace #0.5 }\startTextSpanOne
                                    - \tweak padding #6.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \upright "legno bat." } \hspace #0.5 }
                                    \startTextSpanOne
                                    r32.
                                    \tweak style #'triangle
                                    g32.
                                    \tweak style #'triangle
                                    bqs,32.
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanOne
                                    \stopTextSpanOne
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    s1 * 13/16
                                    s1 * 9/16
                                    s1 * 5/16
                                    s1 * 1/2
                                    s1 * 17/16
                                    s1 * 1/4
                                    s1 * 9/16
                                    s1 * 1/2
                                    s1 * 9/16
                                    s1 * 7/8
                                    s1 * 1/2
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice4
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "cello 2 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "cello 2 voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 1
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \bold { Violoncello II }
                                    \set Staff.shortInstrumentName = \markup \bold{ vc. II }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    c'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak padding #2.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "bridge, -45°" } \hspace #0.5 }
                                    \startTextSpan
                                    c'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % STOP_BEAM:
                                    ]
                                    c'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % START_BEAM:
                                    [
                                    c'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    c'8
                                    c'8
                                    c'8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    r8
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        r32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \staff-line-count 5
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \tweak style #'triangle
                                        g32
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #4.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "tast." } \hspace #0.5 }\startTextSpanOne
                                        - \tweak padding #6.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "legno bat." } \hspace #0.5 }
                                        \startTextSpanOne
                                        \tweak style #'triangle
                                        bqs,32
                                        \tweak style #'triangle
                                        g32
                                        \tweak style #'triangle
                                        c32
                                        \tweak style #'triangle
                                        fqs32
                                        \tweak style #'triangle
                                        c32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanOne
                                        \stopTextSpanOne
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    s1 * 13/16
                                    s1 * 9/16
                                    s1 * 5/16
                                    s1 * 1/2
                                    s1 * 17/16
                                    s1 * 1/4
                                    s1 * 9/16
                                    s1 * 1/2
                                    s1 * 9/16
                                    s1 * 7/8
                                    s1 * 1/2
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    >>
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
        % CLOSE_BRACKETS:
        }
    % CLOSE_BRACKETS:
    >>
}
