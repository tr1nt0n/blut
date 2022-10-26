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
            \time 8/32
            s1 * 1/4
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            % OPENING:
            % COMMANDS:
            \time 9/32
            s1 * 9/32
            % OPENING:
            % COMMANDS:
            \time 14/32
            s1 * 7/16
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"70" } }
            % OPENING:
            % COMMANDS:
            \time 12/32
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 15/32
            s1 * 15/32
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 13/32
            s1 * 13/32
            % OPENING:
            % COMMANDS:
            \time 13/32
            s1 * 13/32
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            % OPENING:
            % COMMANDS:
            \time 9/32
            s1 * 9/32
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
            \time 8/32
            s1 * 1/4
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #9.5
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            \startTextSpan
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 16/32
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
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
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % OPENING:
            % COMMANDS:
            \time 17/32
            s1 * 17/32
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #9.5
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"117" } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }
            \startTextSpan
            % OPENING:
            % COMMANDS:
            \time 9/32
            s1 * 9/32
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
            % AFTER:
            % SPANNER_STOPS:
            \stopTextSpan
            % OPENING:
            % COMMANDS:
            \time 9/32
            s1 * 9/32
            % OPENING:
            % COMMANDS:
            \time 14/32
            s1 * 7/16
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
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
                            dqs'8.
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            \glissando
                            ~
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            dqs'32
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            dqs'32
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % STOP_BEAM:
                            ]
                            s1 * 9/32
                            s1 * 7/16
                            s1 * 1/4
                            s1 * 1/4
                            s1 * 3/8
                            af'16.
                            % AFTER:
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two)) (lh . (thumb)) (rh . (two)))}
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            \glissando
                            ~
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            af'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            af'16.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            af'32
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            af'32
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
                            % STOP_BEAM:
                            ]
                            dqs'16.
                            % AFTER:
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            ~
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            dqs'16
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            dqs'16
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            dqs'32
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
                            % STOP_BEAM:
                            ]
                            dqs'32
                            % AFTER:
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            \glissando
                            ~
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            dqs'32
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            dqs'32
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
                            % STOP_BEAM:
                            ]
                            fs'16
                            % AFTER:
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (e)))}
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            ~
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
                            fs'32
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            fs'32
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
                            % STOP_BEAM:
                            ]
                            s1 * 13/32
                            s1 * 9/32
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            s1 * 1/4
                            s1 * 1/4
                            s1 * 1/2
                            s1 * 1/4
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            s1 * 17/32
                            s1 * 9/32
                            s1 * 1/4
                            s1 * 9/32
                            s1 * 7/16
                            s1 * 1/4
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
                            c'8.
                            % AFTER:
                            % STEM_TREMOLOS:
                            :64
                            % ARTICULATIONS:
                            \ff
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            \glissando
                            ~
                            % COMMANDS:
                            \boxed-markup "Slit Drum w/ rubber mallets" 1
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            c'32
                            % AFTER:
                            % STEM_TREMOLOS:
                            :256
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c'32
                            % AFTER:
                            % STEM_TREMOLOS:
                            :256
                            % ARTICULATIONS:
                            \!
                            % STOP_BEAM:
                            ]
                            s1 * 9/32
                            s1 * 7/16
                            s1 * 1/4
                            s1 * 1/4
                            s1 * 3/8
                            c'16.
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
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % SPANNER_STARTS:
                            ~
                            c'16.
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % SPANNER_STARTS:
                            ~
                            c'32
                            % AFTER:
                            % STEM_TREMOLOS:
                            :256
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c'32
                            % AFTER:
                            % STEM_TREMOLOS:
                            :256
                            % ARTICULATIONS:
                            \ff
                            % STOP_BEAM:
                            ]
                            c'16.
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            ~
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % SPANNER_STARTS:
                            ~
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c'32
                            % AFTER:
                            % STEM_TREMOLOS:
                            :256
                            % ARTICULATIONS:
                            \ff
                            % STOP_BEAM:
                            ]
                            c'32
                            % AFTER:
                            % STEM_TREMOLOS:
                            :256
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            \glissando
                            ~
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            c'32
                            % AFTER:
                            % STEM_TREMOLOS:
                            :256
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c'32
                            % AFTER:
                            % STEM_TREMOLOS:
                            :256
                            % ARTICULATIONS:
                            \ff
                            % STOP_BEAM:
                            ]
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            ~
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            c'4
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % SPANNER_STARTS:
                            ~
                            c'8..
                            % AFTER:
                            % STEM_TREMOLOS:
                            :64
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            ~
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % SPANNER_STARTS:
                            ~
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % SPANNER_STARTS:
                            ~
                            c'32
                            % AFTER:
                            % STEM_TREMOLOS:
                            :256
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c'32
                            % AFTER:
                            % STEM_TREMOLOS:
                            :256
                            % ARTICULATIONS:
                            \ff
                            % STOP_BEAM:
                            ]
                            s1 * 13/32
                            s1 * 9/32
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            s1 * 1/4
                            s1 * 1/4
                            s1 * 1/2
                            s1 * 1/4
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            s1 * 17/32
                            s1 * 9/32
                            s1 * 1/4
                            s1 * 9/32
                            s1 * 7/16
                            s1 * 1/4
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
                                    b8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "II" \upright "+33" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "scratch." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "flaut." } \hspace #0.5 }\startTextSpanTwo
                                    - \tweak padding #13
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \upright "molto pont." } \hspace #0.5 }
                                    \startTextSpanOne
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    b32
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    b32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    b8.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "II" \upright "+33" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "flaut." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "scratch." } \hspace #0.5 }\startTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak style #'harmonic-mixed
                                    b16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    b32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 11/13
                                    {
                                        r8
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        \tweak style #'triangle
                                        dqf16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % SPANNER_STARTS:
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #4.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "tast." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "pont." } \hspace #0.5 }\startTextSpanTwo
                                        - \tweak padding #6.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "legno bat." } \hspace #0.5 }
                                        \startTextSpanOne
                                        \tweak style #'triangle
                                        fqs16
                                        \tweak style #'triangle
                                        c16
                                        \tweak style #'triangle
                                        g16
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanTwo
                                        r16
                                        \tweak style #'triangle
                                        c16
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #4.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "tast." } \hspace #0.5 }\startTextSpanTwo
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        c16
                                        \tweak style #'triangle
                                        fqs16
                                        \tweak style #'triangle
                                        dqf16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                        r16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    bf8.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "II" \upright "+41" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "fl." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "scr." } \hspace #0.5 }\startTextSpanTwo
                                    - \tweak padding #13
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \upright "molto pont." } \hspace #0.5 }
                                    \startTextSpanOne
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    bf32
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    bf32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    af8.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "II" \upright "+37" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "fl." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "scr." } \hspace #0.5 }\startTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak style #'harmonic-mixed
                                    af16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    af16
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    af32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    b16.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "II" \upright "+33" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "fl." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "scr." } \hspace #0.5 }\startTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    b16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    b16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    b32
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    b32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    bf16.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "II" \upright "+41" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "fl." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "scr." } \hspace #0.5 }\startTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak style #'harmonic-mixed
                                    bf16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    bf16
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    bf32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    af32
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "II" \upright "+37" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    af32
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    af32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    b16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "II" \upright "+33" }
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "fl." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "scr." } \hspace #0.5 }\startTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak style #'harmonic-mixed
                                    b4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b8..
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b32
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    b32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    s1 * 13/32
                                    s1 * 9/32
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/2
                                    s1 * 1/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    s1 * 17/32
                                    s1 * 9/32
                                    s1 * 1/4
                                    s1 * 9/32
                                    s1 * 7/16
                                    s1 * 1/4
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
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    c8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "III" \upright "+51" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #12.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "scratch." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "flaut." } \hspace #0.5 }\startTextSpanTwo
                                    - \tweak padding #14.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \upright "molto pont." } \hspace #0.5 }
                                    \startTextSpanOne
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    c32
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    c32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    c8.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "III" \upright "+51" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #12.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "flaut." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "scratch." } \hspace #0.5 }\startTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak style #'harmonic-mixed
                                    c16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    c32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 11/9
                                    {
                                        \tweak style #'triangle
                                        fqs16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #4.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "tast." } \hspace #0.5 }\startTextSpanTwo
                                        - \tweak padding #6.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "legno bat." } \hspace #0.5 }
                                        \startTextSpanOne
                                        \tweak style #'triangle
                                        c16
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanTwo
                                        r16
                                        \tweak style #'triangle
                                        fqs16
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #4.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "tast." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "pont." } \hspace #0.5 }\startTextSpanTwo
                                        \tweak style #'triangle
                                        c16
                                        \tweak style #'triangle
                                        fqs16
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanTwo
                                        r16
                                        \tweak style #'triangle
                                        c16
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #4.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \upright "pont." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \concat { { \upright "tast." } \hspace #0.5 }\startTextSpanTwo
                                        \tweak style #'triangle
                                        g16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % STOP_BEAM:
                                        ]
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    % CLOSE_BRACKETS:
                                    }
                                    b,8.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "III" \upright "+55" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #12.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "fl." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "scr." } \hspace #0.5 }\startTextSpanTwo
                                    - \tweak padding #14.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \upright "molto pont." } \hspace #0.5 }
                                    \startTextSpanOne
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    b,32
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    b,32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    c8.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "III" \upright "+51" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #12.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "fl." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "scr." } \hspace #0.5 }\startTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak style #'harmonic-mixed
                                    c16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    c16
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    c32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    b,16.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "III" \upright "+55" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #12.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "fl." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "scr." } \hspace #0.5 }\startTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    b,16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    b,16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    b,32
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    b,32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    c16.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "III" \upright "+51" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #12.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "fl." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "scr." } \hspace #0.5 }\startTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak style #'harmonic-mixed
                                    c16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    c16
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    c32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    b,32
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "III" \upright "+55" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    b,32
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    b,32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    c16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "III" \upright "+51" }
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    - \tweak padding #12.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \upright "fl." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \concat { { \upright "scr." } \hspace #0.5 }\startTextSpanTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak style #'harmonic-mixed
                                    c4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    c8..
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    c16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    c16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    c32
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    c32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    s1 * 13/32
                                    s1 * 9/32
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/2
                                    s1 * 1/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/16
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    s1 * 17/32
                                    s1 * 9/32
                                    s1 * 1/4
                                    s1 * 9/32
                                    s1 * 7/16
                                    s1 * 1/4
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
