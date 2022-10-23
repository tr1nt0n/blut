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
            \once \override Score.TimeSignature.transparent = ##t
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
            \break
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
                            s1 * 3/8
                            s1 * 5/4
                            s1 * 1/2
                            s1 * 5/8
                            s1 * 1/8
                            s1 * 1
                            s1 * 1/4
                            s1 * 15/8
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            s1 * 1/4
                            s1 * 5/8
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
                            s1 * 15/8
                            s1 * 3/8
                            s1 * 5/4
                            s1 * 1/2
                            s1 * 5/8
                            s1 * 1/8
                            s1 * 1
                            s1 * 1/4
                            s1 * 15/8
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            s1 * 1/4
                            s1 * 5/8
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 0
                                    \set stemRightBeamCount = 2
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
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
                                    - \tweak padding #13
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
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
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
                                        \ppp
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
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
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/7
                                    {
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
                                        \set stemLeftBeamCount = 0
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
                                        % START_BEAM:
                                        [
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
                                        \set stemRightBeamCount = 1
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
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    fs'8
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
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STARTS:
                                    ~
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 2
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
                                        % STOP_BEAM:
                                        ]
                                        r16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 2
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
                                        \set stemLeftBeamCount = 0
                                        \set stemRightBeamCount = 2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \fff
                                        % START_BEAM:
                                        [
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "1/2 scratch" } \hspace #0.5 }
                                        \startTextSpanTwo
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                    % CLOSE_BRACKETS:
                                    }
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
                                    \set stemRightBeamCount = 2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STARTS:
                                    ~
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
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
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
                                    \pp
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    \tweak style #'harmonic-mixed
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STARTS:
                                    ~
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
                                    % STOP_BEAM:
                                    ]
                                    r16
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
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
                                        - \tweak circled-tip ##t
                                        \<
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
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                        fs'4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
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
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
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
                                        \set stemRightBeamCount = 2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 2
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
                                    \times 3/5
                                    {
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
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                    % CLOSE_BRACKETS:
                                    }
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
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \upright "1/2 scratch" } \hspace #0.5 }
                                    \startTextSpanTwo
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
                                    \times 10/13
                                    {
                                        fs'4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
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
                                        \set stemRightBeamCount = 2
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
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanTwo
                                        % BEFORE:
                                        % COMMANDS:
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        fs'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
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
                                        \p
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
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
                                        - \tweak circled-tip ##t
                                        \<
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
                                    % CLOSE_BRACKETS:
                                    }
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
                                    s1 * 1/8
                                    s1 * 1
                                    s1 * 1/4
                                    s1 * 15/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    s1 * 1/4
                                    s1 * 5/8
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
                                    s1 * 3/8
                                    s1 * 5/4
                                    s1 * 1/2
                                    s1 * 5/8
                                    s1 * 1/8
                                    s1 * 1
                                    s1 * 1/4
                                    s1 * 15/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    s1 * 1/4
                                    s1 * 5/8
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
