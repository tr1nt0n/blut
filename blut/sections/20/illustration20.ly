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
            \tweak text "×7" \startMeasureSpanner
            % BEFORE:
            % COMMANDS:
            \bar ".|:"
            \boxed-markup "rearticulations cresc. dal niente" 1
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            % OPENING:
            % COMMANDS:
            \time 2/1
            s1 * 2
            % AFTER:
            % COMMANDS:
            \bar ":|."
            \once \override Score.BarLine.transparent = ##f
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \stopMeasureSpanner
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            % OPENING:
            % COMMANDS:
            \time 2/1
            s1 * 2
            % AFTER:
            % COMMANDS:
            \boxed-markup "marcato rearticulations" 1
            % OPENING:
            % COMMANDS:
            \time 4/8
            s1 * 1/2
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }
            % OPENING:
            % COMMANDS:
            \time 6/8
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 6/8
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 4/8
            s1 * 1/2
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % ABSOLUTE_BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 3/32
            s1 * 3/32
            % AFTER:
            % MARKUP:
            - \markup \huge \center-column { \musicglyph "scripts.uverylongfermata" } 
            % COMMANDS:
            \bar "|."
            \once \override Score.BarLine.transparent = ##f
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
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \huge \center-column { \musicglyph "scripts.ulongfermata" }
                            % OPEN_BRACKETS:
                            \times 16/29
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override Stem.stencil = ##f
                                \ottava 1
                                \set Staff.instrumentName = \markup \bold { Bass Clarinet }
                                \set Staff.shortInstrumentName = \markup \bold { b. cl. }
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                gs'''!1..
                                % AFTER:
                                % ARTICULATIONS:
                                \ff
                                % MARKUP:
                                ^ \markup \center-align { \concat { G+41 } }
                                % SPANNER_STARTS:
                                - \tweak stencil #constante-hairpin
                                \<
                                \glissando
                                % BEFORE:
                                % COMMANDS:
                                \once \override Accidental.stencil = ##f
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Stem.stencil = ##f
                                % GROB_OVERRIDES:
                                \once \override NoteHead.transparent = ##t
                                g'''16
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \huge \center-column { \musicglyph "scripts.ulongfermata" }
                            % OPEN_BRACKETS:
                            \times 16/29
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override Stem.stencil = ##f
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                f'''!1..
                                % AFTER:
                                % MARKUP:
                                ^ \markup \center-align { \concat { F\raise #0.75 { \teeny \smaller \sharp } -49 } }
                                % SPANNER_STARTS:
                                \glissando
                                % BEFORE:
                                % COMMANDS:
                                \once \override Accidental.stencil = ##f
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Stem.stencil = ##f
                                % GROB_OVERRIDES:
                                \once \override NoteHead.transparent = ##t
                                f'''16
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \huge \center-column { \musicglyph "scripts.uverylongfermata" }
                            % OPEN_BRACKETS:
                            \times 16/29
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override Stem.stencil = ##f
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                e'''!\breve..
                                % AFTER:
                                % ARTICULATIONS:
                                \ffff
                                % MARKUP:
                                ^ \markup \center-align { \concat { E\raise #0.5 { \teeny \flat } +42 } }
                                % SPANNER_STARTS:
                                - \tweak stencil #constante-hairpin
                                \<
                                \glissando
                                % BEFORE:
                                % COMMANDS:
                                \once \override Accidental.stencil = ##f
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Stem.stencil = ##f
                                % GROB_OVERRIDES:
                                \once \override NoteHead.transparent = ##t
                                e'''8
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % OPEN_BRACKETS:
                            \times 8/10
                            {
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                e'''!2
                                % AFTER:
                                % MARKUP:
                                ^ \markup \center-align { \concat { E\raise #0.5 { \teeny \flat } +42 } }
                                % SPANNER_STARTS:
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
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                e'''16
                                % AFTER:
                                % START_BEAM:
                                [
                                % OPENING:
                                % COMMANDS:
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                e'''16
                                % AFTER:
                                % ARTICULATIONS:
                                \mp
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                \ottava 0
                            % CLOSE_BRACKETS:
                            }
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(0.5 1 0.5 9 0.5 0.25 0.5 0.1 0.5 1 9 0 12 0 7 0 0.5 1 0.2 1 0) #2.35  #0.2
                            e'2.
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \>
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            \startTextSpan
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            s1 * 3/4
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTrillSpan
                            % COMMANDS:
                            \textSpannerUp
                            s1 * 1/2
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \huge \center-column { \musicglyph "scripts.ufermata" }
                            % OPEN_BRACKETS:
                            \times 1/1
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Stem.stencil = ##f
                                % GROB_OVERRIDES:
                                \once \override NoteHead.transparent = ##t
                                c'4.
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 3/32
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
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \huge \center-column { \musicglyph "scripts.ulongfermata" }
                            % OPEN_BRACKETS:
                            \times 16/29
                            {
                                % ABSOLUTE_BEFORE:
                                % COMMANDS:
                                \staff-line-count 2
                                % BEFORE:
                                % COMMANDS:
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override Stem.stencil = ##f
                                \set Staff.instrumentName = \markup \bold { Percussions }
                                \set Staff.shortInstrumentName = \markup \bold { perc. }
                                % OPENING:
                                % COMMANDS:
                                \clef "percussion"
                                <b d'>1..
                                % AFTER:
                                % ARTICULATIONS:
                                \ff
                                % SPANNER_STARTS:
                                - \tweak stencil #constante-hairpin
                                \<
                                \glissando
                                % COMMANDS:
                                \boxed-markup "Wood + Stone Wind Chimes" 1
                                % BEFORE:
                                % COMMANDS:
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Stem.stencil = ##f
                                % GROB_OVERRIDES:
                                \once \override NoteHead.transparent = ##t
                                <b d'>16
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \huge \center-column { \musicglyph "scripts.ulongfermata" }
                            % OPEN_BRACKETS:
                            \times 16/29
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override Stem.stencil = ##f
                                <b d'>1..
                                % AFTER:
                                % SPANNER_STARTS:
                                \glissando
                                % BEFORE:
                                % COMMANDS:
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Stem.stencil = ##f
                                % GROB_OVERRIDES:
                                \once \override NoteHead.transparent = ##t
                                <b d'>16
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \huge \center-column { \musicglyph "scripts.uverylongfermata" }
                            % OPEN_BRACKETS:
                            \times 16/29
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override Stem.stencil = ##f
                                <b d'>\breve..
                                % AFTER:
                                % ARTICULATIONS:
                                \ffff
                                % SPANNER_STARTS:
                                - \tweak stencil #constante-hairpin
                                \<
                                \glissando
                                % BEFORE:
                                % COMMANDS:
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Stem.stencil = ##f
                                % GROB_OVERRIDES:
                                \once \override NoteHead.transparent = ##t
                                <b d'>8
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \staff-line-count 1
                            % OPENING:
                            % COMMANDS:
                            \clef "percussion"
                            c'2
                            % AFTER:
                            % ARTICULATIONS:
                            \p
                            % SPANNER_STARTS:
                            \<
                            ~
                            % COMMANDS:
                            \boxed-markup "Ocean Drum" 1
                            c'2.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'2.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'2
                            % AFTER:
                            % ARTICULATIONS:
                            \f
                            % SPANNER_STARTS:
                            ~
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \huge \center-column { \musicglyph "scripts.ufermata" }
                            % OPEN_BRACKETS:
                            \times 16/17
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override Stem.stencil = ##f
                                c'4.
                                % AFTER:
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                \glissando
                                % BEFORE:
                                % COMMANDS:
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Stem.stencil = ##f
                                % GROB_OVERRIDES:
                                \once \override NoteHead.transparent = ##t
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
                                c'64.
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 3/32
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
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \huge \center-column { \musicglyph "scripts.ulongfermata" }
                                    % OPEN_BRACKETS:
                                    \times 16/29
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override Stem.stencil = ##f
                                        \set Staff.instrumentName = \markup \bold { Violoncello I }
                                        \set Staff.shortInstrumentName = \markup \bold { vc. I }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "tenorvarC"
                                        <
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            a
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            b'!
                                        >1..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % MARKUP:
                                        ^ \markup \upright { "+4" }
                                        % SPANNER_STARTS:
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #10.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "molto pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "tast." } \hspace #0.5 }\startTextSpanOne
                                        - \tweak padding #12.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "I + II" } \hspace #0.5 }
                                        \startTextSpanTwo
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Stem.stencil = ##f
                                        % GROB_OVERRIDES:
                                        \once \override NoteHead.transparent = ##t
                                        <a b'>16
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanTwo
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \huge \center-column { \musicglyph "scripts.ulongfermata" }
                                    % OPEN_BRACKETS:
                                    \times 16/29
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override Stem.stencil = ##f
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            c,
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            c''!
                                        >1..
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "+4" }
                                        % SPANNER_STARTS:
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #10.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "." } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak padding #12.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "III + IV" } \hspace #0.5 }
                                        \startTextSpanTwo
                                        \stopTextSpanOne
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Stem.stencil = ##f
                                        % GROB_OVERRIDES:
                                        \once \override NoteHead.transparent = ##t
                                        <c, c''>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanOne
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \huge \center-column { \musicglyph "scripts.uverylongfermata" }
                                    % OPEN_BRACKETS:
                                    \times 16/29
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override Stem.stencil = ##f
                                        <
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            c,
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                            ff'!
                                        >\breve..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ffff
                                        % MARKUP:
                                        ^ \markup \upright { "+50" }
                                        % SPANNER_STARTS:
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Stem.stencil = ##f
                                        % GROB_OVERRIDES:
                                        \once \override NoteHead.transparent = ##t
                                        <c, f'>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 5) (ly:make-duration 1 0))
                                    \times 10/16
                                    {
                                        <
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            c,
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                            ff'!
                                        >\breve...
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "+50" }
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
                                        <c, f'>4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \huge \center-column { \musicglyph "scripts.ufermata" }
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Stem.stencil = ##f
                                        % GROB_OVERRIDES:
                                        \once \override NoteHead.transparent = ##t
                                        c'4.
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanTwo
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 3/32
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
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \huge \center-column { \musicglyph "scripts.ulongfermata" }
                                    % OPEN_BRACKETS:
                                    \times 16/29
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override Stem.stencil = ##f
                                        \set Staff.instrumentName = \markup \bold { Violoncello II }
                                        \set Staff.shortInstrumentName = \markup \bold{ vc. II }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                            c,
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                            g'!
                                        >1..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % MARKUP:
                                        ^ \markup \upright { "-31" }
                                        % SPANNER_STARTS:
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #10.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "molto pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "tast." } \hspace #0.5 }\startTextSpanOne
                                        - \tweak padding #12.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "III + IV" } \hspace #0.5 }
                                        \startTextSpanTwo
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Stem.stencil = ##f
                                        % GROB_OVERRIDES:
                                        \once \override NoteHead.transparent = ##t
                                        <c, g'>16
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanTwo
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \huge \center-column { \musicglyph "scripts.ulongfermata" }
                                    % OPEN_BRACKETS:
                                    \times 16/29
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override Stem.stencil = ##f
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                            a
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                            a''!
                                        >1..
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "-12" }
                                        % SPANNER_STARTS:
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #10.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "." } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak padding #12.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "I + II" } \hspace #0.5 }
                                        \startTextSpanTwo
                                        \stopTextSpanOne
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Stem.stencil = ##f
                                        % GROB_OVERRIDES:
                                        \once \override NoteHead.transparent = ##t
                                        <a af''>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \huge \center-column { \musicglyph "scripts.uverylongfermata" }
                                    % OPEN_BRACKETS:
                                    \times 16/29
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override Stem.stencil = ##f
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            c,
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                                            af'!
                                        >\breve..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ffff
                                        % MARKUP:
                                        ^ \markup \upright { "-31" }
                                        % SPANNER_STARTS:
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #12.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "III + IV" } \hspace #0.5 }
                                        \startTextSpanTwo
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Stem.stencil = ##f
                                        % GROB_OVERRIDES:
                                        \once \override NoteHead.transparent = ##t
                                        <c, a'>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 5) (ly:make-duration 2 0))
                                    \times 10/16
                                    {
                                        <
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            c,
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                                            af'!
                                        >1...
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "-31" }
                                        % SPANNER_STARTS:
                                        \>
                                        \glissando
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
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
                                        <c, a'>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanTwo
                                    % CLOSE_BRACKETS:
                                    }
                                    \tweak style #'triangle
                                    fqs8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    - \tweak padding #5.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "legno trat., molto flaut. pont." } \hspace #0.5 }
                                    \startTextSpan
                                    \tweak style #'triangle
                                    c8
                                    \tweak style #'triangle
                                    g8
                                    r8
                                    \tweak style #'triangle
                                    bqs,8
                                    \tweak style #'triangle
                                    g8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    s1 * 1/2
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \huge \center-column { \musicglyph "scripts.ufermata" }
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Stem.stencil = ##f
                                        % GROB_OVERRIDES:
                                        \once \override NoteHead.transparent = ##t
                                        c'4.
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 3/32
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
