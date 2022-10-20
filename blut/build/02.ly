    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % OPENING:
            % COMMANDS:
            \time 9/16
            s1 * 9/16
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 13/20
            s1 * 13/20
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
            \time 10/16
            s1 * 5/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 11/20
            s1 * 11/20
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 9/14
            s1 * 9/14
            % OPENING:
            % COMMANDS:
            \time 7/16
            s1 * 7/16
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
                            \textSpannerDown
                            \vibrato #'(8 1 7 5 3 1.5 1.25 1 0.5 0) #3.25  #0.2
                            ef4.
                            % AFTER:
                            % ARTICULATIONS:
                            \p
                            % SPANNER_STARTS:
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            \startTextSpan
                            - \tweak stencil #constante-hairpin
                            \<
                            ~
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            ef8.
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTextSpan
                            % COMMANDS:
                            \textSpannerUp
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \italic 5:4
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 16/20
                            {
                                e'2.
                                % AFTER:
                                % ARTICULATIONS:
                                \fff
                                % SPANNER_STOPS:
                                \stopTrillSpan
                                % SPANNER_STARTS:
                                - \tweak padding #10
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                                \startTextSpan
                                - \tweak stencil #constante-hairpin
                                \<
                                ~
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 0
                                e'16
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % SPANNER_STOPS:
                                \stopTextSpan
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 0
                            \set stemRightBeamCount = 1
                            \textSpannerDown
                            \vibrato #'(1 1 7 0 12 1 0.5 0) #2  #0.2
                            bf8.
                            % AFTER:
                            % ARTICULATIONS:
                            \ppp
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak padding #8
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            \startTextSpan
                            - \tweak stencil #constante-hairpin
                            \<
                            ~
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            bf8
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            bf8.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            bf8
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTrillSpan
                            % STOP_BEAM:
                            ]
                            % COMMANDS:
                            \textSpannerUp
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \italic 5:4
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 16/20
                            {
                                af2
                                % AFTER:
                                % ARTICULATIONS:
                                \fff
                                % SPANNER_STARTS:
                                - \tweak padding #7
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                                \startTextSpan
                                - \tweak stencil #constante-hairpin
                                \<
                                ~
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                af8.
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \italic 7:4
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 8/14
                            {
                                ef1
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                ef8
                                % AFTER:
                                % SPANNER_STOPS:
                                \stopTextSpan
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(0 0.25 0.5 0.75 1 1.25 1.5 7 12 15) #1.25  #0.2
                            e'4..
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            % SPANNER_STARTS:
                            - \tweak padding #9
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            \startTextSpan
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTrillSpan
                            % COMMANDS:
                            \stopStaff \startStaff
                            \textSpannerUp
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
                            % BEFORE:
                            % COMMANDS:
                            \set Staff.instrumentName = \markup \bold { Percussions }
                            \set Staff.shortInstrumentName = \markup \bold { perc. }
                            s1 * 9/16
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5
                            {
                                % ABSOLUTE_BEFORE:
                                % COMMANDS:
                                \staff-line-count 2
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 0
                                \set stemRightBeamCount = 2
                                % OPENING:
                                % COMMANDS:
                                \clef "percussion"
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \fff
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                - \tweak stencil #constante-hairpin
                                \<
                                % COMMANDS:
                                \boxed-markup "Frame Drum + Slit Drum w/ drum sticks" 1
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 0
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \!
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            s1 * 5/8
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5
                            {
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 0
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \fff
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                - \tweak stencil #constante-hairpin
                                \<
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/7
                            {
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 0
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \!
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            s1 * 7/16
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
                                    s1 * 9/16
                                    s1 * 13/20
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    s1 * 5/8
                                    s1 * 11/20
                                    s1 * 9/14
                                    s1 * 7/16
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
                                    s1 * 9/16
                                    s1 * 13/20
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    s1 * 5/8
                                    s1 * 11/20
                                    s1 * 9/14
                                    s1 * 7/16
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
