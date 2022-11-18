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
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            % OPENING:
            % COMMANDS:
            \time 7/32
            s1 * 7/32
            % OPENING:
            % COMMANDS:
            \time 3/2
            s1 * 3/2
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            % OPENING:
            % COMMANDS:
            \time 7/16
            s1 * 7/16
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            % OPENING:
            % COMMANDS:
            \time 7/8
            s1 * 7/8
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            % OPENING:
            % COMMANDS:
            \time 7/4
            s1 * 7/4
            % OPENING:
            % COMMANDS:
            \time 3/16
            s1 * 3/16
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
            % COMMANDS:
            \bar "||"
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
                            \override TupletNumber.text = \markup \upright { "0.5\"" }
                            % OPEN_BRACKETS:
                            \times 28/29
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
                                gs'''!8..
                                % AFTER:
                                % ARTICULATIONS:
                                \pp
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
                                g'''128
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % COMMANDS:
                                \ottava 0
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(9 15 9 17 9 12 9 8 7 17) #1  #0.2
                            ef1.
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            \mf
                            % SPANNER_STARTS:
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            \startTextSpan
                            - \tweak stencil #constante-hairpin
                            \<
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \upright { "1.5\"" }
                            % OPEN_BRACKETS:
                            \times 28/29
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override Stem.stencil = ##f
                                \ottava 1
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                gs'''!4..
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                \p
                                % MARKUP:
                                ^ \markup \center-align { \concat { G+41 } }
                                % SPANNER_STOPS:
                                \stopTextSpan
                                \stopTrillSpan
                                % SPANNER_STARTS:
                                - \tweak stencil #constante-hairpin
                                \<
                                \glissando
                                % COMMANDS:
                                \textSpannerUp
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
                                g'''64
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % COMMANDS:
                                \ottava 0
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(9 15 9 17 9 12 9 8 7 17) #2  #0.2
                            ef2.
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            \ff
                            % SPANNER_STARTS:
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            \startTextSpan
                            - \tweak stencil #constante-hairpin
                            \<
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \upright { "3\"" }
                            % OPEN_BRACKETS:
                            \times 28/29
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override Stem.stencil = ##f
                                \ottava 1
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                gs'''!2..
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                \mp
                                % MARKUP:
                                ^ \markup \center-align { \concat { G+41 } }
                                % SPANNER_STOPS:
                                \stopTextSpan
                                \stopTrillSpan
                                % SPANNER_STARTS:
                                - \tweak stencil #constante-hairpin
                                \<
                                \glissando
                                % COMMANDS:
                                \textSpannerUp
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
                                g'''32
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % COMMANDS:
                                \ottava 0
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(9 15 9 17 9 12 9 8 7 17) #3  #0.2
                            ef4.
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            \mf
                            % SPANNER_STARTS:
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            \startTextSpan
                            - \tweak stencil #constante-hairpin
                            \<
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \upright { "7\"" }
                            % OPEN_BRACKETS:
                            \times 28/29
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override Beam.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override Stem.stencil = ##f
                                \ottava 1
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                gs'''!1..
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                \mp
                                % MARKUP:
                                ^ \markup \center-align { \concat { G+41 } }
                                % SPANNER_STOPS:
                                \stopTextSpan
                                \stopTrillSpan
                                % SPANNER_STARTS:
                                - \tweak stencil #constante-hairpin
                                \<
                                \glissando
                                % COMMANDS:
                                \textSpannerUp
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
                                g'''16
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % COMMANDS:
                                \ottava 0
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % BEFORE:
                            % COMMANDS:
                            \textSpannerDown
                            \vibrato #'(9 15 9 17 9 12 9 8 7 17) #4  #0.2
                            ef8.
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            \p
                            % SPANNER_STARTS:
                            - \tweak padding #10
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                            \startTextSpan
                            - \tweak stencil #constante-hairpin
                            \<
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan
                            % BEFORE:
                            % COMMANDS:
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            s1 * 1/16
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTrillSpan
                            % COMMANDS:
                            \stopStaff \startStaff
                            \textSpannerUp
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
                            \override TupletNumber.text = \markup \upright { "0.5\"" }
                            % OPEN_BRACKETS:
                            \times 28/29
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
                                <b d'>8..
                                % AFTER:
                                % ARTICULATIONS:
                                \pp
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
                                <b d'>128
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
                            c'8
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
                            % COMMANDS:
                            \boxed-markup "Slit Drum w/ rubber mallets" 1
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
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \mf
                            % STOP_BEAM:
                            ]
                            c'16
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
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \mf
                            % STOP_BEAM:
                            ]
                            c'8
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
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \mf
                            % STOP_BEAM:
                            ]
                            c'16
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
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \mf
                            % STOP_BEAM:
                            ]
                            c'8
                            % AFTER:
                            % STEM_TREMOLOS:
                            :64
                            % START_BEAM:
                            [
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
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \mf
                            % STOP_BEAM:
                            ]
                            c'16
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
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \mf
                            % STOP_BEAM:
                            ]
                            c'8
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
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \mf
                            % STOP_BEAM:
                            ]
                            c'16
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
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \mf
                            % STOP_BEAM:
                            ]
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \upright { "1.5\"" }
                            % OPEN_BRACKETS:
                            \times 28/29
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
                                % OPENING:
                                % COMMANDS:
                                \clef "percussion"
                                <b d'>4..
                                % AFTER:
                                % ARTICULATIONS:
                                \p
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
                                <b d'>64
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
                            c'8
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
                            % COMMANDS:
                            \boxed-markup "Slit Drum w/ rubber mallets" 1
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
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \mf
                            % STOP_BEAM:
                            ]
                            c'16
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
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \mf
                            % STOP_BEAM:
                            ]
                            c'8
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
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \mf
                            % STOP_BEAM:
                            ]
                            c'16
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
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \mf
                            % STOP_BEAM:
                            ]
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \upright { "3\"" }
                            % OPEN_BRACKETS:
                            \times 28/29
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
                                % OPENING:
                                % COMMANDS:
                                \clef "percussion"
                                <b d'>2..
                                % AFTER:
                                % ARTICULATIONS:
                                \mp
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
                                <b d'>32
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
                            c'8
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
                            % COMMANDS:
                            \boxed-markup "Slit Drum w/ rubber mallets" 1
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
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \ff
                            % STOP_BEAM:
                            ]
                            c'16
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
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c'16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \ff
                            % STOP_BEAM:
                            ]
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \upright { "7\"" }
                            % OPEN_BRACKETS:
                            \times 28/29
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
                                % OPENING:
                                % COMMANDS:
                                \clef "percussion"
                                <b d'>1..
                                % AFTER:
                                % ARTICULATIONS:
                                \mp
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
                                <b d'>16
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
                            c'8
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
                            % COMMANDS:
                            \boxed-markup "Slit Drum w/ rubber mallets" 1
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
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \p
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
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \upright { "0.5\"" }
                                    % OPEN_BRACKETS:
                                    \times 28/29
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
                                        >8..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \pp
                                        % MARKUP:
                                        ^ \markup \upright { "+4" }
                                        % SPANNER_STARTS:
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "I + II" } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "tast. moltissimo" } \hspace #0.5 }
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
                                        <a b'>128
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
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 0
                                    \set stemRightBeamCount = 2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \mf
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak stencil #constante-hairpin
                                    \<
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
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 5) (ly:make-duration 4 0))
                                    \times 5/7
                                    {
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
                                        fs'8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                    % CLOSE_BRACKETS:
                                    }
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
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 5) (ly:make-duration 4 0))
                                    \times 5/7
                                    {
                                        r8
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
                                        fs'8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                    % CLOSE_BRACKETS:
                                    }
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
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 5) (ly:make-duration 4 0))
                                    \times 5/7
                                    {
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
                                        \set stemRightBeamCount = 0
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        \tweak style #'triangle
                                        fs'8.
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
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \upright { "1.5\"" }
                                    % OPEN_BRACKETS:
                                    \times 28/29
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
                                        \clef "tenorvarC"
                                        <
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            a
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            b'!
                                        >4..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % MARKUP:
                                        ^ \markup \upright { "+4" }
                                        % SPANNER_STARTS:
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "I + II" } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "molto tast." } \hspace #0.5 }
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
                                        <a b'>64
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
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 0
                                    \set stemRightBeamCount = 2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \mf
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak stencil #constante-hairpin
                                    \<
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
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 5) (ly:make-duration 4 0))
                                    \times 5/7
                                    {
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
                                        fs'8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                    % CLOSE_BRACKETS:
                                    }
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
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \upright { "3\"" }
                                    % OPEN_BRACKETS:
                                    \times 28/29
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
                                        \clef "tenorvarC"
                                        <
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            a
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            b'!
                                        >2..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % MARKUP:
                                        ^ \markup \upright { "+4" }
                                        % SPANNER_STARTS:
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "I + II" } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "molto tast." } \hspace #0.5 }
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
                                        <a b'>32
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
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 0
                                    \set stemRightBeamCount = 2
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \mf
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak stencil #constante-hairpin
                                    \<
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
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 3) (ly:make-duration 4 0))
                                    \times 3/5
                                    {
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
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \upright { "7\"" }
                                    % OPEN_BRACKETS:
                                    \times 28/29
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
                                        \mp
                                        % MARKUP:
                                        ^ \markup \upright { "+4" }
                                        % SPANNER_STARTS:
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "I + II" } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "tast." } \hspace #0.5 }
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
                                        <a b'>16
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
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 0
                                    \set stemRightBeamCount = 2
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
                                    - \tweak stencil #constante-hairpin
                                    \<
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
                                    \!
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
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
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \upright { "0.5\"" }
                                    % OPEN_BRACKETS:
                                    \times 28/29
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
                                        >8..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \pp
                                        % MARKUP:
                                        ^ \markup \upright { "-31" }
                                        % SPANNER_STARTS:
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "III + IV" } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "tast. moltissimo" } \hspace #0.5 }
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
                                        <c, g'>128
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
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "tenorvarC"
                                        <
                                            fqs'
                                            \tweak style #'harmonic
                                            bqf'
                                        >4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        \ff
                                        % SPANNER_STARTS:
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide m.p." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight t. }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fqs'4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            fqs'
                                            \tweak style #'harmonic
                                            bqf'
                                        >4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                    \times 2/3
                                    {
                                        <
                                            fqs'
                                            \tweak style #'harmonic
                                            bqf'
                                        >4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        :32
                                        % SPANNER_STARTS:
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide m.p." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight t. }
                                        \startTextSpan
                                        \glissando
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
                                        :32
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        e'4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        :32
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                    \times 2/3
                                    {
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % SPANNER_STARTS:
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide m.p." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight t. }
                                        \startTextSpan
                                        \glissando
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
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            e'
                                            \tweak style #'harmonic
                                            a'
                                        >4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \upright { "1.5\"" }
                                    % OPEN_BRACKETS:
                                    \times 28/29
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
                                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                            c,
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                            g'!
                                        >4..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % MARKUP:
                                        ^ \markup \upright { "-31" }
                                        % SPANNER_STARTS:
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "III + IV" } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "molto tast." } \hspace #0.5 }
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
                                        <c, g'>64
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
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "tenorvarC"
                                        <
                                            fqs'
                                            \tweak style #'harmonic
                                            bqf'
                                        >4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        \mf
                                        % SPANNER_STARTS:
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide m.p." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight t. }
                                        \startTextSpan
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        fqs'4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            fqs'
                                            \tweak style #'harmonic
                                            bqf'
                                        >4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <
                                            fqs'
                                            \tweak style #'harmonic
                                            bqf'
                                        >8
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        :64
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "wide m.p." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { tight t. }
                                        \startTextSpan
                                        \glissando
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
                                        >8
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        :64
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :64
                                        :64
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \upright { "3\"" }
                                    % OPEN_BRACKETS:
                                    \times 28/29
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
                                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                            c,
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                            g'!
                                        >2..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % MARKUP:
                                        ^ \markup \upright { "-31" }
                                        % SPANNER_STARTS:
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "III + IV" } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "molto tast." } \hspace #0.5 }
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
                                        <c, g'>32
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
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "tenorvarC"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        fqs'
                                        \tweak style #'harmonic
                                        bqf'
                                    >8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    \mf
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "wide m.p." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { tight t. }
                                    \startTextSpan
                                    fqs'8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        fqs'
                                        \tweak style #'harmonic
                                        bqf'
                                    >8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \upright { "7\"" }
                                    % OPEN_BRACKETS:
                                    \times 28/29
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
                                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                            c,
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                            g'!
                                        >1..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % MARKUP:
                                        ^ \markup \upright { "-31" }
                                        % SPANNER_STARTS:
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \glissando
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "III + IV" } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \upright "tast." } \hspace #0.5 }
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
                                        <c, g'>16
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
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "tenorvarC"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        fqs'
                                        \tweak style #'harmonic
                                        bqf'
                                    >16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % ARTICULATIONS:
                                    \p
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "wide m.p." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { tight t. }
                                    \startTextSpan
                                    fqs'16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
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
