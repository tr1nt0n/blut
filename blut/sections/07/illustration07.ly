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
            \time 7/8
            s1 * 7/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"140" } }
            % OPENING:
            % COMMANDS:
            \time 4/8
            s1 * 1/2
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            % OPENING:
            % COMMANDS:
            \time 9/8
            s1 * 9/8
            % OPENING:
            % COMMANDS:
            \time 8/8
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 9/8
            s1 * 9/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"117" } }
            % OPENING:
            % COMMANDS:
            \time 14/8
            s1 * 7/4
            % OPENING:
            % COMMANDS:
            \time 8/8
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 4/8
            s1 * 1/2
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }
            % OPENING:
            % COMMANDS:
            \time 8/8
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 12/8
            s1 * 3/2
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"140" } }
            % OPENING:
            % COMMANDS:
            \time 4/8
            s1 * 1/2
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }
            % OPENING:
            % COMMANDS:
            \time 15/8
            s1 * 15/8
            % OPENING:
            % COMMANDS:
            \time 8/8
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 6/8
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 11/7
            s1 * 11/7
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 13/9
            s1 * 13/9
            % OPENING:
            % COMMANDS:
            \time 12/8
            s1 * 3/2
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
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
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \staff-line-count 5
                            % OPENING:
                            % COMMANDS:
                            \clef "treble"
                            fs!4
                            % AFTER:
                            % SPANNER_STARTS:
                            (
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \three-eighths-flat-markup
                            g!8..
                            % AFTER:
                            % ARTICULATIONS:
                            \mp
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \>
                            \glissando
                            fs!32
                            % AFTER:
                            % SPANNER_STOPS:
                            )
                            % STOP_BEAM:
                            ]
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 9/16
                            {
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \one-eighth-flat-markup
                                g!1
                                % AFTER:
                                % SPANNER_STARTS:
                                (
                                - \tweak circled-tip ##t
                                \<
                                \glissando
                                fs!2..
                                % AFTER:
                                % ARTICULATIONS:
                                \p
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                \glissando
                                gqf!8
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                            % CLOSE_BRACKETS:
                            }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \three-eighths-flat-markup
                            g!2
                            % AFTER:
                            % SPANNER_STARTS:
                            (
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-eighth-flat-markup
                            g!4
                            % AFTER:
                            % ARTICULATIONS:
                            \mf
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \>
                            \glissando
                            ~
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-eighth-flat-markup
                            g8.
                            % AFTER:
                            % START_BEAM:
                            [
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            fs!16
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % SPANNER_STOPS:
                            )
                            % STOP_BEAM:
                            ]
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(9 10 11 1 2 1.5 1 2 3 1 1.25) #2  #0.2
                            e'2.
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
                            e'4.
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTextSpan
                            % COMMANDS:
                            \textSpannerUp
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 14/16
                            {
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \one-eighth-flat-markup
                                e!1
                                % AFTER:
                                % SPANNER_STOPS:
                                \stopTrillSpan
                                % SPANNER_STARTS:
                                (
                                - \tweak circled-tip ##t
                                \<
                                \glissando
                                ef!2..
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                \glissando
                                eqf!8
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                            % CLOSE_BRACKETS:
                            }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \three-eighths-flat-markup
                            e!2
                            % AFTER:
                            % SPANNER_STARTS:
                            (
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-eighth-flat-markup
                            e!4
                            % AFTER:
                            % ARTICULATIONS:
                            \mf
                            % SPANNER_STARTS:
                            - \tweak stencil #constante-hairpin
                            \<
                            \glissando
                            ~
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-eighth-flat-markup
                            e16
                            % AFTER:
                            % START_BEAM:
                            [
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            ef!8.
                            % AFTER:
                            % SPANNER_STOPS:
                            )
                            % STOP_BEAM:
                            ]
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \>
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(0.5 1 2.5 6 4 7 3 11 2 2 2 3) #2.63  #0.2
                            e'2
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            % SPANNER_STARTS:
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            \startTextSpan
                            - \tweak stencil #constante-hairpin
                            \<
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            ef1
                            s1 * 3/2
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTrillSpan
                            % COMMANDS:
                            \textSpannerUp
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(2 1 2 1) #0.67  #0.2
                            e'2
                            % AFTER:
                            % ARTICULATIONS:
                            \p
                            % SPANNER_STARTS:
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            \startTextSpan
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \vibrato #'(2 1 12 1 0.5 1 12 1 2 1 3 1 3 1 2) #0.67  #0.2
                            ef1...
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTrillSpan
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \vibrato #'(2 1 2 1 2 1) #0.67  #0.2
                            bf1
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTrillSpan
                            % SPANNER_STARTS:
                            \<
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \vibrato #'(2 12 13 12 13 12 11 10 12 13 14) #0.67  #0.2
                            af2.
                            % AFTER:
                            % ARTICULATIONS:
                            \sfp
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTrillSpan
                            % SPANNER_STARTS:
                            - \tweak stencil #constante-hairpin
                            \<
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % COMMANDS:
                            \textSpannerUp
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/7
                            {
                                ef\breve
                                % AFTER:
                                % ARTICULATIONS:
                                \fff
                                % SPANNER_STOPS:
                                \stopTrillSpan
                                % SPANNER_STARTS:
                                - \tweak padding #8
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                                \startTextSpan
                                - \tweak stencil #constante-hairpin
                                \<
                                ~
                                ef2.
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 8/9
                            {
                                e'1.
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
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \staff-line-count 2
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
                            % AFTER:
                            % STOP_BEAM:
                            ]
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
                            \boxed-markup "Slit Drum w/ sponge ( rub )" 1
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
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            \p
                            % SPANNER_STARTS:
                            - \tweak padding #5.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "pizz." } \hspace #0.5 }
                            \startTextSpan
                            % COMMANDS:
                            \boxed-markup "Lion\'s Roar" 1
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTextSpan
                            s1 * 9/8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            \p
                            % SPANNER_STARTS:
                            - \tweak padding #5.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "pizz." } \hspace #0.5 }
                            \startTextSpan
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STOPS:
                            \stopTextSpan
                            s1 * 1/2
                            s1 * 1
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            \p
                            % SPANNER_STARTS:
                            - \tweak padding #5.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "pizz." } \hspace #0.5 }
                            \startTextSpan
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTextSpan
                            s1 * 1/2
                            s1 * 15/8
                            s1 * 1
                            s1 * 3/4
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/7
                            {
                                % ABSOLUTE_BEFORE:
                                % COMMANDS:
                                \staff-line-count 2
                                % OPENING:
                                % COMMANDS:
                                \clef "percussion"
                                <b d'>4
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \fff
                                % SPANNER_STARTS:
                                - \tweak stencil #constante-hairpin
                                \<
                                % COMMANDS:
                                \boxed-markup "Frame Drum + Slit Drum w/ drum sticks" 1
                                <b d'>4
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>4
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>4
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>4
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>4
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>4
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>4
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>4
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>4
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>4
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 8/9
                            {
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                % START_BEAM:
                                [
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
                                \!
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            <b d'>8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            \p
                            % START_BEAM:
                            [
                            % COMMANDS:
                            \boxed-markup "Frame Drum + Slit Drum w/ sponges ( rub )" 1
                            <b d'>8
                            % AFTER:
                            % ARTICULATIONS:
                            \ppp
                            % STOP_BEAM:
                            ]
                            <b d'>8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            \p
                            % START_BEAM:
                            [
                            <b d'>8
                            % AFTER:
                            % ARTICULATIONS:
                            \ppp
                            <b d'>8
                            <b d'>8
                            <b d'>8
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            <b d'>8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            \p
                            % START_BEAM:
                            [
                            <b d'>8
                            % AFTER:
                            % ARTICULATIONS:
                            \ppp
                            % STOP_BEAM:
                            ]
                            <b d'>8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            \p
                            % START_BEAM:
                            [
                            <b d'>8
                            % AFTER:
                            % ARTICULATIONS:
                            \ppp
                            <b d'>8
                            % AFTER:
                            % STOP_BEAM:
                            ]
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
                                    - \tweak padding #4
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
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    cqs'''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % SPANNER_STARTS:
                                    - \tweak padding #9.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                    \startTextSpan
                                    \tweak style #'harmonic-mixed
                                    a''4
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/8
                                    {
                                        \tweak style #'harmonic-mixed
                                        cqs'''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        \tweak style #'harmonic-mixed
                                        g''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        c,4.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % MARKUP:
                                        ^ \markup \upright { "IV" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        d'''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        fs'''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        a8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % MARKUP:
                                        ^ \markup \upright { "I" }
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    a8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    a4
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        d'''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        c,2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % MARKUP:
                                        ^ \markup \upright { "IV" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        g''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        \tweak style #'harmonic-mixed
                                        d'''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/3
                                    {
                                        \tweak style #'harmonic-mixed
                                        g''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        \tweak style #'harmonic-mixed
                                        cqs'''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        \tweak style #'harmonic-mixed
                                        c'8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    s1 * 9/8
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    c,4.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \upright { "IV" }
                                    % SPANNER_STARTS:
                                    - \tweak padding #9.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                    \startTextSpan
                                    ~
                                    c,4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    dqs'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    fs'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    a4.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \upright { "I" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    d'''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/8
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        c,2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % MARKUP:
                                        ^ \markup \upright { "IV" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        g''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        \tweak style #'harmonic-mixed
                                        cqs'''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        \tweak style #'harmonic-mixed
                                        g''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        \tweak style #'harmonic-mixed
                                        cqs'''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    a4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \upright { "I" }
                                    % SPANNER_STARTS:
                                    ~
                                    a8
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    g''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    g''8
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    s1 * 1/2
                                    s1 * 1
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        \tweak style #'harmonic-mixed
                                        dqs'''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        % SPANNER_STARTS:
                                        - \tweak padding #9.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                        \startTextSpan
                                        \tweak style #'harmonic-mixed
                                        fs'''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        \tweak style #'harmonic-mixed
                                        d'''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        \tweak style #'harmonic-mixed
                                        g''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        cqs'''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        c,4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % MARKUP:
                                        ^ \markup \upright { "IV" }
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        c,8
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        g''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        \tweak style #'harmonic-mixed
                                        cqs'''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/8
                                    {
                                        \tweak style #'harmonic-mixed
                                        g''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        \tweak style #'harmonic-mixed
                                        cqs'''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        a4.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % MARKUP:
                                        ^ \markup \upright { "I" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        g''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        d'''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        c,8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % MARKUP:
                                        ^ \markup \upright { "IV" }
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    c,8
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    s1 * 1/2
                                    s1 * 15/8
                                    s1 * 1
                                    s1 * 3/4
                                    s1 * 11/7
                                    s1 * 13/9
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 1
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
                                    - \tweak padding #4
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
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
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
                                    - \tweak padding #4
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
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    c'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % SPANNER_STARTS:
                                    - \tweak padding #9.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                    \startTextSpan
                                    \tweak style #'harmonic-mixed
                                    g''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    \tweak style #'harmonic-mixed
                                    c'''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    \tweak style #'harmonic-mixed
                                    g''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    a4.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \upright { "I" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    c'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    gqs'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    c,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \upright { "IV" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    c,8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    c'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    a8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \upright { "I" }
                                    % SPANNER_STARTS:
                                    ~
                                    a4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    a8
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    gqs'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    \tweak style #'harmonic-mixed
                                    c'''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    \tweak style #'harmonic-mixed
                                    gqs'''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    \tweak style #'harmonic-mixed
                                    c'''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    \tweak style #'harmonic-mixed
                                    c'8
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    s1 * 9/8
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    a4.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \upright { "I" }
                                    % SPANNER_STARTS:
                                    - \tweak padding #9.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                    \startTextSpan
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    c'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    g''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    c,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \upright { "IV" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    cqs'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    a4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \upright { "I" }
                                    % SPANNER_STARTS:
                                    ~
                                    a4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    g''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    \tweak style #'harmonic-mixed
                                    cqs'''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    \tweak style #'harmonic-mixed
                                    e'''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    \tweak style #'harmonic-mixed
                                    d'''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    e'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    c,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \upright { "IV" }
                                    % SPANNER_STARTS:
                                    ~
                                    c,4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    cqs'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    \tweak style #'harmonic-mixed
                                    g''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    s1 * 1/2
                                    s1 * 1
                                    \tweak style #'harmonic-mixed
                                    g''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % SPANNER_STARTS:
                                    - \tweak padding #9.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                    \startTextSpan
                                    \tweak style #'harmonic-mixed
                                    c'''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    \tweak style #'harmonic-mixed
                                    g''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    \tweak style #'harmonic-mixed
                                    cqs'''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    g''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    a8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \upright { "I" }
                                    % SPANNER_STARTS:
                                    ~
                                    a4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    cqs'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    \tweak style #'harmonic-mixed
                                    e'''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    \tweak style #'harmonic-mixed
                                    d'''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    \tweak style #'harmonic-mixed
                                    e'''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    s1 * 1/2
                                    s1 * 15/8
                                    s1 * 1
                                    s1 * 3/4
                                    s1 * 11/7
                                    s1 * 13/9
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 1
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
                                    - \tweak padding #4
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
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
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
