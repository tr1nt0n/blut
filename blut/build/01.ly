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
                                ef8
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
                                ef32
                                % AFTER:
                                % ARTICULATIONS:
                                \f
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
                            r4
                            r16
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 10/13
                            {
                                ef4
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
                            % OPEN_BRACKETS:
                            \times 8/13
                            {
                                ef8.
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
                                ef64
                                % AFTER:
                                % ARTICULATIONS:
                                \p
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
                            r2..
                            r4
                            r8
                            % BEFORE:
                            % COMMANDS:
                            \set stemLeftBeamCount = 0
                            \set stemRightBeamCount = 1
                            ef8
                            % AFTER:
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
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
                            % STOP_BEAM:
                            ]
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            ef4.
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            s1 * 3/4
                            % AFTER:
                            % ARTICULATIONS:
                            \f
                            s1 * 11/8
                            s1 * 1
                            s1 * 3/8
                            s1 * 13/8
                            s1 * 9/8
                            s1 * 1
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
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            r4.
                            r16
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
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
                            s1 * 1
                            s1 * 3/8
                            s1 * 13/8
                            s1 * 9/8
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
                                    s1 * 3/4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    s1 * 11/8
                                    s1 * 1
                                    s1 * 3/8
                                    s1 * 13/8
                                    s1 * 9/8
                                    s1 * 1
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
                                    s1 * 11/8
                                    s1 * 1
                                    s1 * 3/8
                                    s1 * 13/8
                                    s1 * 9/8
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
