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
            \time 14/32
            s1 * 7/16
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"117" } }
            % OPENING:
            % COMMANDS:
            \time 15/32
            s1 * 15/32
            % OPENING:
            % COMMANDS:
            \time 13/32
            s1 * 13/32
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }
            % OPENING:
            % COMMANDS:
            \time 16/32
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 13/32
            s1 * 13/32
            % OPENING:
            % COMMANDS:
            \time 13/32
            s1 * 13/32
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
            - \tweak padding #8.5
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"140" } }
            \startTextSpan
            % OPENING:
            % COMMANDS:
            \time 14/32
            s1 * 7/16
            % OPENING:
            % COMMANDS:
            \time 15/32
            s1 * 15/32
            % OPENING:
            % COMMANDS:
            \time 13/32
            s1 * 13/32
            % OPENING:
            % COMMANDS:
            \time 16/32
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 13/32
            s1 * 13/32
            % OPENING:
            % COMMANDS:
            \time 17/32
            s1 * 17/32
            % OPENING:
            % COMMANDS:
            \time 14/32
            s1 * 7/16
            % OPENING:
            % COMMANDS:
            \time 15/32
            s1 * 15/32
            % OPENING:
            % COMMANDS:
            \time 13/32
            s1 * 13/32
            % AFTER:
            % SPANNER_STOPS:
            \stopTextSpan
            % OPENING:
            % COMMANDS:
            \time 16/32
            s1 * 1/2
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            % OPENING:
            % COMMANDS:
            \time 16/32
            s1 * 1/2
            % BEFORE:
            % COMMANDS:
            \bar ".|:"
            \once \override Score.BarLine.transparent = ##f
            % OPENING:
            % COMMANDS:
            \time 17/32
            s1 * 17/32
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }
            - \markup { \right-align \abs-fontsize #15 { \upright "×5" } }
            % ABSOLUTE_BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.transparent = ##t
            \set Score.repeatCommands = #'((volta "1 - 4"))
            % OPENING:
            % COMMANDS:
            \time 1/16
            s1 * 1/16
            % AFTER:
            % MARKUP:
            - \markup \huge \center-column { \musicglyph "scripts.ufermata" } 
            % COMMANDS:
            \bar ":|."
            \once \override Score.BarLine.transparent = ##f
            \set Score.repeatCommands = #'((volta #f))
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
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 7) (ly:make-duration 4 0))
                            \times 14/16
                            {
                                % BEFORE:
                                % COMMANDS:
                                \set Staff.instrumentName = \markup \bold { Bass Clarinet }
                                \set Staff.shortInstrumentName = \markup \bold { b. cl. }
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \one-eighth-flat-markup
                                a!4
                                % AFTER:
                                % SPANNER_STARTS:
                                (
                                - \tweak circled-tip ##t
                                \<
                                \glissando
                                af!8..
                                % AFTER:
                                % ARTICULATIONS:
                                \mf
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                \glissando
                                aqf!32
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 16 15) (ly:make-duration 5 0))
                            \times 15/16
                            {
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \three-eighths-flat-markup
                                a!4
                                % AFTER:
                                % SPANNER_STARTS:
                                (
                                - \tweak circled-tip ##t
                                \<
                                \glissando
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \one-eighth-flat-markup
                                a!8..
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                \glissando
                                af!32
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 16 13) (ly:make-duration 5 0))
                            \times 13/16
                            {
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \three-eighths-flat-markup
                                a!4
                                % AFTER:
                                % ARTICULATIONS:
                                \ff
                                % SPANNER_STARTS:
                                (
                                - \tweak stencil #constante-hairpin
                                \<
                                \glissando
                                af!8..
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                \glissando
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \one-eighth-flat-markup
                                a!32
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            fs'2
                            % AFTER:
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (e)))}
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            ~
                            fs'8..
                            % AFTER:
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            ~
                            fs'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            fs'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            fs'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            fs'8..
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            fs'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            fs'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            fs'16
                            % AFTER:
                            % ARTICULATIONS:
                            \fff
                            % STOP_BEAM:
                            ]
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            s1 * 17/32
                            s1 * 7/16
                            s1 * 15/32
                            s1 * 13/32
                            s1 * 1/2
                            s1 * 13/32
                            s1 * 17/32
                            s1 * 7/16
                            s1 * 15/32
                            s1 * 13/32
                            s1 * 1/2
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \three-eighths-flat-markup
                            g!4
                            % AFTER:
                            % SPANNER_STARTS:
                            (
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            fs!8..
                            % AFTER:
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            \glissando
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-eighth-flat-markup
                            g!32
                            % AFTER:
                            % ARTICULATIONS:
                            \fff
                            % SPANNER_STOPS:
                            )
                            % STOP_BEAM:
                            ]
                            s1 * 17/32
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
                            s1 * 7/16
                            s1 * 15/32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 12 13) (ly:make-duration 5 0))
                            \times 13/12
                            {
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                \mf
                                % SPANNER_STARTS:
                                - \tweak padding #6.5
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "pizz." } \hspace #0.5 }
                                \startTextSpan
                                - \tweak stencil #constante-hairpin
                                \<
                                % COMMANDS:
                                \boxed-markup "Lion's Roar" 1
                                c'16
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                c'16
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % SPANNER_STOPS:
                                \stopTextSpan
                            % CLOSE_BRACKETS:
                            }
                            c'2
                            % AFTER:
                            % ARTICULATIONS:
                            \p
                            % SPANNER_STARTS:
                            \<
                            ~
                            % COMMANDS:
                            \boxed-markup "Chinese Cymbal w/ bow" 1
                            c'8..
                            % AFTER:
                            % START_BEAM:
                            [
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
                            c'16
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
                            c'16
                            % AFTER:
                            % ARTICULATIONS:
                            \fff
                            % STOP_BEAM:
                            ]
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            s1 * 17/32
                            s1 * 7/16
                            s1 * 15/32
                            s1 * 13/32
                            s1 * 1/2
                            s1 * 13/32
                            s1 * 17/32
                            s1 * 7/16
                            s1 * 15/32
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 13) (ly:make-duration 5 0))
                            \times 91/56
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
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
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
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) (ly:make-duration 3 0))
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
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \staff-line-count 1
                            % OPENING:
                            % COMMANDS:
                            \clef "percussion"
                            r8..
                            % AFTER:
                            % COMMANDS:
                            \boxed-markup "Chinese Cymbal w/ bow" 1
                            r16
                            r16
                            r32
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 0
                            \set stemRightBeamCount = 3
                            c'32
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak stencil #constante-hairpin
                            \<
                            ~
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % STOP_BEAM:
                            ]
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
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    c,16.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % MARKUP:
                                    ^ \markup \upright { "IV" }
                                    % SPANNER_STARTS:
                                    - \tweak padding #9.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                    \startTextSpan
                                    ~
                                    c,16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c,32
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic-mixed
                                    a''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic-mixed
                                    a''32
                                    % AFTER:
                                    % START_BEAM:
                                    [
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
                                    a8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "I" }
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 1))
                                    \times 5/6
                                    {
                                        \tweak style #'triangle
                                        bqs,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "legno bat." } \hspace #0.5 }
                                        \startTextSpan
                                        \<
                                        \tweak style #'triangle
                                        g16
                                        r16
                                        \tweak style #'triangle
                                        bqs,16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        bqs,16
                                        \tweak style #'triangle
                                        g16
                                        r16
                                        \tweak style #'triangle
                                        bqs,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 8) (ly:make-duration 6 0))
                                    \times 8/11
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "tenorvarC"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \ff
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
                                        \p
                                        % SPANNER_STARTS:
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        \revert Staff.Stem.stemlet-length
                                        fs'32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 10) (ly:make-duration 5 0))
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
                                        % SPANNER_STARTS:
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "tight tast." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { wide pont. }
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
                                            fs'
                                            \tweak style #'harmonic
                                            b'
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
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 3) (ly:make-duration 4 0))
                                    \times 6/10
                                    {
                                        <
                                            fs'
                                            \tweak style #'harmonic
                                            b'
                                        >32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % SPANNER_STARTS:
                                        \<
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fs'4
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        fs'32
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 8) (ly:make-duration 6 0))
                                    \times 8/13
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
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
                                        \revert Staff.Stem.stemlet-length
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
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                    \times 10/12
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        e'4
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        e'16.
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) (ly:make-duration 6 0))
                                    \times 12/13
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
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
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { molto tast. }
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
                                        \revert Staff.Stem.stemlet-length
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
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
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) (ly:make-duration 5 0))
                                    \times 4/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >32
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
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        \revert Staff.Stem.stemlet-length
                                        e'8.
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 33 20) (ly:make-duration 6 0))
                                    \times 20/33
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >4...
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
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >32.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :256
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
                                    >64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    \fff
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    fs'64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
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
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 14 17) (ly:make-duration 5 0))
                                    \times 17/14
                                    {
                                        \tweak style #'triangle
                                        bqs,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \pp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \<
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #10.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "molto pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "molto tast." } \hspace #0.5 }\startTextSpanThree
                                        - \tweak padding #12.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "bat. ( no horizontal motion )" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "trat. ( full bows as possible )" } \hspace #0.5 }\startTextSpanTwo
                                        - \tweak padding #14.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "legno" } \hspace #0.5 }
                                        \startTextSpanOne
                                        \tweak style #'triangle
                                        g16
                                        r16
                                        \tweak style #'triangle
                                        bqs,16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        c16
                                        r16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 32 29) (ly:make-duration 5 0))
                                    \times 29/32
                                    {
                                        r16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        c16
                                        r16
                                        \tweak style #'triangle
                                        fqs16
                                        \tweak style #'triangle
                                        c16
                                        \tweak style #'triangle
                                        fqs16
                                        \tweak style #'triangle
                                        dqf16
                                        \tweak style #'triangle
                                        fqs16
                                        \tweak style #'triangle
                                        c16
                                        \tweak style #'triangle
                                        fqs16
                                        \tweak style #'triangle
                                        c16
                                        \tweak style #'triangle
                                        g16
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanThree
                                        r16
                                        \tweak style #'triangle
                                        bqs,16
                                        \tweak style #'triangle
                                        g16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 14 13) (ly:make-duration 5 0))
                                    \times 13/14
                                    {
                                        r16
                                        \tweak style #'triangle
                                        c16
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #10.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "molto tast." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "molto pont." } \hspace #0.5 }\startTextSpanThree
                                        \tweak style #'triangle
                                        fqs16
                                        \tweak style #'triangle
                                        c16
                                        r8
                                        \tweak style #'triangle
                                        g16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 8) (ly:make-duration 4 0))
                                    \times 8/5
                                    {
                                        \tweak style #'triangle
                                        bqs,16
                                        r16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        bqs,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \f
                                        % SPANNER_STARTS:
                                        \>
                                        \tweak style #'triangle
                                        g16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 14 15) (ly:make-duration 4 0))
                                    \times 15/14
                                    {
                                        \tweak style #'triangle
                                        bqs,16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        bqs,16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        bqs,16
                                        \tweak style #'triangle
                                        g16
                                        r16
                                        \tweak style #'triangle
                                        c16
                                        \tweak style #'triangle
                                        g16
                                        r16
                                        \tweak style #'triangle
                                        bqs,16
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanTwo
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        bqs,16
                                        r16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 7) (ly:make-duration 4 0))
                                    \times 7/9
                                    {
                                        r16
                                        \tweak style #'triangle
                                        g16
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #12.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "." } \hspace #0.5 }
                                        \startTextSpanTwo
                                        \tweak style #'triangle
                                        bqs,16
                                        r16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        bqs,16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        bqs,16
                                        \tweak style #'triangle
                                        g16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 16 15) (ly:make-duration 5 0))
                                    \times 15/16
                                    {
                                        \tweak style #'triangle
                                        bqs,16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        c16
                                        \tweak style #'triangle
                                        g16
                                        r16
                                        \tweak style #'triangle
                                        bqs,16
                                        \tweak style #'triangle
                                        g16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % SPANNER_STARTS:
                                        \<
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanThree
                                        r16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 12 13) (ly:make-duration 5 0))
                                    \times 13/12
                                    {
                                        \tweak style #'triangle
                                        bqs,16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        c16
                                        r8
                                        \tweak style #'triangle
                                        g16
                                        % AFTER:
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
                                    \set stemLeftBeamCount = 0
                                    \set stemRightBeamCount = 1
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
                                    \set stemLeftBeamCount = 1
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
                                    \set stemRightBeamCount = 1
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    fs'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
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
                                    \tweak style #'harmonic-mixed
                                    fs'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    r16
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
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
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
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \fff
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    r8..
                                    r16
                                    r32
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 7) (ly:make-duration 5 0))
                                    \times 7/13
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
                                        \pp
                                        % SPANNER_STARTS:
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "tast." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { pont. }
                                        \startTextSpan
                                        - \tweak stencil #constante-hairpin
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
                                        >32
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :256
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
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 24 29) (ly:make-duration 5 0))
                                    \times 29/24
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set Staff.instrumentName = \markup \bold { Violoncello II }
                                        \set Staff.shortInstrumentName = \markup \bold{ vc. II }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \tweak style #'triangle
                                        bqs,16
                                        % AFTER:
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
                                        g16
                                        \tweak style #'triangle
                                        bqs,16
                                        r16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        c16
                                        \tweak style #'triangle
                                        fqs16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \<
                                        \tweak style #'triangle
                                        dqf16
                                        \tweak style #'triangle
                                        fqs16
                                        r16
                                        \tweak style #'triangle
                                        c16
                                        \tweak style #'triangle
                                        g16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 8) (ly:make-duration 6 0))
                                    \times 8/13
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "tenorvarC"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tast. }
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
                                        \revert Staff.Stem.stemlet-length
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e'64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    \f
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "tast." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { molto pont. }
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >32
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) (ly:make-duration 7 0))
                                    \times 12/13
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >16.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % SPANNER_STOPS:
                                        \stopTextSpan
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
                                        \revert Staff.Stem.stemlet-length
                                        <
                                            d'
                                            \tweak style #'harmonic
                                            g'
                                        >128
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    c,2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \p
                                    % SPANNER_STARTS:
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "IV, trem. pont." } \hspace #0.5 }
                                    \startTextSpan
                                    \<
                                    d,8..
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    d,16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % SPANNER_STARTS:
                                    ~
                                    d,16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % SPANNER_STARTS:
                                    ~
                                    d,16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    c,8..
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STARTS:
                                    ~
                                    c,16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % SPANNER_STARTS:
                                    ~
                                    c,16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % SPANNER_STARTS:
                                    ~
                                    c,16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % ARTICULATIONS:
                                    \fff
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
                                    \tweak style #'triangle
                                    g16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \pp
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \<
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #4
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "molto tast." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "molto pont." } \hspace #0.5 }\startTextSpanThree
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "bat. ( no horizontal motion )" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "trat. ( full bows as possible )" } \hspace #0.5 }\startTextSpanTwo
                                    - \tweak padding #8
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \upright "legno" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \tweak style #'triangle
                                    bqs,16
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    bqs,16
                                    r16
                                    \tweak style #'triangle
                                    g16
                                    r16
                                    \tweak style #'triangle
                                    bqs,16
                                    \tweak style #'triangle
                                    g32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'triangle
                                    g32
                                    r16
                                    \tweak style #'triangle
                                    c16
                                    \tweak style #'triangle
                                    fqs16
                                    \tweak style #'triangle
                                    dqf16
                                    \tweak style #'triangle
                                    fqs16
                                    \tweak style #'triangle
                                    dqf16
                                    r32
                                    r32
                                    r16
                                    \tweak style #'triangle
                                    fqs16
                                    \tweak style #'triangle
                                    dqf16
                                    \tweak style #'triangle
                                    fqs16
                                    \tweak style #'triangle
                                    c16
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanThree
                                    \tweak style #'triangle
                                    fqs16
                                    \tweak style #'triangle
                                    dqf16
                                    \tweak style #'triangle
                                    fqs16
                                    \tweak style #'triangle
                                    dqf16
                                    r16
                                    \tweak style #'triangle
                                    fqs16
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #4
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "molto pont." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "molto tast." } \hspace #0.5 }\startTextSpanThree
                                    r16
                                    \tweak style #'triangle
                                    c16
                                    \tweak style #'triangle
                                    g32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'triangle
                                    g32
                                    r16
                                    \tweak style #'triangle
                                    c16
                                    \tweak style #'triangle
                                    fqs16
                                    \tweak style #'triangle
                                    dqf16
                                    \tweak style #'triangle
                                    fqs16
                                    \tweak style #'triangle
                                    dqf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % SPANNER_STARTS:
                                    \>
                                    r16
                                    r32
                                    r32
                                    \tweak style #'triangle
                                    fqs16
                                    \tweak style #'triangle
                                    c16
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    bqs,16
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    bqs,16
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    c16
                                    r16
                                    \tweak style #'triangle
                                    fqs16
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanTwo
                                    r16
                                    \tweak style #'triangle
                                    c16
                                    \tweak style #'triangle
                                    g16
                                    r16
                                    \tweak style #'triangle
                                    c32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'triangle
                                    c32
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \upright "." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    c16
                                    \tweak style #'triangle
                                    fqs16
                                    \tweak style #'triangle
                                    dqf16
                                    r16
                                    r16
                                    \tweak style #'triangle
                                    fqs32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'triangle
                                    fqs32
                                    \tweak style #'triangle
                                    c16
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    c16
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    bqs,16
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    c16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanThree
                                    r16
                                    \tweak style #'triangle
                                    fqs16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \<
                                    r16
                                    \tweak style #'triangle
                                    c16
                                    \tweak style #'triangle
                                    fqs16
                                    r16
                                    \tweak style #'triangle
                                    c32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'triangle
                                    c32
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    c16
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    bqs,16
                                    r16
                                    r16
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    bqs,32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'triangle
                                    bqs,32
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    bqs,16
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    bqs,16
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    c16
                                    r16
                                    \tweak style #'triangle
                                    fqs32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fff
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    fs,32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak padding #5.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                    \startTextSpan
                                    \>
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef,32
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
                                    d,32
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
                                    d,32
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
                                    d,32
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
                                    bf,32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    af,32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    af,32
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
                                    af,32
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
                                    af,32
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
                                    af,32
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
                                    af,32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    af,32
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \>
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g,32
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
                                    fs,32
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
                                    e,32
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
                                    d,32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    % SPANNER_STOPS:
                                    )
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
