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
            % BEFORE:
            % COMMANDS:
            \set Score.repeatCommands = #'((volta "5"))
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #8.5
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \abs-fontsize #12 \upright { "Accel." } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"140" } }
            \startTextSpan
            % COMMANDS:
            \set Score.repeatCommands = #'((volta #f))
            % OPENING:
            % COMMANDS:
            \time 9/8
            s1 * 9/8
            % AFTER:
            % COMMANDS:
            \pageBreak
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 1/6
            s1 * 1/6
            % AFTER:
            % SPANNER_STOPS:
            \stopTextSpan
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 1/6
            s1 * 1/6
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 7/32
            s1 * 7/32
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
            - \markup \huge \center-column { \musicglyph "scripts.uveryshortfermata" } 
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % OPENING:
            % COMMANDS:
            \time 1/2
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 1/2
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 5/12
            s1 * 5/12
            % OPENING:
            % COMMANDS:
            \time 1/2
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 1/2
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 5/12
            s1 * 5/12
            % OPENING:
            % COMMANDS:
            \time 1/2
            s1 * 1/2
            % AFTER:
            % COMMANDS:
            \bar "||"
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
                            \vibrato #'(1 2 0.5 2 1 0.5 1) #2.25  #0.2
                            ef4.
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            \startTextSpan
                            ~
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            ef4
                            % BEFORE:
                            % COMMANDS:
                            \vibrato #'(0.5 2.5 0.5 2 1 3 1) #2  #0.2
                            bf2.
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTrillSpan
                            % SPANNER_STARTS:
                            ~
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            bf4.
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/6
                            {
                                % BEFORE:
                                % COMMANDS:
                                \vibrato #'(0.5 1 1.1 1.25 1.5 1.5 1.7 3 5 7) #2  #0.2
                                af4
                                % AFTER:
                                % SPANNER_STOPS:
                                \stopTrillSpan
                                % TRILL_SPANNER_STARTS:
                                \startTrillSpan
                            % CLOSE_BRACKETS:
                            }
                            % BEFORE:
                            % COMMANDS:
                            \vibrato #'(8.5 2 1 3 0.5 0.25 2 0.1 0.1) #1.8  #0.2
                            ef4
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTrillSpan
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/6
                            {
                                % BEFORE:
                                % COMMANDS:
                                \vibrato #'(0.1 0.2 0.5 0.7 1 1.5 2.5 3 3.5 8 4.5 5 6) #1.5  #0.2
                                e'4
                                % AFTER:
                                % SPANNER_STOPS:
                                \stopTrillSpan
                                % TRILL_SPANNER_STARTS:
                                \startTrillSpan
                            % CLOSE_BRACKETS:
                            }
                            % BEFORE:
                            % COMMANDS:
                            \vibrato #'(6 6.5 7 7.25 7 8 9) #1.3  #0.2
                            ef4
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTrillSpan
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \vibrato #'(9 15 9 17 9 12 9 8 7 17) #1  #0.2
                            bf8..
                            % AFTER:
                            % ARTICULATIONS:
                            \ffff
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTrillSpan
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % COMMANDS:
                            \textSpannerUp
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTrillSpan
                            % COMMANDS:
                            \stopStaff \startStaff
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(9 15 9 17 9 12 9 8 7 17) #1  #0.2
                            bf2
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            \ffff
                            % SPANNER_STARTS:
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            \startTextSpan
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            ef2
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            \mf
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTrillSpan
                            % SPANNER_STARTS:
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "slight overblow" } \hspace #0.5 }
                            \startTextSpan
                            % COMMANDS:
                            \textSpannerUp
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \one-eighth-flat-markup
                                a!4
                                % AFTER:
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                (
                                - \tweak circled-tip ##t
                                \<
                                \glissando
                                % COMMANDS:
                                \textSpannerUp
                                af!4
                                % AFTER:
                                % ARTICULATIONS:
                                \mf
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                \glissando
                                aqf!8
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % SPANNER_STOPS:
                                )
                            % CLOSE_BRACKETS:
                            }
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(9 15 9 17 9 12 9 8 7 17) #2  #0.2
                            bf2
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            \mf
                            % SPANNER_STARTS:
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            \startTextSpan
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            ef2
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            \ff
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTrillSpan
                            % SPANNER_STARTS:
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                            \startTextSpan
                            % COMMANDS:
                            \textSpannerUp
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \three-eighths-flat-markup
                                a!4
                                % AFTER:
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                (
                                - \tweak circled-tip ##t
                                \<
                                \glissando
                                % COMMANDS:
                                \textSpannerUp
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \one-eighth-flat-markup
                                a!4
                                % AFTER:
                                % ARTICULATIONS:
                                \mf
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                \glissando
                                af!8
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % SPANNER_STOPS:
                                )
                            % CLOSE_BRACKETS:
                            }
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(9 15 9 17 9 12 9 8 7 17) #4  #0.2
                            bf4..
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            \mf
                            % SPANNER_STARTS:
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
                            bf16
                            % AFTER:
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
                            c'8.
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            \<
                            c'16
                            c'16
                            c'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'8.
                            c'16
                            c'16
                            c'8.
                            c'16
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            c'4
                            c'16
                            % AFTER:
                            % START_BEAM:
                            [
                            c'16
                            c'8.
                            c'16
                            c'16
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                % ABSOLUTE_BEFORE:
                                % COMMANDS:
                                \staff-line-count 2
                                % OPENING:
                                % COMMANDS:
                                \clef "percussion"
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % START_BEAM:
                                [
                                % COMMANDS:
                                \boxed-markup "Frame + Slit w/ sticks" 1
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
                            c'4
                            % AFTER:
                            % COMMANDS:
                            \boxed-markup "bow Cymbal" 1
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 8/9
                            {
                                % ABSOLUTE_BEFORE:
                                % COMMANDS:
                                \staff-line-count 2
                                % OPENING:
                                % COMMANDS:
                                \clef "percussion"
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % START_BEAM:
                                [
                                % COMMANDS:
                                \boxed-markup "Frame + Slit w/ sticks" 1
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
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
                            c'4
                            % AFTER:
                            % ARTICULATIONS:
                            \ffff
                            % COMMANDS:
                            \boxed-markup "bow Cymbal" 1
                            s1 * 7/32
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            c'2
                            % AFTER:
                            % ARTICULATIONS:
                            \mf
                            % COMMANDS:
                            \boxed-markup "Lion's Roar" 1
                            c'4..
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            % COMMANDS:
                            \boxed-markup "Slit Drum w/ rubber mallets" 1
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
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \ff
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
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
                                \mf
                                % START_BEAM:
                                [
                                % COMMANDS:
                                \boxed-markup "Frame + Slit w/ sticks" 1
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
                            c'4..
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            % COMMANDS:
                            \boxed-markup "Slit Drum w/ rubber mallets" 1
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
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \mf
                            c'2
                            % AFTER:
                            % ARTICULATIONS:
                            \mf
                            % COMMANDS:
                            \boxed-markup "Lion's Roar" 1
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                % ABSOLUTE_BEFORE:
                                % COMMANDS:
                                \staff-line-count 2
                                % OPENING:
                                % COMMANDS:
                                \clef "percussion"
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \ff
                                % START_BEAM:
                                [
                                % COMMANDS:
                                \boxed-markup "Frame + Slit w/ sticks" 1
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
                            c'4..
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            % COMMANDS:
                            \boxed-markup "Slit Drum w/ rubber mallets" 1
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
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \mf
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
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 3) (ly:make-duration 3 0))
                                    \times 6/10
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set Staff.instrumentName = \markup \bold { Violoncello I }
                                        \set Staff.shortInstrumentName = \markup \bold { vc. I }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "tenorvarC"
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \pp
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fs'2
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        fs'16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 8) (ly:make-duration 5 0))
                                    \times 8/13
                                    {
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >4.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % SPANNER_STARTS:
                                        - \tweak padding #7.5
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override TupletBracket.stencil = ##f
                                    \once \override TupletNumber.stencil = ##f
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        fs,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                        \startTextSpan
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        ef,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        bf,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % STOP_BEAM:
                                        ]
                                        af,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        g,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        fs,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        e,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % STOP_BEAM:
                                        ]
                                        g,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        e,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        ef,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        ef,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        ef,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        bf,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % STOP_BEAM:
                                        ]
                                        fs,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        ef,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % COMMANDS:
                                        \boxed-markup "( does not prolate with time signature )" 1
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        bf,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % STOP_BEAM:
                                        ]
                                        af,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        g,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        fs,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        e,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % STOP_BEAM:
                                        ]
                                        g,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        e,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        ef,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override TupletBracket.stencil = ##f
                                        \once \override TupletNumber.stencil = ##f
                                        % OPEN_BRACKETS:
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 32/48
                                        {
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \tweak X-extent #'(0 . 0)
                                            \tweak transparent ##t
                                            ef,32
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ffff
                                            % SPANNER_STOPS:
                                            )
                                            \stopTextSpan
                                            % STOP_BEAM:
                                            ]
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    }
                                    s1 * 7/32
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
                                    \set stemRightBeamCount = 2
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "tenorvarC"
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \mf
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak stencil #constante-hairpin
                                    \<
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
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
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
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 0
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
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 5) (ly:make-duration 4 0))
                                    \times 5/7
                                    {
                                        r8
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 0
                                        \set stemRightBeamCount = 2
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
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
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
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 0
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        fs'8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \!
                                        % STOP_BEAM:
                                        ]
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \tweak style #'triangle
                                    g32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak padding #5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "legno bat." } \hspace #0.5 }
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \tweak style #'triangle
                                    bqs,32
                                    \tweak style #'triangle
                                    g32
                                    \tweak style #'triangle
                                    bqs,32
                                    \tweak style #'triangle
                                    g32
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
                                    \tweak style #'triangle
                                    fqs32
                                    \tweak style #'triangle
                                    dqf32
                                    \tweak style #'triangle
                                    fqs32
                                    \tweak style #'triangle
                                    dqf32
                                    \tweak style #'triangle
                                    fqs32
                                    \tweak style #'triangle
                                    dqf32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        af2
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \center-column { \upright "II" \upright "+37" }
                                        % SPANNER_STARTS:
                                        (
                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2
                                        \glissando
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "flaut." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "scratch" } \hspace #0.5 }\startTextSpanTwo
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
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        \tweak style #'harmonic-mixed
                                        af8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % SPANNER_STOPS:
                                        )
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 0
                                    \set stemRightBeamCount = 2
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "tenorvarC"
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \mf
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak stencil #constante-hairpin
                                    \<
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
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
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
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 0
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
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 5) (ly:make-duration 4 0))
                                    \times 5/7
                                    {
                                        r8
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 0
                                        \set stemRightBeamCount = 2
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
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
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
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 0
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        fs'8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \!
                                        % STOP_BEAM:
                                        ]
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \tweak style #'triangle
                                    g32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak padding #5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "legno bat." } \hspace #0.5 }
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \tweak style #'triangle
                                    bqs,32
                                    \tweak style #'triangle
                                    g32
                                    \tweak style #'triangle
                                    bqs,32
                                    \tweak style #'triangle
                                    g32
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
                                    \tweak style #'triangle
                                    fqs32
                                    \tweak style #'triangle
                                    dqf32
                                    \tweak style #'triangle
                                    fqs32
                                    \tweak style #'triangle
                                    dqf32
                                    \tweak style #'triangle
                                    fqs32
                                    \tweak style #'triangle
                                    dqf32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        af2
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \center-column { \upright "II" \upright "+37" }
                                        % SPANNER_STARTS:
                                        (
                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2
                                        \glissando
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "flaut." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "scratch" } \hspace #0.5 }\startTextSpanTwo
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
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        \tweak style #'harmonic-mixed
                                        af8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mf
                                        % SPANNER_STOPS:
                                        )
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 0
                                    \set stemRightBeamCount = 2
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "tenorvarC"
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \ff
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak stencil #constante-hairpin
                                    \<
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
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
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
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 0
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
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 5) (ly:make-duration 4 0))
                                    \times 5/7
                                    {
                                        r8
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 0
                                        \set stemRightBeamCount = 2
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
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
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
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 0
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        fs'8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \!
                                        % STOP_BEAM:
                                        ]
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    % CLOSE_BRACKETS:
                                    }
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
                                    \once \override TupletBracket.stencil = ##f
                                    \once \override TupletNumber.stencil = ##f
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set Staff.instrumentName = \markup \bold { Violoncello II }
                                        \set Staff.shortInstrumentName = \markup \bold{ vc. II }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        fs,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #9.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                        \startTextSpan
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        ef,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        bf,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % STOP_BEAM:
                                        ]
                                        af,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        af,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        af,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        af,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        af,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        af,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % STOP_BEAM:
                                        ]
                                        af,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        g,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        fs,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        e,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % STOP_BEAM:
                                        ]
                                        fs,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        ef,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        bf,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % STOP_BEAM:
                                        ]
                                        af,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        af,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        af,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        af,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        af,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        af,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % STOP_BEAM:
                                        ]
                                        % COMMANDS:
                                        \boxed-markup "( does not prolate with time signature )" 1
                                        af,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        g,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        fs,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        e,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % STOP_BEAM:
                                        ]
                                        fs,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        ef,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        bf,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % STOP_BEAM:
                                        ]
                                        af,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override TupletBracket.stencil = ##f
                                        \once \override TupletNumber.stencil = ##f
                                        % OPEN_BRACKETS:
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 32/48
                                        {
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \tweak X-extent #'(0 . 0)
                                            \tweak transparent ##t
                                            af,32
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ffff
                                            % SPANNER_STOPS:
                                            )
                                            \stopTextSpan
                                            % STOP_BEAM:
                                            ]
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    }
                                    s1 * 7/32
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    b,4..
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "III" \upright "+55" }
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \<
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
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    b,16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "tenorvarC"
                                        <
                                            fqs'
                                            \tweak style #'harmonic
                                            bqf'
                                        >4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide molto pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight tast. }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fqs'4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        \mf
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
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
                                        >4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/12
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        d,2
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        \mf
                                        % SPANNER_STARTS:
                                        - \tweak padding #8
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "IV, trem. pont." } \hspace #0.5 }
                                        \startTextSpan
                                        ~
                                        d,8
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "tenorvarC"
                                        <
                                            fqs'
                                            \tweak style #'harmonic
                                            bqf'
                                        >4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide molto pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight tast. }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fqs'4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        \ff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
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
                                        >4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    b,4..
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "III" \upright "+55" }
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \<
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
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    b,16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/12
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        c,2
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        \mf
                                        % SPANNER_STARTS:
                                        - \tweak padding #8
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "IV, trem. pont." } \hspace #0.5 }
                                        \startTextSpan
                                        ~
                                        c,8
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "tenorvarC"
                                        <
                                            fqs'
                                            \tweak style #'harmonic
                                            bqf'
                                        >4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide molto pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight tast. }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fqs'4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        \mf
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
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
                                        >4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
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
