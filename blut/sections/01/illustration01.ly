\version "2.20.0"
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
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"140" } }
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
            \time 5/8
            s1 * 5/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }
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
            \time 1/8
            s1 * 1/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"117" } }
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
            \time 13/8
            s1 * 13/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
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
            \time 3/8
            s1 * 3/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }
            % OPENING:
            % COMMANDS:
            \time 6/8
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 11/8
            s1 * 11/8
            % OPENING:
            % COMMANDS:
            \time 8/8
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 13/8
            s1 * 13/8
            % OPENING:
            % COMMANDS:
            \time 9/8
            s1 * 9/8
            % OPENING:
            % COMMANDS:
            \time 8/8
            s1 * 1
            % AFTER:
            % COMMANDS:
            \bar "||"
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
        % CLOSE_BRACKETS:
        }
        % OPEN_BRACKETS:
        \context StaffGroup = "Staff Group"
        <<
            % OPEN_BRACKETS:
            \context Staff = "bassclarinet staff"
            {
                % OPEN_BRACKETS:
                \context Voice = "bassclarinet voice"
                {
                    % BEFORE:
                    % COMMANDS:
                    \set Staff.instrumentName = \markup \bold { Bass Clarinet }
                    \set Staff.shortInstrumentName = \markup \bold { b. cl. }
                    s1 * 3/8
                    % BEFORE:
                    % COMMANDS:
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/16
                    % AFTER:
                    % COMMANDS:
                    \stopStaff \startStaff
                    s1 * 5/8
                    % BEFORE:
                    % COMMANDS:
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/16
                    % AFTER:
                    % COMMANDS:
                    \stopStaff \startStaff
                    s1 * 1/8
                    % BEFORE:
                    % COMMANDS:
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/16
                    % AFTER:
                    % COMMANDS:
                    \stopStaff \startStaff
                    s1 * 13/8
                    % BEFORE:
                    % COMMANDS:
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/16
                    % AFTER:
                    % COMMANDS:
                    \stopStaff \startStaff
                    s1 * 3/8
                    s1 * 3/4
                    s1 * 11/8
                    s1 * 1
                    s1 * 3/8
                    s1 * 13/8
                    s1 * 9/8
                    s1 * 1
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Staff = "percussion staff"
            {
                % OPEN_BRACKETS:
                \context Voice = "percussion voice"
                {
                    % BEFORE:
                    % COMMANDS:
                    \set Staff.instrumentName = \markup \bold { Percussions }
                    \set Staff.shortInstrumentName = \markup \bold { perc. }
                    s1 * 3/8
                    % BEFORE:
                    % COMMANDS:
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/16
                    % AFTER:
                    % COMMANDS:
                    \stopStaff \startStaff
                    s1 * 5/8
                    % BEFORE:
                    % COMMANDS:
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/16
                    % AFTER:
                    % COMMANDS:
                    \stopStaff \startStaff
                    s1 * 1/8
                    % BEFORE:
                    % COMMANDS:
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/16
                    % AFTER:
                    % COMMANDS:
                    \stopStaff \startStaff
                    s1 * 13/8
                    % BEFORE:
                    % COMMANDS:
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/16
                    % AFTER:
                    % COMMANDS:
                    \stopStaff \startStaff
                    s1 * 3/8
                    s1 * 3/4
                    s1 * 11/8
                    s1 * 1
                    s1 * 3/8
                    s1 * 13/8
                    s1 * 9/8
                    s1 * 1
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context GrandStaff = "sub group 1"
            <<
                % OPEN_BRACKETS:
                \context Staff = "cello 1 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "cello 1 voice"
                    {
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/8
                        {
                            % BEFORE:
                            % COMMANDS:
                            \set Staff.instrumentName = \markup \bold { Violoncello I }
                            \set Staff.shortInstrumentName = \markup \bold { vc. I }
                            c'4..
                            c'16
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/16
                        % AFTER:
                        % COMMANDS:
                        \stopStaff \startStaff
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/8
                        {
                            c'2..
                            c'8
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/16
                        % AFTER:
                        % COMMANDS:
                        \stopStaff \startStaff
                        c'16..
                        % AFTER:
                        % START_BEAM:
                        [
                        c'64
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        % BEFORE:
                        % COMMANDS:
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/16
                        % AFTER:
                        % COMMANDS:
                        \stopStaff \startStaff
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 13/8
                        {
                            c'2..
                            c'8
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/16
                        % AFTER:
                        % COMMANDS:
                        \stopStaff \startStaff
                        c'4.
                        s1 * 3/4
                        s1 * 11/8
                        s1 * 1
                        s1 * 3/8
                        s1 * 13/8
                        s1 * 9/8
                        s1 * 1
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Staff = "cello 2 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "cello 2 voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \bold { Violoncello II }
                        \set Staff.shortInstrumentName = \markup \bold{ vc. II }
                        s1 * 3/8
                        % BEFORE:
                        % COMMANDS:
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/16
                        % AFTER:
                        % COMMANDS:
                        \stopStaff \startStaff
                        s1 * 5/8
                        % BEFORE:
                        % COMMANDS:
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/16
                        % AFTER:
                        % COMMANDS:
                        \stopStaff \startStaff
                        s1 * 1/8
                        % BEFORE:
                        % COMMANDS:
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/16
                        % AFTER:
                        % COMMANDS:
                        \stopStaff \startStaff
                        s1 * 13/8
                        % BEFORE:
                        % COMMANDS:
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/16
                        % AFTER:
                        % COMMANDS:
                        \stopStaff \startStaff
                        s1 * 3/8
                        s1 * 3/4
                        s1 * 11/8
                        s1 * 1
                        s1 * 3/8
                        s1 * 13/8
                        s1 * 9/8
                        s1 * 1
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
        % CLOSE_BRACKETS:
        >>
    % CLOSE_BRACKETS:
    >>
}
