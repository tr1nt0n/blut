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
            \time 4/8
            s1 * 1/2
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            - \markup { \right-align \abs-fontsize #15 { \upright "×5" } }
            % ABSOLUTE_BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            \set Score.repeatCommands = #'((volta "1 - 4"))
            % OPENING:
            % COMMANDS:
            \time 1/16
            s1 * 1/16
            % AFTER:
            % MARKUP:
            - \markup \huge \center-column { \musicglyph "scripts.ushortfermata" } 
            % COMMANDS:
            \bar ":|."
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \set Score.repeatCommands = #'((volta "5"))
            % OPENING:
            % COMMANDS:
            \time 15/8
            s1 * 15/8
            % AFTER:
            % COMMANDS:
            \set Score.repeatCommands = #'((volta #f))
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"117" } }
            % OPENING:
            % COMMANDS:
            \time 10/8
            s1 * 5/4
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            % OPENING:
            % COMMANDS:
            \time 4/8
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }
            % OPENING:
            % COMMANDS:
            \time 1/8
            s1 * 1/8
            % OPENING:
            % COMMANDS:
            \time 8/8
            s1 * 1
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }
            % OPENING:
            % COMMANDS:
            \time 2/8
            s1 * 1/4
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            % OPENING:
            % COMMANDS:
            \time 15/8
            s1 * 15/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }
            % ABSOLUTE_BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 1/16
            s1 * 1/16
            % AFTER:
            % MARKUP:
            - \markup \huge \center-column { \musicglyph "scripts.ushortfermata" } 
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % OPENING:
            % COMMANDS:
            \time 2/8
            s1 * 1/4
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
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
                            % BEFORE:
                            % COMMANDS:
                            \set Staff.instrumentName = \markup \bold { Bass Clarinet }
                            \set Staff.shortInstrumentName = \markup \bold { b. cl. }
                            s1 * 1/2
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            s1 * 15/8
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \italic 4:3
                            % OPEN_BRACKETS:
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) (ly:make-duration 3 0))
                            \times 12/16
                            {
                                af'4
                                % AFTER:
                                % MARKUP:
                                ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two)) (lh . (thumb)) (rh . (two)))}
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \<
                                \glissando
                                % BEFORE:
                                % COMMANDS:
                                \once \override Dots.staff-position = #2
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                af'8..
                                % AFTER:
                                % ARTICULATIONS:
                                \fff
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                % OPENING:
                                % COMMANDS:
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                af'32
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            s1 * 5/4
                            af'4
                            % AFTER:
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two)) (lh . (thumb)) (rh . (two)))}
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            af'8..
                            % AFTER:
                            % ARTICULATIONS:
                            \ffff
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \>
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            af'32
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % STOP_BEAM:
                            ]
                            s1 * 5/8
                            s1 * 1/8
                            af'2
                            % AFTER:
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two)) (lh . (thumb)) (rh . (two)))}
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            af'4..
                            % AFTER:
                            % ARTICULATIONS:
                            \ffff
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \>
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            af'16
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            s1 * 1/4
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \italic 16:15
                            % OPEN_BRACKETS:
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 16 15) (ly:make-duration 3 0))
                            \times 15/16
                            {
                                af'1
                                % AFTER:
                                % MARKUP:
                                ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two)) (lh . (thumb)) (rh . (two)))}
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \<
                                \glissando
                                % BEFORE:
                                % COMMANDS:
                                \once \override Dots.staff-position = #2
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                af'2..
                                % AFTER:
                                % ARTICULATIONS:
                                \fffff
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                % OPENING:
                                % COMMANDS:
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                af'8
                                % AFTER:
                                % ARTICULATIONS:
                                \!
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
                            af'8
                            % AFTER:
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two)) (lh . (thumb)) (rh . (two)))}
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            af'16..
                            % AFTER:
                            % ARTICULATIONS:
                            \fffff
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \>
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            af'64
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % STOP_BEAM:
                            ]
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \italic 8:5
                            % OPEN_BRACKETS:
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
                                % BEFORE:
                                % COMMANDS:
                                \once \override Dots.staff-position = #2
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                e'''4..
                                % AFTER:
                                % ARTICULATIONS:
                                \mp
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
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
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
                            s1 * 1/2
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            r8.
                            % AFTER:
                            % COMMANDS:
                            \boxed-markup "Chinese Cymbal w/ triangle beater" 1
                            c'16
                            % AFTER:
                            % ARTICULATIONS:
                            \ppp
                            ^ \baca-circle-markup
                            ^ \stopped
                            r4
                            r16
                            c'16
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            r4.
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                            \times 5/6
                            {
                                r8
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                ^ \baca-circle-markup
                                ^ \stopped
                                r16
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                ^ \baca-circle-markup
                                ^ \stopped
                                r16
                            % CLOSE_BRACKETS:
                            }
                            r16
                            r4
                            r16
                            c'16
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            % SPANNER_STARTS:
                            ~
                            c'16
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            r16
                            c'4.
                            % AFTER:
                            % ARTICULATIONS:
                            \fff
                            % COMMANDS:
                            \boxed-markup "w/ bow" 1
                            r8
                            % AFTER:
                            % COMMANDS:
                            \boxed-markup "w/ triangle beater" 1
                            c'16
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            ^ \baca-circle-markup
                            ^ \stopped
                            r16
                            r16
                            c'16
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            r4
                            % OPEN_BRACKETS:
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 1))
                            \times 2/3
                            {
                                r8.
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                ^ \baca-circle-markup
                                ^ \stopped
                                r8
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                ^ \baca-circle-markup
                                ^ \stopped
                                r8
                            % CLOSE_BRACKETS:
                            }
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            r8
                            c'2
                            % AFTER:
                            % ARTICULATIONS:
                            \ffff
                            % COMMANDS:
                            \boxed-markup "w/ bow" 1
                            r8.
                            % AFTER:
                            % COMMANDS:
                            \boxed-markup "w/ triangle beater" 1
                            c'16
                            % AFTER:
                            % ARTICULATIONS:
                            \p
                            ^ \baca-circle-markup
                            ^ \stopped
                            r16
                            c'16
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            r8.
                            c'16
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            % OPEN_BRACKETS:
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                            \times 2/3
                            {
                                r16
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                ^ \baca-circle-markup
                                ^ \stopped
                                r16
                            % CLOSE_BRACKETS:
                            }
                            c'1
                            % AFTER:
                            % ARTICULATIONS:
                            \ffff
                            % COMMANDS:
                            \boxed-markup "w/ bow" 1
                            % OPEN_BRACKETS:
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) (ly:make-duration 4 0))
                            \times 4/7
                            {
                                r8
                                % AFTER:
                                % COMMANDS:
                                \boxed-markup "w/ triangle beater" 1
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                \mp
                                ^ \baca-circle-markup
                                ^ \stopped
                                r8
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                ^ \baca-circle-markup
                                ^ \stopped
                                r16
                            % CLOSE_BRACKETS:
                            }
                            c'1...
                            % AFTER:
                            % ARTICULATIONS:
                            \fffff
                            % COMMANDS:
                            \boxed-markup "w/ bow" 1
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            c'4
                            % AFTER:
                            % ARTICULATIONS:
                            \fffff
                            % COMMANDS:
                            \boxed-markup "w/ bow" 1
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \italic 8:5
                            % OPEN_BRACKETS:
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
                                \boxed-markup "Wooden Wind Chimes" 1
                                % BEFORE:
                                % COMMANDS:
                                \once \override Dots.staff-position = #2
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
                                \mp
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
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
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
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set Staff.instrumentName = \markup \bold { Violoncello I }
                                        \set Staff.shortInstrumentName = \markup \bold { vc. I }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \tweak style #'triangle
                                        g16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "legno trat., molto flaut. pont." } \hspace #0.5 }
                                        \startTextSpan
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \tweak style #'triangle
                                        bqs,16
                                        r16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        c16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        bqs,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \stopTextSpan
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
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "tenorvarC"
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % MARKUP:
                                    - \tweak padding #3
                                    - \markup \italic { Espressivo }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \<
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \upright "IV, vibrato moltissimo" } \hspace #0.5 }
                                    \startTextSpanOne
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 1))
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \ppp
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 5) (ly:make-duration 3 0))
                                    \times 5/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        \tweak style #'harmonic-mixed
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                        r16
                                        \tweak style #'harmonic-mixed
                                        fs'4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2
                                        \glissando
                                        - \tweak circled-tip ##t
                                        \<
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \pp
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STARTS:
                                    ~
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                        r16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 4 0))
                                    \times 6/7
                                    {
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2
                                        \glissando
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fs'4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \fff
                                        % START_BEAM:
                                        [
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "1/2 scratch" } \hspace #0.5 }
                                        \startTextSpanTwo
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STARTS:
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanTwo
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \pp
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'harmonic-mixed
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    fs'16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    r16
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) (ly:make-duration 4 0))
                                    \times 4/7
                                    {
                                        \tweak style #'harmonic-mixed
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2
                                        \glissando
                                        - \tweak circled-tip ##t
                                        \<
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \p
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 3) (ly:make-duration 3 0))
                                    \times 3/5
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        \tweak style #'triangle
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                        r8
                                        \tweak style #'harmonic-mixed
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2
                                        \glissando
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \ffff
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \upright "1/2 scratch" } \hspace #0.5 }
                                    \startTextSpanTwo
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 10) (ly:make-duration 4 0))
                                    \times 10/13
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanTwo
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \p
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                                    \times 4/5
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        fs'16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        r16
                                        \tweak style #'harmonic-mixed
                                        fs'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2
                                        \glissando
                                        - \tweak circled-tip ##t
                                        \<
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'triangle
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \mp
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanOne
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \tweak style #'triangle
                                        dqf16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "legno trat., molto flaut. pont." } \hspace #0.5 }
                                        \startTextSpan
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        r16
                                        \tweak style #'triangle
                                        fqs16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 3) (ly:make-duration 3 0))
                                    \times 3/5
                                    {
                                        r16
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "tenorvarC"
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \ffff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "1/2 scratch" } \hspace #0.5 }
                                        \startTextSpanTwo
                                        - \tweak padding #9.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "IV, vibrato moltissimo" } \hspace #0.5 }
                                        \startTextSpanOne
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        \tweak style #'harmonic-mixed
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                        r8
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        \tweak style #'harmonic-mixed
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanTwo
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \mp
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    r16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    r16
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \fffff
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \upright "1/2 scratch" } \hspace #0.5 }
                                    \startTextSpanTwo
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 6) (ly:make-duration 4 0))
                                    \times 6/11
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        \tweak style #'harmonic-mixed
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                        r16
                                        \tweak style #'harmonic-mixed
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2
                                        \glissando
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak style #'harmonic-mixed
                                    fs'8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'harmonic-mixed
                                    fs'8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STARTS:
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'triangle
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    r16
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                                    \times 4/5
                                    {
                                        r8
                                        \tweak style #'harmonic-mixed
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fs'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                    \times 6/5
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        fs'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
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
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                                    \times 4/5
                                    {
                                        fs'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \fffff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "1/2 scratch" } \hspace #0.5 }
                                        \startTextSpanTwo
                                        - \tweak padding #8
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "IV, vibrato moltissimo" } \hspace #0.5 }
                                        \startTextSpanOne
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        \tweak style #'harmonic-mixed
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic 8:5
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 5) (ly:make-duration 3 0))
                                    \times 10/16
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
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
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        <c, f'>4..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
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
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
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
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                                    \times 4/5
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set Staff.instrumentName = \markup \bold { Violoncello II }
                                        \set Staff.shortInstrumentName = \markup \bold{ vc. II }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \tweak style #'triangle
                                        fqs8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "legno trat., molto flaut. pont." } \hspace #0.5 }
                                        \startTextSpan
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \tweak style #'triangle
                                        c8
                                        \tweak style #'triangle
                                        fqs8
                                        r8
                                        \tweak style #'triangle
                                        dqf8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \stopTextSpan
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
                                    s1 * 15/8
                                    d,4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \fff
                                    % SPANNER_STARTS:
                                    - \tweak padding #3.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "IV, trem. pont." } \hspace #0.5 }
                                    \startTextSpan
                                    s1 * 5/4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    c,2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \ffff
                                    % SPANNER_STARTS:
                                    - \tweak padding #3.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "IV, trem. pont." } \hspace #0.5 }
                                    \startTextSpan
                                    s1 * 5/8
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 5 0))
                                    \times 4/5
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \tweak style #'triangle
                                        g32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "legno trat., molto flaut. pont." } \hspace #0.5 }
                                        \startTextSpan
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \tweak style #'triangle
                                        bqs,32
                                        \tweak style #'triangle
                                        g32
                                        r32
                                        \tweak style #'triangle
                                        bqs,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    d,1
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \ffff
                                    % SPANNER_STARTS:
                                    - \tweak padding #3.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "IV, trem. pont." } \hspace #0.5 }
                                    \startTextSpan
                                    s1 * 1/4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    c,1...
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \fffff
                                    % SPANNER_STARTS:
                                    - \tweak padding #3.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "IV, trem. pont." } \hspace #0.5 }
                                    \startTextSpan
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    d,4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \fffff
                                    % MARKUP:
                                    ^ \markup \upright { "IV, trem. pont." }
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic 8:5
                                    % OPEN_BRACKETS:
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
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        <c, a'>4..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
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
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
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
