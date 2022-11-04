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
            \time 7/8
            s1 * 7/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            - \markup { \right-align \abs-fontsize #15 { \upright "×4" } }
            % SPANNER_STARTS:
            - \tweak padding #8
            - \abjad-dashed-line-with-hook
            - \tweak bound-details.left.text \markup \concat { \upright { "Rall. sempre" } \hspace #0.5 }
            \startTextSpan
            % COMMANDS:
            \bar ":|."
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            % OPENING:
            % COMMANDS:
            \time 1/16
            s1 * 1/16
            % AFTER:
            % MARKUP:
            - \markup \huge \center-column { \musicglyph "scripts.ulongfermata" } 
            % SPANNER_STOPS:
            \stopTextSpan
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            % OPENING:
            % COMMANDS:
            \time 2/1
            s1 * 2
            % AFTER:
            % COMMANDS:
            \bar "||"
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
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
            - \markup \huge \center-column { \musicglyph "scripts.ulongfermata" } 
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
                            b8
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            s1 * 1/16
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \upright { "1\'" }
                            % OPEN_BRACKETS:
                            \times 1/1
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override NoteHead.duration-log = 2
                                \once \override Rest.transparent = ##t
                                % GROB_OVERRIDES:
                                \once \override Beam.transparent = ##t
                                \once \override Dots.transparent = ##t
                                \once \override Flag.transparent = ##t
                                \once \override Stem.transparent = ##t
                                r2
                                % ABSOLUTE_BEFORE:
                                % COMMANDS:
                                \staff-line-count 5
                                % BEFORE:
                                % COMMANDS:
                                \once \override NoteHead.duration-log = 2
                                % GROB_OVERRIDES:
                                \once \override Beam.transparent = ##t
                                \once \override Dots.transparent = ##t
                                \once \override Flag.transparent = ##t
                                \once \override Stem.transparent = ##t
                                % OPENING:
                                % COMMANDS:
                                \clef "treble"
                                c'''2
                                % AFTER:
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \<
                                \glissando
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \upright { "1\'" }
                            % OPEN_BRACKETS:
                            \times 1/1
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override NoteHead.duration-log = 2
                                % GROB_OVERRIDES:
                                \once \override Beam.transparent = ##t
                                \once \override Dots.transparent = ##t
                                \once \override Flag.transparent = ##t
                                \once \override Stem.transparent = ##t
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                c'''4...
                                % AFTER:
                                % ARTICULATIONS:
                                \mf
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                % BEFORE:
                                % COMMANDS:
                                \once \override NoteHead.duration-log = 2
                                % GROB_OVERRIDES:
                                \once \override Beam.transparent = ##t
                                \once \override Dots.transparent = ##t
                                \once \override Flag.transparent = ##t
                                \once \override Stem.transparent = ##t
                                % OPENING:
                                % COMMANDS:
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                c'''32
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % BEFORE:
                                % COMMANDS:
                                \once \override NoteHead.duration-log = 2
                                \once \override Rest.transparent = ##t
                                % GROB_OVERRIDES:
                                \once \override Beam.transparent = ##t
                                \once \override Dots.transparent = ##t
                                \once \override Flag.transparent = ##t
                                \once \override Stem.transparent = ##t
                                r2
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
                            <b d'>8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            \ppp
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            \<
                            % COMMANDS:
                            \boxed-markup "Frame Drum + Slit Drum w/ sponges ( rub )" 1
                            <b d'>8
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            <b d'>8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            % START_BEAM:
                            [
                            <b d'>8
                            <b d'>8
                            <b d'>8
                            <b d'>8
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            s1 * 1/16
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \upright { "1\'" }
                            % OPEN_BRACKETS:
                            \times 1/1
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override NoteHead.duration-log = 2
                                \once \override Rest.transparent = ##t
                                % GROB_OVERRIDES:
                                \once \override Beam.transparent = ##t
                                \once \override Dots.transparent = ##t
                                \once \override Flag.transparent = ##t
                                \once \override Stem.transparent = ##t
                                r2
                                % AFTER:
                                % COMMANDS:
                                \boxed-markup "Ocean Drum" 1
                                % ABSOLUTE_BEFORE:
                                % COMMANDS:
                                \staff-line-count 1
                                % BEFORE:
                                % COMMANDS:
                                \once \override NoteHead.duration-log = 2
                                % GROB_OVERRIDES:
                                \once \override Beam.transparent = ##t
                                \once \override Dots.transparent = ##t
                                \once \override Flag.transparent = ##t
                                \once \override Stem.transparent = ##t
                                % OPENING:
                                % COMMANDS:
                                \clef "percussion"
                                c'2
                                % AFTER:
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \<
                                \glissando
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \upright { "1\'" }
                            % OPEN_BRACKETS:
                            \times 1/1
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override NoteHead.duration-log = 2
                                % GROB_OVERRIDES:
                                \once \override Beam.transparent = ##t
                                \once \override Dots.transparent = ##t
                                \once \override Flag.transparent = ##t
                                \once \override Stem.transparent = ##t
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                c'4...
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                % BEFORE:
                                % COMMANDS:
                                \once \override NoteHead.duration-log = 2
                                % GROB_OVERRIDES:
                                \once \override Beam.transparent = ##t
                                \once \override Dots.transparent = ##t
                                \once \override Flag.transparent = ##t
                                \once \override Stem.transparent = ##t
                                % OPENING:
                                % COMMANDS:
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                c'32
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % BEFORE:
                                % COMMANDS:
                                \once \override NoteHead.duration-log = 2
                                \once \override Rest.transparent = ##t
                                % GROB_OVERRIDES:
                                \once \override Beam.transparent = ##t
                                \once \override Dots.transparent = ##t
                                \once \override Flag.transparent = ##t
                                \once \override Stem.transparent = ##t
                                r2
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
                                    \ppp
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak padding #4
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "bridge, -45°" } \hspace #0.5 }
                                    \startTextSpan
                                    \<
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
                                    c'8
                                    c'8
                                    c'8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.duration-log = 2
                                    % GROB_OVERRIDES:
                                    \once \override Beam.transparent = ##t
                                    \once \override Dots.transparent = ##t
                                    \once \override Flag.transparent = ##t
                                    \once \override Stem.transparent = ##t
                                    c'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \upright { "1\'" }
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \staff-line-count 5
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.duration-log = 2
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        c,2...
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #10
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "nut" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "bridge" } \hspace #0.5 }\startTextSpanTwo
                                        - \tweak padding #11.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "IV" } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak padding #8.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "trem. wide 45°" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "trem. tight 0°" } \hspace #0.5 }\startTextSpanThree
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.duration-log = 2
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        c,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \fffff
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanThree
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \upright { "1\'" }
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.duration-log = 2
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c,2...
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #6.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "trem. tight 0°" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "no trem. -45°" } \hspace #0.5 }\startTextSpanThree
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.duration-log = 2
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        c,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanOne
                                        \stopTextSpanThree
                                        \stopTextSpanTwo
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
                                    \ppp
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak padding #4
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "bridge, -45°" } \hspace #0.5 }
                                    \startTextSpan
                                    \<
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
                                    c'8
                                    c'8
                                    c'8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.duration-log = 2
                                    % GROB_OVERRIDES:
                                    \once \override Beam.transparent = ##t
                                    \once \override Dots.transparent = ##t
                                    \once \override Flag.transparent = ##t
                                    \once \override Stem.transparent = ##t
                                    c'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \upright { "1\'" }
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \staff-line-count 5
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.duration-log = 2
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        a2...
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "no trem. -45°" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "trem. wide 0°" } \hspace #0.5 }\startTextSpanThree
                                        - \tweak padding #6.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "bridge" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "nut" } \hspace #0.5 }\startTextSpanTwo
                                        - \tweak padding #8.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "I" } \hspace #0.5 }
                                        \startTextSpanOne
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.duration-log = 2
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        a16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \fffff
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanThree
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \upright { "1\'" }
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.duration-log = 2
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a2...
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #3.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "trem. wide 0°" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "trem. tight 45°" } \hspace #0.5 }\startTextSpanThree
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.duration-log = 2
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        a16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanOne
                                        \stopTextSpanThree
                                        \stopTextSpanTwo
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
