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
            \time 9/16
            s1 * 9/16
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"117" } }
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
            \time 8/16
            s1 * 1/2
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }
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
            \time 8/16
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 6/16
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 8/16
            s1 * 1/2
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }
            % OPENING:
            % COMMANDS:
            \time 11/16
            s1 * 11/16
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            % OPENING:
            % COMMANDS:
            \time 6/16
            s1 * 3/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }
            % OPENING:
            % COMMANDS:
            \time 8/16
            s1 * 1/2
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
            - \markup \huge \center-column { \musicglyph "scripts.ushortfermata" } 
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % OPENING:
            % COMMANDS:
            \time 13/16
            s1 * 13/16
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
                            s1 * 9/16
                            s1 * 7/8
                            dqs'4...
                            % AFTER:
                            % ARTICULATIONS:
                            \fff
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}
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
                            dqs'32
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            r4
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 16 23) (ly:make-duration 4 0))
                            \times 23/16
                            {
                                dqs'8.
                                % AFTER:
                                % MARKUP:
                                ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}
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
                                dqs'2
                                % AFTER:
                                % ARTICULATIONS:
                                \ff
                                % SPANNER_STARTS:
                                - \tweak stencil #constante-hairpin
                                \<
                                dqs'4
                                % AFTER:
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                ~
                                % OPENING:
                                % COMMANDS:
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                dqs'16
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                            % CLOSE_BRACKETS:
                            }
                            r2
                            s1 * 1/2
                            s1 * 3/8
                            s1 * 1/2
                            s1 * 11/16
                            s1 * 3/8
                            s1 * 1/2
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 16 9) (ly:make-duration 4 0))
                            \times 9/16
                            {
                                dqs'2
                                % AFTER:
                                % MARKUP:
                                ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}
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
                                dqs'4..
                                % AFTER:
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
                                dqs'16
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                            % CLOSE_BRACKETS:
                            }
                            r4
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
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 4 0))
                            \times 7/6
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
                                r8
                                % AFTER:
                                % COMMANDS:
                                \boxed-markup "Chinese Cymbal w/ triangle beater" 1
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                \pp
                                ^ \baca-circle-markup
                                ^ \stopped
                                r8
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 4 0))
                            \times 7/6
                            {
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
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 4 0))
                            \times 7/6
                            {
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                ^ \baca-circle-markup
                                ^ \stopped
                                r4
                            % CLOSE_BRACKETS:
                            }
                            r8
                            c'4.
                            % AFTER:
                            % ARTICULATIONS:
                            \fff
                            % SPANNER_STARTS:
                            - \tweak stencil #constante-hairpin
                            \<
                            % COMMANDS:
                            \boxed-markup "w/ bow" 1
                            c'8
                            % AFTER:
                            % START_BEAM:
                            [
                            c'8
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            c'4.
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \>
                            s1 * 3/4
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            s1 * 15/16
                            s1 * 1/2
                            s1 * 3/8
                            r16
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
                            c'16
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            r16
                            c'8.
                            % AFTER:
                            % ARTICULATIONS:
                            \fff
                            % COMMANDS:
                            \boxed-markup "w/ bow" 1
                            s1 * 11/16
                            c'8.
                            % AFTER:
                            % ARTICULATIONS:
                            \fff
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak stencil #constante-hairpin
                            \<
                            c'16
                            c'16
                            c'16
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            % OPEN_BRACKETS:
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 19 16) (ly:make-duration 5 0))
                            \times 16/19
                            {
                                r32
                                % AFTER:
                                % COMMANDS:
                                \boxed-markup "w/ triangle beater" 1
                                c'32
                                % AFTER:
                                % ARTICULATIONS:
                                ^ \baca-circle-markup
                                ^ \stopped
                                r32
                                c'32
                                % AFTER:
                                % ARTICULATIONS:
                                ^ \baca-circle-markup
                                ^ \stopped
                                c'32
                                % AFTER:
                                % ARTICULATIONS:
                                ^ \baca-circle-markup
                                ^ \stopped
                                r16
                                c'32
                                % AFTER:
                                % ARTICULATIONS:
                                ^ \baca-circle-markup
                                ^ \stopped
                                r16
                                c'32
                                % AFTER:
                                % ARTICULATIONS:
                                ^ \baca-circle-markup
                                ^ \stopped
                                r32
                                c'32
                                % AFTER:
                                % ARTICULATIONS:
                                ^ \baca-circle-markup
                                ^ \stopped
                                r32
                                c'32
                                % AFTER:
                                % ARTICULATIONS:
                                ^ \baca-circle-markup
                                ^ \stopped
                                c'32
                                % AFTER:
                                % ARTICULATIONS:
                                ^ \baca-circle-markup
                                ^ \stopped
                                r16
                                c'32
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                ^ \baca-circle-markup
                                ^ \stopped
                            % CLOSE_BRACKETS:
                            }
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            r32
                            c'32
                            % AFTER:
                            % ARTICULATIONS:
                            \ppp
                            ^ \baca-circle-markup
                            ^ \stopped
                            r32
                            c'32
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            c'32
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            r32
                            r32
                            c'32
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            r32
                            r32
                            c'32
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            r32
                            c'32
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            r32
                            c'32
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            c'32
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            r32
                            r32
                            c'32
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            r32
                            r32
                            c'32
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            r32
                            c'32
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
                            r32
                            c'32
                            % AFTER:
                            % ARTICULATIONS:
                            ^ \baca-circle-markup
                            ^ \stopped
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
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 7) (ly:make-duration 4 0))
                                    \times 7/9
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set Staff.instrumentName = \markup \bold { Violoncello I }
                                        \set Staff.shortInstrumentName = \markup \bold { vc. I }
                                        \set stemLeftBeamCount = 0
                                        \set stemRightBeamCount = 2
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "tenorvarC"
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \ppp
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
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #7.5
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
                                        \<
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
                                        \set stemRightBeamCount = 1
                                        fs'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \pp
                                        % SPANNER_STARTS:
                                        \>
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    fs'16
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
                                    \ppp
                                    % STOP_BEAM:
                                    ]
                                    r8
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 0
                                    \set stemRightBeamCount = 2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \fff
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
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 4 0))
                                    \times 7/6
                                    {
                                        fs'4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 2
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
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanTwo
                                        r16
                                    % CLOSE_BRACKETS:
                                    }
                                    r8
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanOne
                                    s1 * 1/2
                                    s1 * 1/2
                                    s1 * 3/4
                                    s1 * 15/16
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 7) (ly:make-duration 4 0))
                                    \times 7/9
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 0
                                        \set stemRightBeamCount = 2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \pp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2
                                        \glissando
                                        \<
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "flaut." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "1/2 scratch" } \hspace #0.5 }\startTextSpanTwo
                                        - \tweak padding #7.5
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
                                        \set stemRightBeamCount = 1
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        fs'8
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
                                        r16
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 0
                                        \set stemRightBeamCount = 1
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
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
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
                                    \tweak style #'harmonic-mixed
                                    fs'16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    r16
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
                                    \stopTextSpanTwo
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
                                    \fff
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \upright "." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 0
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanTwo
                                        fs'4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \ppp
                                        % SPANNER_STARTS:
                                        \<
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 0
                                        \set stemRightBeamCount = 2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
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
                                        \tweak style #'harmonic-mixed
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \p
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 3) (ly:make-duration 4 0))
                                    \times 3/5
                                    {
                                        r16
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 0
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic-mixed
                                        fs'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \pp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2
                                        \glissando
                                        - \tweak circled-tip ##t
                                        \>
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
                                        \set stemRightBeamCount = 0
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
                                        \!
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    r8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 0
                                    \set stemRightBeamCount = 2
                                    \tweak style #'harmonic-mixed
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \p
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
                                    \fff
                                    % SPANNER_STARTS:
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \upright "1/2 scratch" } \hspace #0.5 }
                                    \startTextSpanTwo
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    fs'16
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 4 0))
                                    \times 7/6
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 0
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanTwo
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        fs'4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \pp
                                    % CLOSE_BRACKETS:
                                    }
                                    r16
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanOne
                                    s1 * 1/2
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 9) (ly:make-duration 4 0))
                                    \times 9/11
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 0
                                        \set stemRightBeamCount = 2
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
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "flaut." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "1/2 scratch" } \hspace #0.5 }\startTextSpanTwo
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
                                        \set stemRightBeamCount = 1
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        fs'8
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
                                        \fff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanTwo
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
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "flaut." } \hspace #0.5 }\startTextSpanTwo
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
                                        \!
                                        % STOP_BEAM:
                                        ]
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    % CLOSE_BRACKETS:
                                    }
                                    r4
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
                                    s1 * 7/8
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
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
                                    d,8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    s1 * 1/2
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    s1 * 3/4
                                    c,2...
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STARTS:
                                    - \tweak padding #3.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "IV, trem. pont." } \hspace #0.5 }
                                    \startTextSpan
                                    d,2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    s1 * 3/8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    s1 * 1/2
                                    s1 * 11/16
                                    s1 * 3/8
                                    s1 * 1/2
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 16 9) (ly:make-duration 4 0))
                                    \times 9/16
                                    {
                                        d,2
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "IV, trem. pont." } \hspace #0.5 }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        d,4..
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
                                        d,16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    r4
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
