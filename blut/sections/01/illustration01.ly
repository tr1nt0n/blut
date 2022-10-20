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
                            r4
                            % OPEN_BRACKETS:
                            \times 4/5
                            {
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 0
                                \set stemRightBeamCount = 1
                                \textSpannerDown
                                \vibrato #'(0 1 1 1 2 9) #1  #0.2
                                ef8
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                - \tweak stencil #abjad-flared-hairpin
                                \<
                                - \tweak padding #10
                                - \abjad-dashed-line-with-up-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                \startTextSpan
                                \glissando
                                % TRILL_SPANNER_STARTS:
                                \startTrillSpan
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 3
                                \set stemRightBeamCount = 0
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                ef32
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % SPANNER_STOPS:
                                \stopTextSpan
                                \stopTrillSpan
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                \textSpannerUp
                            % CLOSE_BRACKETS:
                            }
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            r4
                            r16
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 10/13
                            {
                                % BEFORE:
                                % COMMANDS:
                                \textSpannerDown
                                \vibrato #'(0 1 1 1 2 9) #1  #0.2
                                ef4
                                % AFTER:
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                - \tweak stencil #abjad-flared-hairpin
                                \<
                                - \tweak padding #10
                                - \abjad-dashed-line-with-up-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                \startTextSpan
                                \glissando
                                ~
                                % TRILL_SPANNER_STARTS:
                                \startTrillSpan
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 0
                                \set stemRightBeamCount = 2
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                ef16.
                                % AFTER:
                                % START_BEAM:
                                [
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 0
                                % OPENING:
                                % COMMANDS:
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                ef16
                                % AFTER:
                                % ARTICULATIONS:
                                \mp
                                % SPANNER_STOPS:
                                \stopTextSpan
                                \stopTrillSpan
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                \textSpannerUp
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
                            \times 8/13
                            {
                                % BEFORE:
                                % COMMANDS:
                                \textSpannerDown
                                \vibrato #'(0 1 1 1 2 9) #1  #0.2
                                ef8.
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                - \tweak stencil #abjad-flared-hairpin
                                \<
                                - \tweak padding #10
                                - \abjad-dashed-line-with-up-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                \startTextSpan
                                \glissando
                                % TRILL_SPANNER_STARTS:
                                \startTrillSpan
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                ef64
                                % AFTER:
                                % ARTICULATIONS:
                                \p
                                % SPANNER_STOPS:
                                \stopTextSpan
                                \stopTrillSpan
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                \textSpannerUp
                            % CLOSE_BRACKETS:
                            }
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            r2..
                            r4
                            r8
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 0
                            \set stemRightBeamCount = 1
                            \textSpannerDown
                            \vibrato #'(0 1 1 1 2 9) #1  #0.2
                            ef8
                            % AFTER:
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            \startTextSpan
                            \glissando
                            ~
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            ef8
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            ef8
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTrillSpan
                            % STOP_BEAM:
                            ]
                            % COMMANDS:
                            \textSpannerUp
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(0 1 1 1 2 9) #1  #0.2
                            ef4.
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTrillSpan
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            \startTextSpan
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % COMMANDS:
                            \textSpannerUp
                            s1 * 3/4
                            % AFTER:
                            % ARTICULATIONS:
                            \f
                            % COMMANDS:
                            \stopTextSpan
                            \stopTextSpan
                            \stopTrillSpan
                            \stopTrillSpan
                            s1 * 11/8
                            % OPEN_BRACKETS:
                            \times 2/3
                            {
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 0
                                \set stemRightBeamCount = 2
                                \textSpannerDown
                                \vibrato #'(1 1 1 7 2 1 1) #0.75  #0.2
                                ef16
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \<
                                - \tweak padding #10
                                - \abjad-dashed-line-with-up-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                \startTextSpan
                                \glissando
                                % TRILL_SPANNER_STARTS:
                                \startTrillSpan
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 0
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                ef8
                                % AFTER:
                                % ARTICULATIONS:
                                \p
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % STOP_BEAM:
                                ]
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                % COMMANDS:
                                \textSpannerUp
                            % CLOSE_BRACKETS:
                            }
                            r2..
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % SPANNER_STOPS:
                            \stopTrillSpan
                            r4
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \textSpannerDown
                            \vibrato #'(1 7 2 5 4 3 1 7) #3.25  #0.2
                            bf8
                            % AFTER:
                            % ARTICULATIONS:
                            \p
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
                            \vibrato #'(1 7 2 5 4 3 1 7) #3.25  #0.2
                            bf4.
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTrillSpan
                            % SPANNER_STARTS:
                            ~
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 0
                            \set stemRightBeamCount = 1
                            bf8
                            % AFTER:
                            % START_BEAM:
                            [
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            \vibrato #'(1 7 2 5 4 3 1 7) #3.25  #0.2
                            af8
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTrillSpan
                            % STOP_BEAM:
                            ]
                            % SPANNER_STARTS:
                            ~
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            af4
                            ef2.
                            % BEFORE:
                            % COMMANDS:
                            \vibrato #'(1 7 2 5 4 3 1 7) #3.25  #0.2
                            e'2.
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTrillSpan
                            % SPANNER_STARTS:
                            ~
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 0
                            \set stemRightBeamCount = 1
                            e'8
                            % AFTER:
                            % START_BEAM:
                            [
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \vibrato #'(1 7 2 5 4 3 1 7) #3.25  #0.2
                            ef8
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTrillSpan
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
                            bf8
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            \vibrato #'(1 7 2 5 4 3 1 7) #3.25  #0.2
                            af8
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTrillSpan
                            % STOP_BEAM:
                            ]
                            % SPANNER_STARTS:
                            ~
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            af2
                            ef4
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTrillSpan
                            % COMMANDS:
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
                            r4
                            % AFTER:
                            % COMMANDS:
                            \boxed-markup "Lion`s Roar" 1
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \italic 5:4
                            % OPEN_BRACKETS:
                            \times 4/5
                            {
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 0
                                \set stemRightBeamCount = 1
                                c'8
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                - \tweak stencil #abjad-flared-hairpin
                                \<
                                \glissando
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 3
                                \set stemRightBeamCount = 0
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                c'32
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % STOP_BEAM:
                                ]
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
                            r4.
                            r16
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \italic 4:3
                            % OPEN_BRACKETS:
                            \times 3/4
                            {
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 0
                                \set stemRightBeamCount = 1
                                c'8.
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                - \tweak stencil #abjad-flared-hairpin
                                \<
                                \glissando
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 0
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                \mp
                                % STOP_BEAM:
                                ]
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
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \italic 13:8
                            % OPEN_BRACKETS:
                            \times 8/13
                            {
                                c'8.
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                - \tweak stencil #abjad-flared-hairpin
                                \<
                                \glissando
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                c'64
                                % AFTER:
                                % ARTICULATIONS:
                                \p
                                % STOP_BEAM:
                                ]
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
                            r2..
                            c'2
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            \glissando
                            ~
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 0
                            \set stemRightBeamCount = 1
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            c'8
                            % AFTER:
                            % START_BEAM:
                            [
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
                            % STOP_BEAM:
                            ]
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            c'4.
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            s1 * 3/4
                            % AFTER:
                            % ARTICULATIONS:
                            \f
                            s1 * 11/8
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \italic 3:2
                            % OPEN_BRACKETS:
                            \times 2/3
                            {
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 0
                                \set stemRightBeamCount = 2
                                c'16
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \<
                                \glissando
                                % BEFORE:
                                % COMMANDS:
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 0
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                \p
                                % STOP_BEAM:
                                ]
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            r2
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \italic 24:19
                            % OPEN_BRACKETS:
                            \times 57/72
                            {
                                c'1
                                % AFTER:
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
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                c'\breve
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            s1 * 9/8
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            s1 * 1
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
                                    \times 12/13
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set Staff.instrumentName = \markup \bold { Violoncello I }
                                        \set Staff.shortInstrumentName = \markup \bold { vc. I }
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >4.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        - \tweak padding #13.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide trem. tast." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight trem. pont. }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >32
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :256
                                        % ARTICULATIONS:
                                        \f
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
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 10/13
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >2.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "sim." } \hspace #0.5 }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % ARTICULATIONS:
                                        \mp
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
                                    % OPEN_BRACKETS:
                                    \times 8/13
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >8.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        - \tweak padding #16
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "sim." } \hspace #0.5 }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >64
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :512
                                        % ARTICULATIONS:
                                        \p
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
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >1.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "sim." } \hspace #0.5 }
                                    \startTextSpan
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
                                    % OPEN_BRACKETS:
                                    \times 8/11
                                    {
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >128
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \f
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \pp
                                        % SPANNER_STARTS:
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        fs'64
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 12/13
                                    {
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >8.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #16
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight }
                                        \startTextSpan
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >64
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :512
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/10
                                    {
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >128
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \sfz
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \pp
                                        % SPANNER_STARTS:
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        fs'128
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 12/13
                                    {
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >8.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #16
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight }
                                        \startTextSpan
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >64
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :512
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/12
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \sfz
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        e'8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        e'32.
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 12/13
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >8.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        % ARTICULATIONS:
                                        \ff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #16.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "tight" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { wide }
                                        \startTextSpan
                                        \>
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >64
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :512
                                        % ARTICULATIONS:
                                        \mp
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        e'8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/11
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >8...
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \mf
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \>
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \pp
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    <
                                        fs'
                                        \tweak style #'harmonic
                                        b'
                                    >16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \sfz
                                    % START_BEAM:
                                    [
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \sfz
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/11
                                    {
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >2
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        \glissando
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >8
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \fff
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    <
                                        gqs'
                                        \tweak style #'harmonic
                                        cqs''
                                    >8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \(
                                    gqs'16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    gqs'16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \times 8/12
                                    {
                                        <
                                            gqs'
                                            \tweak style #'harmonic
                                            cqs''
                                        >8
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #16.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "tight" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { wide }
                                        \startTextSpan
                                        \<
                                        \glissando
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        <
                                            gqs'
                                            \tweak style #'harmonic
                                            cqs''
                                        >32.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :256
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            gqs'
                                            \tweak style #'harmonic
                                            cqs''
                                        >64
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :512
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    <
                                        fs'
                                        \tweak style #'harmonic
                                        b'
                                    >8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \mp
                                    % START_BEAM:
                                    [
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    fs'8.
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 9/13
                                    {
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >2.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        - \tweak padding #11.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "molto tast." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { molto pont. }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    s1 * 3/8
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 20/27
                                    {
                                        <
                                            gqs'
                                            \tweak style #'harmonic
                                            cqs''
                                        >8...
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        gqs'8.
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/11
                                    {
                                        <
                                            gqs'
                                            \tweak style #'harmonic
                                            cqs''
                                        >8
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        % ARTICULATIONS:
                                        - \accent
                                        \ff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #16.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight }
                                        \startTextSpan
                                        \glissando
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        <
                                            gqs'
                                            \tweak style #'harmonic
                                            cqs''
                                        >32
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :256
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            gqs'
                                            \tweak style #'harmonic
                                            cqs''
                                        >64
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :512
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/11
                                    {
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \sfz
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        fs'8...
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/13
                                    {
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >8.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #16
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "tight" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { wide }
                                        \startTextSpan
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >64
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :512
                                        % ARTICULATIONS:
                                        \ff
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/10
                                    {
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fs'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \pp
                                        % SPANNER_STARTS:
                                        \<
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        fs'64
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 10/13
                                    {
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >4.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        \fff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        - \tweak padding #12
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight tast. }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >32
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :256
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/12
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        e'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        e'32.
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 10/13
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >4.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        \sff
                                        % SPANNER_STARTS:
                                        - \tweak padding #12
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight tast. }
                                        \startTextSpan
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >32
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :256
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        \mf
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        e'4.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/11
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >2
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #12.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide tast." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight pont. }
                                        \startTextSpan
                                        \glissando
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >8
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        % START_BEAM:
                                        [
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % ARTICULATIONS:
                                        \fff
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    <
                                        fs'
                                        \tweak style #'harmonic
                                        b'
                                    >32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \(
                                    \>
                                    fs'32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 20/33
                                    {
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >4...
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        - \tweak padding #10.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "tast." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { pont. }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >32.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        <
                                            gqs'
                                            \tweak style #'harmonic
                                            cqs''
                                        >16.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :256
                                        % ARTICULATIONS:
                                        \ppp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \<
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        gqs'16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % ARTICULATIONS:
                                        \p
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \>
                                    % CLOSE_BRACKETS:
                                    }
                                    <
                                        gqs'
                                        \tweak style #'harmonic
                                        cqs''
                                    >8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \pp
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    <
                                        gqs'
                                        \tweak style #'harmonic
                                        cqs''
                                    >32.
                                    <
                                        gqs'
                                        \tweak style #'harmonic
                                        cqs''
                                    >64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >16.
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        fs'8
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    r16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    r4..
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
                                    r16
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 0
                                    \set stemRightBeamCount = 2
                                    <
                                        d'
                                        \tweak style #'harmonic
                                        g'
                                    >16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    - \tweak padding #13.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "wide trem. tast." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { tight trem. pont. }
                                    \startTextSpan
                                    \glissando
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    <
                                        d'
                                        \tweak style #'harmonic
                                        g'
                                    >8..
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 0
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <
                                        d'
                                        \tweak style #'harmonic
                                        g'
                                    >32
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :256
                                    % ARTICULATIONS:
                                    \f
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    r4.
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        <
                                            d'
                                            \tweak style #'harmonic
                                            g'
                                        >4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "sim." } \hspace #0.5 }
                                        \startTextSpan
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 0
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            d'
                                            \tweak style #'harmonic
                                            g'
                                        >16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % ARTICULATIONS:
                                        \mp
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
                                    % OPEN_BRACKETS:
                                    \times 8/13
                                    {
                                        <
                                            d'
                                            \tweak style #'harmonic
                                            g'
                                        >8.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        - \tweak padding #16
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "sim." } \hspace #0.5 }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            d'
                                            \tweak style #'harmonic
                                            g'
                                        >64
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :512
                                        % ARTICULATIONS:
                                        \p
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
                                    r4.
                                    <
                                        d'
                                        \tweak style #'harmonic
                                        g'
                                    >1
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "sim." } \hspace #0.5 }
                                    \startTextSpan
                                    \glissando
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 0
                                    \set stemRightBeamCount = 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    <
                                        d'
                                        \tweak style #'harmonic
                                        g'
                                    >8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 0
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <
                                        d'
                                        \tweak style #'harmonic
                                        g'
                                    >8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    <
                                        d'
                                        \tweak style #'harmonic
                                        g'
                                    >4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
                                    s1 * 3/4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    r4.
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 10/13
                                    {
                                        <
                                            fqs'
                                            \tweak style #'harmonic
                                            bqf'
                                        >2.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "trem. tight tast." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { trem. wide pont. }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            fqs'
                                            \tweak style #'harmonic
                                            bqf'
                                        >16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % ARTICULATIONS:
                                        \fff
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    r4.
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >16.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \sfz
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        e'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 12/13
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >8.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #15.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide tast." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight pont. }
                                        \startTextSpan
                                        \<
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >64
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :512
                                        % ARTICULATIONS:
                                        \f
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    r8
                                    r8
                                    % OPEN_BRACKETS:
                                    \times 8/11
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \sff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \glissando
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >32
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        e'64
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/11
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >32
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :256
                                        % SPANNER_STARTS:
                                        - \tweak padding #11.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "tight pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { wide molto tast. }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
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
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    s1 * 3/8
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >16.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \ff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            d'
                                            \tweak style #'harmonic
                                            g'
                                        >8
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/13
                                    {
                                        d'8.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        - \tweak padding #15.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            d'
                                            \tweak style #'harmonic
                                            g'
                                        >64
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :512
                                        % ARTICULATIONS:
                                        \ff
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/9
                                    {
                                        <
                                            d'
                                            \tweak style #'harmonic
                                            g'
                                        >8
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #10.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "tast." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { molt pont. }
                                        \startTextSpan
                                        \glissando
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        <
                                            d'
                                            \tweak style #'harmonic
                                            g'
                                        >32
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            d'
                                            \tweak style #'harmonic
                                            g'
                                        >8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/11
                                    {
                                        d'8
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        % ARTICULATIONS:
                                        \p
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #15.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight }
                                        \startTextSpan
                                        \<
                                        \glissando
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        d'32
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :256
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            d'
                                            \tweak style #'harmonic
                                            g'
                                        >64
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :512
                                        % ARTICULATIONS:
                                        \mf
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/11
                                    {
                                        <
                                            d'
                                            \tweak style #'harmonic
                                            g'
                                        >32.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        \mp
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >4...
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \sfz
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/13
                                    {
                                        e'4.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        \mp
                                        % SPANNER_STARTS:
                                        - \tweak padding #11.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide molto tast." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { wide molto pont. }
                                        \startTextSpan
                                        \<
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >32
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :256
                                        % ARTICULATIONS:
                                        - \staccato
                                        \f
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/10
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        <
                                            fqs'
                                            \tweak style #'harmonic
                                            bqf'
                                        >2
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            fqs'
                                            \tweak style #'harmonic
                                            bqf'
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \pp
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 10/13
                                    {
                                        fqs'2.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        \mf
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        - \tweak padding #11.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide molto pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight molto tast. }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            fqs'
                                            \tweak style #'harmonic
                                            bqf'
                                        >16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    r8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    r4
                                    s1 * 1
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
