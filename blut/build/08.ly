    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % OPENING:
            % COMMANDS:
            \time 12/16
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 15/16
            s1 * 15/16
            % OPENING:
            % COMMANDS:
            \time 9/16
            s1 * 9/16
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 13/20
            s1 * 13/20
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"117" } }
            % OPENING:
            % COMMANDS:
            \time 13/16
            s1 * 13/16
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 16/14
            s1 * 8/7
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 17/18
            s1 * 17/18
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 9/10
            s1 * 9/10
            % OPENING:
            % COMMANDS:
            \time 9/16
            s1 * 9/16
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"140" } }
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 14/10
            s1 * 7/5
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 12/11
            s1 * 12/11
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 15/14
            s1 * 15/14
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 11/12
            s1 * 11/12
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 13/18
            s1 * 13/18
            % OPENING:
            % COMMANDS:
            \time 16/16
            s1 * 1
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"140" } }
            % OPENING:
            % COMMANDS:
            \time 10/16
            s1 * 5/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }
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
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \staff-line-count 5
                            % BEFORE:
                            % COMMANDS:
                            \set Staff.instrumentName = \markup \bold { Bass Clarinet }
                            \set Staff.shortInstrumentName = \markup \bold { b. cl. }
                            \textSpannerDown
                            \vibrato #'(1 1 4 2 1 1.5 1.5 3 3.5 2 0.5 0.2 0.1 1 2) #1.25  #0.2
                            % OPENING:
                            % COMMANDS:
                            \clef "treble"
                            af2.
                            % AFTER:
                            % ARTICULATIONS:
                            \ppp
                            % SPANNER_STARTS:
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            \startTextSpan
                            - \tweak stencil #constante-hairpin
                            \<
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \vibrato #'(5 1 5 0.2 5 8 15 8 3 1 0.5 0.2 0) #2  #0.2
                            ef2...
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTrillSpan
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \vibrato #'(14 0.5 1 5 6 3 6) #3.2  #0.2
                            e'4.
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTrillSpan
                            % SPANNER_STARTS:
                            ~
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            e'8.
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % SPANNER_STOPS:
                            \stopTextSpan
                            % COMMANDS:
                            \textSpannerUp
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5
                            {
                                ef2.
                                % AFTER:
                                % ARTICULATIONS:
                                \ffff
                                % SPANNER_STOPS:
                                \stopTrillSpan
                                % SPANNER_STARTS:
                                - \tweak padding #3.5
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                                \startTextSpan
                                - \tweak stencil #constante-hairpin
                                \<
                                ~
                                ef16
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % SPANNER_STOPS:
                                \stopTextSpan
                            % CLOSE_BRACKETS:
                            }
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(0.5 1 0.5 2 0.5 1 0.5 2.5 0.5 0.5 0.5 1 0.2) #5.31  #0.2
                            bf4..
                            % AFTER:
                            % ARTICULATIONS:
                            \ppp
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
                            bf8
                            % AFTER:
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            ~
                            bf8
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
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
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/7
                            {
                                af\breve
                                % AFTER:
                                % ARTICULATIONS:
                                \ffff
                                % SPANNER_STARTS:
                                - \tweak padding #3.5
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                                \startTextSpan
                                - \tweak stencil #constante-hairpin
                                \<
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 8/9
                            {
                                ef1
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                                ef16
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5
                            {
                                e'1
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                                e'8
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % SPANNER_STOPS:
                                \stopTextSpan
                            % CLOSE_BRACKETS:
                            }
                            s1 * 9/16
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5
                            {
                                e'1..
                                % AFTER:
                                % ARTICULATIONS:
                                \p
                                % SPANNER_STARTS:
                                - \tweak padding #3.5
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "air" } \hspace #0.5 }
                                - \tweak bound-details.right.text \markup \upright { overblow }
                                \startTextSpan
                                \<
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 8/11
                            {
                                ef1.
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/7
                            {
                                bf1...
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                af1
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                                af4.
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 8/9
                            {
                                ef2.
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                                ef16
                                % AFTER:
                                % ARTICULATIONS:
                                \ffff
                                % SPANNER_STOPS:
                                \stopTextSpan
                            % CLOSE_BRACKETS:
                            }
                            af'2..
                            % AFTER:
                            % ARTICULATIONS:
                            \sfp
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two)) (lh . (thumb)) (rh . (two)))}
                            % SPANNER_STARTS:
                            \<
                            \glissando
                            ~
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            af'16
                            % AFTER:
                            % START_BEAM:
                            [
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            af'16
                            % AFTER:
                            % ARTICULATIONS:
                            \f
                            % STOP_BEAM:
                            ]
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 5) (ly:make-duration 3 0))
                            \times 10/16
                            {
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                e'''!2
                                % AFTER:
                                % MARKUP:
                                ^ \markup \center-align { \concat { E\raise #0.5 { \teeny \flat } +42 } }
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \<
                                \glissando
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                e'''4..
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                % OPENING:
                                % COMMANDS:
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                e'''16
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                            % CLOSE_BRACKETS:
                            }
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
                            \staff-line-count 2
                            % BEFORE:
                            % COMMANDS:
                            \set Staff.instrumentName = \markup \bold { Percussions }
                            \set Staff.shortInstrumentName = \markup \bold { perc. }
                            % OPENING:
                            % COMMANDS:
                            \clef "percussion"
                            s1 * 3/4
                            s1 * 15/16
                            s1 * 9/16
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5
                            {
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
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \!
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            s1 * 13/16
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/7
                            {
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \fff
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                - \tweak stencil #constante-hairpin
                                \<
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 8/9
                            {
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5
                            {
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \!
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) (ly:make-duration 4 0))
                            \times 9/8
                            {
                                % ABSOLUTE_BEFORE:
                                % COMMANDS:
                                \staff-line-count 1
                                % OPENING:
                                % COMMANDS:
                                \clef "percussion"
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                \fff
                                % SPANNER_STARTS:
                                - \tweak padding #7
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "pizz." } \hspace #0.5 }
                                \startTextSpan
                                % COMMANDS:
                                \boxed-markup "Lion's Roar" 1
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                c'8
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                % SPANNER_STOPS:
                                \stopTextSpan
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5
                            {
                                % ABSOLUTE_BEFORE:
                                % COMMANDS:
                                \staff-line-count 2
                                % OPENING:
                                % COMMANDS:
                                \clef "percussion"
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \p
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                \<
                                % COMMANDS:
                                \boxed-markup "Frame Drum + Slit Drum w/ drum sticks" 1
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 8/11
                            {
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/7
                            {
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 8/9
                            {
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \ffff
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \staff-line-count 1
                            % OPENING:
                            % COMMANDS:
                            \clef "percussion"
                            c'2..
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % ARTICULATIONS:
                            \sfp
                            % SPANNER_STARTS:
                            \<
                            \glissando
                            ~
                            % COMMANDS:
                            \boxed-markup "Slit Drum w/ rubber mallets" 1
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % START_BEAM:
                            [
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \f
                            % STOP_BEAM:
                            ]
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 5) (ly:make-duration 3 0))
                            \times 10/16
                            {
                                c'2
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \<
                                \glissando
                                % COMMANDS:
                                \boxed-markup "Stone Wind Chimes" 1
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                c'4..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % ARTICULATIONS:
                                \f
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                % OPENING:
                                % COMMANDS:
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                c'16
                                % AFTER:
                                % STEM_TREMOLOS:
                                :128
                                % ARTICULATIONS:
                                \!
                            % CLOSE_BRACKETS:
                            }
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
                                    s1 * 3/4
                                    s1 * 15/16
                                    s1 * 9/16
                                    s1 * 13/20
                                    s1 * 13/16
                                    s1 * 8/7
                                    s1 * 17/18
                                    s1 * 9/10
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic-mixed
                                    cqs'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fff
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak padding #9.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                    \startTextSpan
                                    \tweak style #'harmonic-mixed
                                    a''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic-mixed
                                    cqs'''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    c,8.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "IV" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic-mixed
                                    a''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % START_BEAM:
                                    [
                                    \tweak style #'harmonic-mixed
                                    cqs'''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic-mixed
                                    c'16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    s1 * 7/5
                                    s1 * 12/11
                                    s1 * 15/14
                                    s1 * 11/12
                                    s1 * 13/18
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    bf2..
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \sfp
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "II" \upright "+41" }
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    \<
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "scratch" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "flaut." } \hspace #0.5 }\startTextSpanTwo
                                    - \tweak padding #13
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \upright "molto pont." } \hspace #0.5 }
                                    \startTextSpanOne
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 5) (ly:make-duration 3 0))
                                    \times 10/16
                                    {
                                        <
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            c,
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                            ff'!
                                        >2
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "+50" }
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #10
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "III + IV" } \hspace #0.5 }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        <c, f'>4..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <c, f'>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
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
                                    s1 * 3/4
                                    s1 * 15/16
                                    s1 * 9/16
                                    s1 * 13/20
                                    s1 * 13/16
                                    s1 * 8/7
                                    s1 * 17/18
                                    s1 * 9/10
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 9) (ly:make-duration 4 0))
                                    \times 9/7
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \staff-line-count 5
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \fff
                                        % MARKUP:
                                        ^ \markup \upright { "I" }
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #9.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                        \startTextSpan
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        c'''16
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        gqs'''16
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \revert Staff.Stem.stemlet-length
                                        c,8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "IV" }
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    s1 * 7/5
                                    s1 * 12/11
                                    s1 * 15/14
                                    s1 * 11/12
                                    s1 * 13/18
                                    b,2..
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \sfp
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "III" \upright "+55" }
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    \<
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #11.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "scratch" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "flaut." } \hspace #0.5 }\startTextSpanTwo
                                    - \tweak padding #13.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \upright "molto pont." } \hspace #0.5 }
                                    \startTextSpanOne
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    b,16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    b,16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 5) (ly:make-duration 3 0))
                                    \times 10/16
                                    {
                                        <
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            c,
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                                            af'!
                                        >2
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "-31" }
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #10
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "III + IV" } \hspace #0.5 }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        <c, a'>4..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <c, a'>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
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
