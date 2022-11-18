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
            \time 11/32
            s1 * 11/32
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #8.5
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"140" } }
            \startTextSpan
            % OPENING:
            % COMMANDS:
            \time 13/32
            s1 * 13/32
            % OPENING:
            % COMMANDS:
            \time 11/32
            s1 * 11/32
            % OPENING:
            % COMMANDS:
            \time 13/32
            s1 * 13/32
            % OPENING:
            % COMMANDS:
            \time 15/32
            s1 * 15/32
            % AFTER:
            % SPANNER_STOPS:
            \stopTextSpan
            % OPENING:
            % COMMANDS:
            \time 13/32
            s1 * 13/32
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #8.5
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \abs-fontsize #12 \upright { "Rit." } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }
            \startTextSpan
            % OPENING:
            % COMMANDS:
            \time 16/32
            s1 * 1/2
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
                            s1 * 11/32
                            s1 * 13/32
                            s1 * 11/32
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
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
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
                            b32
                            % AFTER:
                            % ARTICULATIONS:
                            \f
                            % STOP_BEAM:
                            ]
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 7) (ly:make-duration 3 0))
                            \times 14/16
                            {
                                % ABSOLUTE_BEFORE:
                                % COMMANDS:
                                \staff-line-count 5
                                % BEFORE:
                                % COMMANDS:
                                \textSpannerDown
                                \vibrato #'(9 8 7 6 5 4 3 2 1 0.75 0.5 0.25 0) #2  #0.2
                                % OPENING:
                                % COMMANDS:
                                \clef "treble"
                                e'2.
                                % AFTER:
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \<
                                - \tweak padding #10
                                - \abjad-dashed-line-with-up-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                \startTextSpan
                                \glissando
                                ~
                                % TRILL_SPANNER_STARTS:
                                \startTrillSpan
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                e'16
                                % AFTER:
                                % START_BEAM:
                                [
                                e'8
                                % AFTER:
                                % ARTICULATIONS:
                                \ff
                                % SPANNER_STOPS:
                                \stopTrillSpan
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                % OPENING:
                                % COMMANDS:
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                e'16
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                \textSpannerUp
                            % CLOSE_BRACKETS:
                            }
                            s1 * 1/2
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
                            d'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            \p
                            % START_BEAM:
                            [
                            % COMMANDS:
                            \boxed-markup "Frame Drum + Slit Drum w/ sponges" 1
                            b8
                            % AFTER:
                            % ARTICULATIONS:
                            \ppp
                            % STOP_BEAM:
                            ]
                            d'16.
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            \p
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            ~
                            d'32
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
                            b16.
                            % AFTER:
                            % ARTICULATIONS:
                            \ppp
                            % SPANNER_STARTS:
                            ~
                            b32
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
                            b16.
                            % AFTER:
                            % ARTICULATIONS:
                            \ppp
                            % SPANNER_STARTS:
                            ~
                            b32
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
                                    s1 * 11/32
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
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak padding #2.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "bridge, -45°" } \hspace #0.5 }
                                    \startTextSpan
                                    c'8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    c'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    c'32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'16.
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
                                    % START_BEAM:
                                    [
                                    c'8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    c'32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \f
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 14 15) (ly:make-duration 5 0))
                                    \times 15/14
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \staff-line-count 5
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \tweak style #'triangle
                                        c16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "legno trat., molto flaut. pont." } \hspace #0.5 }
                                        \startTextSpan
                                        r16
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
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 13) (ly:make-duration 5 0))
                                    \times 13/10
                                    {
                                        r16
                                        \tweak style #'triangle
                                        bqs,16
                                        r16
                                        \tweak style #'triangle
                                        g16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        \tweak style #'triangle
                                        c16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    s1 * 1/2
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
                                    s1 * 11/32
                                    s1 * 13/32
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
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak padding #2.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "bridge, -45°" } \hspace #0.5 }
                                    \startTextSpan
                                    c'8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    c'16.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    c'32
                                    c'8
                                    c'8
                                    c'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 7) (ly:make-duration 3 0))
                                    \times 14/16
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \staff-line-count 5
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        d,2.
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #9.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "IV, trem. pont." } \hspace #0.5 }
                                        \startTextSpan
                                        \glissando
                                        ~
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        d,16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % START_BEAM:
                                        [
                                        d,8
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
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
                                        d,16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    s1 * 1/2
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
