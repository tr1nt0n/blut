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
            - \tweak padding #8
            ^ \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }
            % SPANNER_STARTS:
            - \tweak padding #13
            - \abjad-dashed-line-with-hook
            - \tweak bound-details.left.text \markup \concat { \upright { "2nd time Rall." } \hspace #0.5 }
            - \tweak bound-details.right.padding 3
            \startTextSpan
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
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
            - \tweak padding #8
            ^ \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            % SPANNER_STOPS:
            \stopTextSpan
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
            _ \markup \center-column { \abs-fontsize #10 \musicglyph "scripts.ufermata" }
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % OPENING:
            % COMMANDS:
            \time 13/16
            s1 * 13/16
            % AFTER:
            % MARKUP:
            - \tweak padding #8
            ^ \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"140" } }
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
            % OPENING:
            % COMMANDS:
            \time 15/16
            s1 * 15/16
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
                            \override Staff.BarLine.bar-extent = #'(-0.5 . 0.5)
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
                            d'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            \ppp
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            \<
                            b8
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            d'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            % START_BEAM:
                            [
                            b8
                            b8
                            b8
                            b16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            b16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            d'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            % START_BEAM:
                            [
                            b8
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            d'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            % START_BEAM:
                            [
                            b8
                            b8
                            b8
                            b16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            b16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            d'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            % START_BEAM:
                            [
                            b8
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            d'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            % START_BEAM:
                            [
                            b16
                            % AFTER:
                            % ARTICULATIONS:
                            \fff
                            % STOP_BEAM:
                            ]
                            s1 * 17/16
                            s1 * 1/4
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \staff-line-count 5
                            % BEFORE:
                            % COMMANDS:
                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                            % OPENING:
                            % COMMANDS:
                            \clef "treble"
                            fs'4.
                            % AFTER:
                            % ARTICULATIONS:
                            \p
                            % MARKUP:
                            ^ \markup \override #'(size . .6) {\hspace #2.5  \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (e)))}
                            % SPANNER_STARTS:
                            \<
                            ~
                            fs'8.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            fs'2
                            % AFTER:
                            % ARTICULATIONS:
                            \fff
                            s1 * 9/16
                            s1 * 7/8
                            s1 * 1/2
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 16 15) (ly:make-duration 4 0))
                            \times 15/16
                            {
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \three-eighths-flat-markup
                                g!2
                                % AFTER:
                                % ARTICULATIONS:
                                \p
                                % SPANNER_STARTS:
                                (
                                \<
                                \glissando
                                fs!4..
                                % AFTER:
                                % SPANNER_STARTS:
                                \glissando
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \one-eighth-flat-markup
                                g!16
                                % AFTER:
                                % ARTICULATIONS:
                                \ff
                                % SPANNER_STOPS:
                                )
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
                            \override Staff.BarLine.bar-extent = #'(-0.01 . 0.01)
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
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) (ly:make-duration 4 0))
                            \times 9/8
                            {
                                % ABSOLUTE_BEFORE:
                                % COMMANDS:
                                \staff-line-count 2
                                % BEFORE:
                                % COMMANDS:
                                \override Staff.BarLine.bar-extent = #'(-0.5 . 0.5)
                                % OPENING:
                                % COMMANDS:
                                \clef "percussion"
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \pp
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
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) (ly:make-duration 4 0))
                            \times 5/4
                            {
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
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
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
                                \fff
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            s1 * 17/16
                            s1 * 1/4
                            s1 * 9/16
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \staff-line-count 1
                            % BEFORE:
                            % COMMANDS:
                            \override Staff.BarLine.bar-extent = #'(-0.01 . 0.01)
                            % OPENING:
                            % COMMANDS:
                            \clef "percussion"
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            \mp
                            % SPANNER_STARTS:
                            - \tweak padding #6.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "pizz." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpan
                            \<
                            % COMMANDS:
                            \boxed-markup "Lion's Roar" 1
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) (ly:make-duration 4 0))
                            \times 9/8
                            {
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                \fff
                                c'8
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                \p
                            % CLOSE_BRACKETS:
                            }
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
                            % ARTICULATIONS:
                            - \accent
                            c'8
                            c'8
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 14 15) (ly:make-duration 4 0))
                            \times 15/14
                            {
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
                                    \override Staff.BarLine.bar-extent = #'(-0.01 . 0.01)
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
                                    - \tweak bound-details.right.padding -1
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
                                    r8
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % BEFORE:
                                    % COMMANDS:
                                    \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \tweak style #'triangle
                                    c32.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    - \tweak padding #4
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "pont." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "tast." }
                                    \startTextSpanTwo
                                    - \tweak padding #6.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "legno bat." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpanOne
                                    r32.
                                    \tweak style #'triangle
                                    g32.
                                    \tweak style #'triangle
                                    bqs,32.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    % SPANNER_STOPS:
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    % STOP_BEAM:
                                    ]
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
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "tenorvarC"
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \mp
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "flaut." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "1/2 scratch" }
                                    - \tweak bound-details.right.padding 4
                                    \startTextSpanTwo
                                    - \tweak padding #8
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "IV, vibrato moltissimo" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpanOne
                                    \<
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
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    r16
                                    r8
                                    r16
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
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 4 0))
                                    \times 8/9
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
                                        \fff
                                        % SPANNER_STOPS:
                                        \stopTextSpanTwo
                                        % STOP_BEAM:
                                        ]
                                        r16
                                        \tweak style #'harmonic-mixed
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \ppp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2
                                        \glissando
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "flaut." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "1/2 scratch" }
                                        - \tweak bound-details.right.padding 4
                                        \startTextSpanTwo
                                        \<
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
                                        \tweak style #'triangle
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
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 3) (ly:make-duration 3 0))
                                    \times 3/5
                                    {
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
                                        % STOP_BEAM:
                                        ]
                                        r16
                                    % CLOSE_BRACKETS:
                                    }
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
                                        \tweak style #'triangle
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                        r16
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
                                        fs'8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
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
                                    \tweak style #'harmonic-mixed
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    r16
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
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 4 0))
                                    \times 6/7
                                    {
                                        r16
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
                                        % STOP_BEAM:
                                        ]
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Dots.staff-position = #2
                                        fs'4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                    % CLOSE_BRACKETS:
                                    }
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
                                    \fff
                                    % SPANNER_STOPS:
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    r16
                                    r8
                                    s1 * 9/16
                                    s1 * 7/8
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
                                    % SPANNER_STARTS:
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpan
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
                                    a''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    a2
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \upright { "I" }
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic-mixed
                                    g''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    c,16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \upright { "IV" }
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c,16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic-mixed
                                    d'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
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
                                    \override Staff.BarLine.bar-extent = #'(-0.01 . 0.01)
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
                                    - \tweak bound-details.right.padding -1
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
                                    r8
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 5 0))
                                    \times 6/7
                                    {
                                        r32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \staff-line-count 5
                                        % BEFORE:
                                        % COMMANDS:
                                        \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \tweak style #'triangle
                                        g32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mf
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        - \tweak padding #4.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "tast." }
                                        \startTextSpanTwo
                                        - \tweak padding #6.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "legno bat." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
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
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
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
                                    s1 * 13/16
                                    s1 * 9/16
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "tenorvarC"
                                        e'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % SPANNER_STARTS:
                                        (
                                        \<
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    #(define afterGraceFraction (cons 15 16))
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    - \tweak padding #10
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "wide molto pont." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { tight molto tast. }
                                    - \tweak bound-details.right.padding 5
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
                                    >4.
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
                                        \fff
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    s1 * 17/16
                                    % OPENING:
                                    % COMMANDS:
                                    #(define afterGraceFraction (cons 15 16))
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \pp
                                    % SPANNER_STARTS:
                                    - \tweak padding #10
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "molto tast." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { molto pont. }
                                    - \tweak bound-details.right.padding 5
                                    \startTextSpan
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
                                    \afterGrace
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >8.
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
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >16
                                        % AFTER:
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
                                            fqs'
                                            \tweak style #'harmonic
                                            bqf'
                                        >16
                                        % AFTER:
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
                                    fqs'4.
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    <
                                        fqs'
                                        \tweak style #'harmonic
                                        bqf'
                                    >8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STARTS:
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "tight pont." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { wide tast. }
                                    - \tweak bound-details.right.padding 1
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \afterGrace
                                    <
                                        fqs'
                                        \tweak style #'harmonic
                                        bqf'
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
                                        % SPANNER_STARTS:
                                        (
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e'16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    e'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fff
                                    % SPANNER_STOPS:
                                    )
                                    s1 * 9/16
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
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
                                        % SPANNER_STARTS:
                                        - \tweak padding #9.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpan
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
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'harmonic-mixed
                                        d'''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        % START_BEAM:
                                        [
                                        \tweak style #'harmonic-mixed
                                        gqs'''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \revert Staff.Stem.stemlet-length
                                        c,8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % MARKUP:
                                        ^ \markup \upright { "IV" }
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    c,8
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
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 3) (ly:make-duration 2 0))
                                    \times 3/5
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        a2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % MARKUP:
                                        ^ \markup \upright { "I" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'harmonic-mixed
                                        g''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        % START_BEAM:
                                        [
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
                                        \tweak style #'harmonic-mixed
                                        gqs'''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \revert Staff.Stem.stemlet-length
                                        c,8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % MARKUP:
                                        ^ \markup \upright { "IV" }
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    c,8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c,16
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 5) (ly:make-duration 4 0))
                                    \times 5/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'harmonic-mixed
                                        c'''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        % START_BEAM:
                                        [
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
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'harmonic-mixed
                                        c'16
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
