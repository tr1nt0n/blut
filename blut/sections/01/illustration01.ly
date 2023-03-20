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
            % ABSOLUTE_BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 1/16
            R1 * 1/16
            % AFTER:
            % MARKUP:
            - \markup \center-column { \abs-fontsize #8.7 \musicglyph "scripts.ufermata" }
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % ABSOLUTE_BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 1/16
            R1 * 1/16
            % AFTER:
            % MARKUP:
            - \markup \center-column { \abs-fontsize #8.7 \musicglyph "scripts.ufermata" }
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % OPENING:
            % COMMANDS:
            \time 1/8
            s1 * 1/8
            % ABSOLUTE_BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 1/16
            R1 * 1/16
            % AFTER:
            % MARKUP:
            - \markup \center-column { \abs-fontsize #8.7 \musicglyph "scripts.ufermata" }
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % OPENING:
            % COMMANDS:
            \time 13/8
            s1 * 13/8
            % ABSOLUTE_BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 1/16
            R1 * 1/16
            % AFTER:
            % MARKUP:
            - \markup \center-column { \abs-fontsize #8.7 \musicglyph "scripts.ufermata" }
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 6/8
            s1 * 3/4
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 6/8
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % OPENING:
            % COMMANDS:
            \time 6/8
            s1 * 3/4
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 6/8
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 7/8
            s1 * 7/8
            % OPENING:
            % COMMANDS:
            \time 8/8
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 9/8
            s1 * 9/8
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
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(0 1 1 1 2 9) #1  #0.2
                            % OPENING:
                            % COMMANDS:
                            #(define afterGraceFraction (cons 15 16))
                            \afterGrace
                            ef8
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpan
                            \glissando
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % OPEN_BRACKETS:
                            {
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                \once \override Flag.stroke-style = #"grace"
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                ef16
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % SPANNER_STOPS:
                                \stopTextSpan
                                \stopTrillSpan
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
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(0 1 1 1 2 9) #1  #0.2
                            % OPENING:
                            % COMMANDS:
                            #(define afterGraceFraction (cons 15 16))
                            ef16
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpan
                            \glissando
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \afterGrace
                            ef4
                            % AFTER:
                            % OPEN_BRACKETS:
                            {
                                % OPENING:
                                % COMMANDS:
                                \once \override Flag.stroke-style = #"grace"
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
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(0 1 1 1 2 9) #1  #0.2
                            % OPENING:
                            % COMMANDS:
                            #(define afterGraceFraction (cons 15 16))
                            \afterGrace
                            ef8
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpan
                            \glissando
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % OPEN_BRACKETS:
                            {
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                \once \override Flag.stroke-style = #"grace"
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                ef16
                                % AFTER:
                                % ARTICULATIONS:
                                \p
                                % SPANNER_STOPS:
                                \stopTextSpan
                                \stopTrillSpan
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
                            \textSpannerDown
                            \vibrato #'(0 1 1 1 2 9) #1  #0.2
                            % OPENING:
                            % COMMANDS:
                            #(define afterGraceFraction (cons 15 16))
                            ef8
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpan
                            \glissando
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \afterGrace
                            ef4
                            % AFTER:
                            % OPEN_BRACKETS:
                            {
                                % OPENING:
                                % COMMANDS:
                                \once \override Flag.stroke-style = #"grace"
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                ef16
                                % AFTER:
                                % ARTICULATIONS:
                                \ff
                                % SPANNER_STOPS:
                                \stopTextSpan
                                \stopTrillSpan
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
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(0 1 1 1 2 9) #1  #0.2
                            ef4.
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpan
                            \glissando
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            ef64
                            % AFTER:
                            % ARTICULATIONS:
                            \f
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTrillSpan
                            % COMMANDS:
                            \textSpannerUp
                            r16..
                            r4
                            r4.
                            s1 * 3/4
                            s1 * 5/8
                            s1 * 5/8
                            s1 * 3/4
                            s1 * 3/4
                            s1 * 7/8
                            s1 * 1
                            s1 * 9/8
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
                            \boxed-markup "Lion's Roar" 1
                            \override Staff.BarLine.bar-extent = #'(-0.01 . 0.01)
                            % OPENING:
                            % COMMANDS:
                            #(define afterGraceFraction (cons 15 16))
                            \afterGrace
                            c'8
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            \glissando
                            % OPEN_BRACKETS:
                            {
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                \once \override Flag.stroke-style = #"grace"
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                \f
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
                            r16
                            % OPENING:
                            % COMMANDS:
                            #(define afterGraceFraction (cons 15 16))
                            \afterGrace
                            c'8.
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            \glissando
                            % OPEN_BRACKETS:
                            {
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                \once \override Flag.stroke-style = #"grace"
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                \mp
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
                            #(define afterGraceFraction (cons 15 16))
                            \afterGrace
                            c'8
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            \glissando
                            % OPEN_BRACKETS:
                            {
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                \once \override Flag.stroke-style = #"grace"
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                \p
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
                            % OPENING:
                            % COMMANDS:
                            #(define afterGraceFraction (cons 15 16))
                            \afterGrace
                            c'2.
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            \glissando
                            % OPEN_BRACKETS:
                            {
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                \once \override Flag.stroke-style = #"grace"
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                \ff
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
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            c'64
                            % AFTER:
                            % ARTICULATIONS:
                            \f
                            r16..
                            r4
                            r4.
                            s1 * 3/4
                            s1 * 5/8
                            s1 * 5/8
                            s1 * 3/4
                            s1 * 3/4
                            s1 * 7/8
                            s1 * 1
                            s1 * 9/8
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
                                    % OPENING:
                                    % COMMANDS:
                                    #(define afterGraceFraction (cons 15 16))
                                    \clef "tenorvarC"
                                    \afterGrace
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
                                    - \tweak padding #12
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "wide trem. tast." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { tight trem. pont. }
                                    \startTextSpan
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \once \override Flag.stroke-style = #"grace"
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
                                    % OPENING:
                                    % COMMANDS:
                                    #(define afterGraceFraction (cons 15 16))
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
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "sim." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
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
                                    \afterGrace
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \once \override Flag.stroke-style = #"grace"
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
                                    % OPENING:
                                    % COMMANDS:
                                    #(define afterGraceFraction (cons 15 16))
                                    \afterGrace
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "sim." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpan
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \once \override Flag.stroke-style = #"grace"
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
                                        \p
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
                                    % OPENING:
                                    % COMMANDS:
                                    #(define afterGraceFraction (cons 15 16))
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >2..
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "sim." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
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
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    \afterGrace
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \once \override Flag.stroke-style = #"grace"
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
                                        \ff
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
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \f
                                        % SPANNER_STARTS:
                                        (
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    #(define afterGraceFraction (cons 15 16))
                                    #(define afterGraceFraction (cons 15 16))
                                    #(define afterGraceFraction (cons 15 16))
                                    #(define afterGraceFraction (cons 15 16))
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \pp
                                    % SPANNER_STOPS:
                                    )
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    \afterGrace
                                    <
                                        fs'
                                        \tweak style #'harmonic
                                        b'
                                    >8.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STARTS:
                                    - \tweak padding #11.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "wide" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { tight }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \once \override Flag.stroke-style = #"grace"
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
                                        % STEM_TREMOLOS:
                                        :128
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \sfz
                                        % SPANNER_STARTS:
                                        (
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \pp
                                    % SPANNER_STOPS:
                                    )
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        fs'
                                        \tweak style #'harmonic
                                        b'
                                    >16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    - \tweak padding #11.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "wide" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { tight }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    - \tweak stencil #abjad-flared-hairpin
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \afterGrace
                                    <
                                        fs'
                                        \tweak style #'harmonic
                                        b'
                                    >8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % START_BEAM:
                                    [
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \once \override Flag.stroke-style = #"grace"
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
                                        % STEM_TREMOLOS:
                                        :128
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \sfz
                                        % SPANNER_STARTS:
                                        (
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    e'8
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
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
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    - \tweak padding #11.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "tight" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { wide }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    \>
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \afterGrace
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % START_BEAM:
                                    [
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \once \override Flag.stroke-style = #"grace"
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        (
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    e'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    e'16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    \afterGrace
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \mf
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \>
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \once \override Flag.stroke-style = #"grace"
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
                                        % ARTICULATIONS:
                                        \pp
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
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
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \sfz
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    #(define afterGraceFraction (cons 15 16))
                                    #(define afterGraceFraction (cons 15 16))
                                    #(define afterGraceFraction (cons 15 16))
                                    <
                                        fs'
                                        \tweak style #'harmonic
                                        b'
                                    >4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \afterGrace
                                    <
                                        fs'
                                        \tweak style #'harmonic
                                        b'
                                    >8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \once \override Flag.stroke-style = #"grace"
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
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        gqs'
                                        \tweak style #'harmonic
                                        cqs''
                                    >8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \(
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    gqs'8
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    \afterGrace
                                    <
                                        gqs'
                                        \tweak style #'harmonic
                                        cqs''
                                    >8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    - \tweak padding #11.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "tight" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { wide }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    \<
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \once \override Flag.stroke-style = #"grace"
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            gqs'
                                            \tweak style #'harmonic
                                            cqs''
                                        >16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
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
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    fs'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        fs'
                                        \tweak style #'harmonic
                                        b'
                                    >8.
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    - \tweak padding #10
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "molto tast." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { molto pont. }
                                    - \tweak bound-details.right.padding 3
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
                                    \afterGrace
                                    <
                                        fs'
                                        \tweak style #'harmonic
                                        b'
                                    >4.
                                    % AFTER:
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \once \override Flag.stroke-style = #"grace"
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
                                    r4.
                                    s1 * 3/4
                                    s1 * 7/8
                                    s1 * 1
                                    s1 * 9/8
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
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "tenorvarC"
                                    r16
                                    % OPENING:
                                    % COMMANDS:
                                    #(define afterGraceFraction (cons 15 16))
                                    <
                                        d'
                                        \tweak style #'harmonic
                                        g'
                                    >16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    - \tweak padding #12
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "wide trem. tast." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { tight trem. pont. }
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
                                    \afterGrace
                                    <
                                        d'
                                        \tweak style #'harmonic
                                        g'
                                    >4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \once \override Flag.stroke-style = #"grace"
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
                                    r4.
                                    % OPENING:
                                    % COMMANDS:
                                    #(define afterGraceFraction (cons 15 16))
                                    \afterGrace
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
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "sim." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpan
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \once \override Flag.stroke-style = #"grace"
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
                                    % OPENING:
                                    % COMMANDS:
                                    #(define afterGraceFraction (cons 15 16))
                                    \afterGrace
                                    <
                                        d'
                                        \tweak style #'harmonic
                                        g'
                                    >8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "sim." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpan
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \once \override Flag.stroke-style = #"grace"
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
                                        \p
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
                                    r4.
                                    % OPENING:
                                    % COMMANDS:
                                    #(define afterGraceFraction (cons 15 16))
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
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "sim." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
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
                                    \afterGrace
                                    <
                                        d'
                                        \tweak style #'harmonic
                                        g'
                                    >4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \once \override Flag.stroke-style = #"grace"
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
                                        \ff
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
                                    \glissando
                                    <
                                        d'
                                        \tweak style #'harmonic
                                        g'
                                    >64
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :512
                                    % ARTICULATIONS:
                                    \f
                                    r16..
                                    r4
                                    r4.
                                    s1 * 3/4
                                    s1 * 5/8
                                    s1 * 5/8
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 7/8
                                    s1 * 1
                                    s1 * 9/8
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
