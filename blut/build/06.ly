    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            % OPENING:
            % COMMANDS:
            \time 9/32
            s1 * 9/32
            % OPENING:
            % COMMANDS:
            \time 14/32
            s1 * 7/16
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }
            % OPENING:
            % COMMANDS:
            \time 12/32
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 15/32
            s1 * 15/32
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 13/32
            s1 * 13/32
            % OPENING:
            % COMMANDS:
            \time 13/32
            s1 * 13/32
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            % OPENING:
            % COMMANDS:
            \time 9/32
            s1 * 9/32
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
            \time 8/32
            s1 * 1/4
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #9.5
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            \startTextSpan
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 16/32
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
            % AFTER:
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
            \time 17/32
            s1 * 17/32
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #9.5
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"117" } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }
            \startTextSpan
            % OPENING:
            % COMMANDS:
            \time 9/32
            s1 * 9/32
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
            % AFTER:
            % SPANNER_STOPS:
            \stopTextSpan
            % OPENING:
            % COMMANDS:
            \time 9/32
            s1 * 9/32
            % OPENING:
            % COMMANDS:
            \time 14/32
            s1 * 7/16
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
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
            % COMMANDS:
            \bar "||"
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
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
                            % BEFORE:
                            % COMMANDS:
                            \set Staff.instrumentName = \markup \bold { Bass Clarinet }
                            \set Staff.shortInstrumentName = \markup \bold { b. cl. }
                            c'8.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'32
                            c'32
                            s1 * 9/32
                            s1 * 7/16
                            s1 * 1/4
                            s1 * 1/4
                            s1 * 3/8
                            c'16.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'16.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'32
                            c'32
                            c'16.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'16
                            c'32
                            c'32
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'32
                            c'32
                            c'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'4
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'8..
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'32
                            c'32
                            s1 * 13/32
                            s1 * 9/32
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            s1 * 1/4
                            s1 * 1/4
                            s1 * 1/2
                            s1 * 1/4
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            s1 * 17/32
                            s1 * 9/32
                            s1 * 1/4
                            s1 * 9/32
                            s1 * 7/16
                            s1 * 1/4
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
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
                            c'8.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'32
                            c'32
                            s1 * 9/32
                            s1 * 7/16
                            s1 * 1/4
                            s1 * 1/4
                            s1 * 3/8
                            c'16.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'16.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'32
                            c'32
                            c'16.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'16
                            c'32
                            c'32
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'32
                            c'32
                            c'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'4
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'8..
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'32
                            c'32
                            s1 * 13/32
                            s1 * 9/32
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            s1 * 1/4
                            s1 * 1/4
                            s1 * 1/2
                            s1 * 1/4
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            s1 * 17/32
                            s1 * 9/32
                            s1 * 1/4
                            s1 * 9/32
                            s1 * 7/16
                            s1 * 1/4
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \bold { Violoncello I }
                                    \set Staff.shortInstrumentName = \markup \bold { vc. I }
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'32
                                    c'32
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16
                                    c'32
                                    s1 * 7/16
                                    s1 * 1/4
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'32
                                    c'32
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16
                                    c'32
                                    c'16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'32
                                    c'32
                                    c'16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16
                                    c'32
                                    c'32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'32
                                    c'32
                                    c'16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'8..
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'32
                                    c'32
                                    s1 * 13/32
                                    s1 * 9/32
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/2
                                    s1 * 1/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    s1 * 17/32
                                    s1 * 9/32
                                    s1 * 1/4
                                    s1 * 9/32
                                    s1 * 7/16
                                    s1 * 1/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \bold { Violoncello II }
                                    \set Staff.shortInstrumentName = \markup \bold{ vc. II }
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'32
                                    c'32
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16
                                    c'32
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 11/9
                                    {
                                        c'16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        c'16
                                        r16
                                        c'16
                                        c'16
                                        c'16
                                        r16
                                        c'16
                                        c'16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'32
                                    c'32
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16
                                    c'32
                                    c'16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'32
                                    c'32
                                    c'16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16
                                    c'32
                                    c'32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'32
                                    c'32
                                    c'16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'8..
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'32
                                    c'32
                                    s1 * 13/32
                                    s1 * 9/32
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/2
                                    s1 * 1/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    s1 * 17/32
                                    s1 * 9/32
                                    s1 * 1/4
                                    s1 * 9/32
                                    s1 * 7/16
                                    s1 * 1/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
