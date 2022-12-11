    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % OPENING:
            % COMMANDS:
            \time 4/8
            s1 * 1/2
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #8.5
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"117" } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }
            \startTextSpan
            % OPENING:
            % COMMANDS:
            \time 9/8
            s1 * 9/8
            % OPENING:
            % COMMANDS:
            \time 8/8
            s1 * 1
            % AFTER:
            % SPANNER_STOPS:
            \stopTextSpan
            % OPENING:
            % COMMANDS:
            \time 9/8
            s1 * 9/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"117" } }
            % OPENING:
            % COMMANDS:
            \time 8/8
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 4/8
            s1 * 1/2
            % BEFORE:
            % COMMANDS:
            \bar ".|:"
            \once \override Score.BarLine.transparent = ##f
            % OPENING:
            % COMMANDS:
            \time 8/8
            s1 * 1
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #15 { \upright "×3" } }
            % BEFORE:
            % COMMANDS:
            \set Score.repeatCommands = #'((volta "1 - 2"))
            % OPENING:
            % COMMANDS:
            \time 4/8
            s1 * 1/2
            % AFTER:
            % COMMANDS:
            \bar ":|."
            \once \override Score.BarLine.transparent = ##f
            \set Score.repeatCommands = #'((volta #f))
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
                            \mf
                            % START_BEAM:
                            [
                            b8
                            % AFTER:
                            % ARTICULATIONS:
                            \p
                            % STOP_BEAM:
                            ]
                            d'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            \mf
                            r8
                            r4.
                            r4
                            r16
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \staff-line-count 5
                            % OPENING:
                            % COMMANDS:
                            \clef "treble"
                            af'16
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
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
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
                            r16
                            r4
                            r2
                            r8.
                            fs'16
                            % AFTER:
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (e)))}
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
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
                            r8.
                            r4
                            r16.
                            af'32
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
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            af'16
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
                            fs'32
                            % AFTER:
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (e)))}
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
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
                            fs'8
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
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
                            af'16
                            % AFTER:
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two)) (lh . (thumb)) (rh . (two)))}
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
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
                            r16
                            r4
                            r4
                            r8..
                            fs'32
                            % AFTER:
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (e)))}
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
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
                            fs'8
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
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
                            af'16
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
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
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
                            r8.
                            fs'4...
                            % AFTER:
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (e)))}
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
                            fs'32
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
                            af'2.
                            % AFTER:
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two)) (lh . (thumb)) (rh . (two)))}
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
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
                            af'8..
                            % AFTER:
                            % START_BEAM:
                            [
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
                            fs'4...
                            % AFTER:
                            % MARKUP:
                            ^ \markup \override #'(size . .6) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (e)))}
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
                            fs'32
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
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
                            \mf
                            % START_BEAM:
                            [
                            b8
                            % AFTER:
                            % ARTICULATIONS:
                            \p
                            % STOP_BEAM:
                            ]
                            d'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            \mf
                            r8
                            s1 * 9/8
                            s1 * 1
                            s1 * 9/8
                            s1 * 1
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \staff-line-count 1
                            % OPENING:
                            % COMMANDS:
                            \clef "percussion"
                            c'4...
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
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
                            c'32
                            % AFTER:
                            % STEM_TREMOLOS:
                            :256
                            % ARTICULATIONS:
                            \ff
                            c'2.
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
                            \once \override Dots.staff-position = #2
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            c'8..
                            % AFTER:
                            % STEM_TREMOLOS:
                            :64
                            % START_BEAM:
                            [
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
                            c'4...
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
                            c'32
                            % AFTER:
                            % STEM_TREMOLOS:
                            :256
                            % ARTICULATIONS:
                            \ff
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
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
                                                \with
                                                {
                                                    \remove Time_signature_engraver
                                                    \remove Staff_symbol_engraver
                                                    \override Stem.direction = #up
                                                    \override Stem.length = 5
                                                    \override TupletBracket.bracket-visibility = ##t
                                                    \override TupletBracket.direction = #up
                                                    \override TupletBracket.minimum-length = 4
                                                    \override TupletBracket.padding = 1.25
                                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                    \override TupletNumber.font-size = 0
                                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                    tupletFullLength = ##t
                                                }
                                                {
                                                    c'2
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set Staff.instrumentName = \markup \bold { Violoncello I }
                                        \set Staff.shortInstrumentName = \markup \bold { vc. I }
                                        % GROB_OVERRIDES:
                                        \once \override Beam.grow-direction = #left
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \tweak style #'triangle
                                        c32 * 3/2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \fff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "legno trat., molto flaut. pont." } \hspace #0.5 }
                                        \startTextSpan
                                        \>
                                        \tweak style #'triangle
                                        g32 * 25/16
                                        \tweak style #'triangle
                                        c32 * 7/4
                                        r32 * 65/32
                                        \tweak style #'triangle
                                        g32 * 79/32
                                        r32 * 49/16
                                        \tweak style #'triangle
                                        bqs,32 * 29/8
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                                    \times 4/5
                                    {
                                        \tweak style #'triangle
                                        g16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \tweak style #'triangle
                                        bqs,16
                                        r16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        c16
                                    % CLOSE_BRACKETS:
                                    }
                                    \tweak style #'triangle
                                    fqs16
                                    \tweak style #'triangle
                                    dqf16
                                    r16
                                    \tweak style #'triangle
                                    fqs16
                                    \tweak style #'triangle
                                    c16
                                    r16
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    c16
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 4) (ly:make-duration 4 0))
                                    \times 4/3
                                    {
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        bqs,16
                                        r16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) (ly:make-duration 4 0))
                                    \times 4/7
                                    {
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        c16
                                        r16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        bqs,16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        c16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 8) (ly:make-duration 4 0))
                                    \times 8/11
                                    {
                                        r16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        c16
                                        r16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        c16
                                        \tweak style #'triangle
                                        fqs16
                                        \tweak style #'triangle
                                        dqf16
                                        r16
                                        \tweak style #'triangle
                                        fqs16
                                        \tweak style #'triangle
                                        c16
                                    % CLOSE_BRACKETS:
                                    }
                                    r16
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
                                    \tweak style #'triangle
                                    c16
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 4 0))
                                    \times 8/9
                                    {
                                        r16
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
                                        g16
                                        \tweak style #'triangle
                                        c16
                                        r16
                                    % CLOSE_BRACKETS:
                                    }
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    c16
                                    \tweak style #'triangle
                                    fqs16
                                    \tweak style #'triangle
                                    c16
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 4) (ly:make-duration 4 0))
                                    \times 4/3
                                    {
                                        r16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        bqs,16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 8) (ly:make-duration 4 0))
                                    \times 8/11
                                    {
                                        r16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        c16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        bqs,16
                                        r16
                                        \tweak style #'triangle
                                        g16
                                        \tweak style #'triangle
                                        c16
                                        r16
                                        \tweak style #'triangle
                                        fqs16
                                        \tweak style #'triangle
                                        dqf16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) (ly:make-duration 4 0))
                                    \times 4/7
                                    {
                                        \tweak style #'triangle
                                        fqs16
                                        \tweak style #'triangle
                                        dqf16
                                        r16
                                        \tweak style #'triangle
                                        fqs16
                                        \tweak style #'triangle
                                        c16
                                        r16
                                        \tweak style #'triangle
                                        g16
                                    % CLOSE_BRACKETS:
                                    }
                                    \tweak style #'triangle
                                    c16
                                    \tweak style #'triangle
                                    g16
                                    \tweak style #'triangle
                                    bqs,16
                                    r16
                                    \tweak style #'triangle
                                    g16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \<
                                    \tweak style #'triangle
                                    bqs,16
                                    r16
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
                                    \ff
                                    r16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    c2.
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
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    - \tweak padding #12
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "molto pont." } \hspace #0.5 }
                                    \startTextSpan
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    c8..
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    c32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    b,4...
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "III" \upright "+55" }
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
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
                                    b,32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    \stopTextSpan
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
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
                                                \with
                                                {
                                                    \remove Time_signature_engraver
                                                    \remove Staff_symbol_engraver
                                                    \override Stem.direction = #up
                                                    \override Stem.length = 5
                                                    \override TupletBracket.bracket-visibility = ##t
                                                    \override TupletBracket.direction = #up
                                                    \override TupletBracket.minimum-length = 4
                                                    \override TupletBracket.padding = 1.25
                                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                    \override TupletNumber.font-size = 0
                                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                    tupletFullLength = ##t
                                                }
                                                {
                                                    c'2
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set Staff.instrumentName = \markup \bold { Violoncello II }
                                        \set Staff.shortInstrumentName = \markup \bold{ vc. II }
                                        % GROB_OVERRIDES:
                                        \once \override Beam.grow-direction = #left
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \tweak style #'triangle
                                        c32 * 3/2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \fff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        - \tweak padding #5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "legno trat., molto flaut. pont." } \hspace #0.5 }
                                        \startTextSpan
                                        \tweak style #'triangle
                                        fqs32 * 25/16
                                        \tweak style #'triangle
                                        dqf32 * 7/4
                                        r32 * 65/32
                                        \tweak style #'triangle
                                        fqs32 * 79/32
                                        r32 * 49/16
                                        \tweak style #'triangle
                                        dqf32 * 29/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    r4.
                                    r4
                                    r16
                                    af16
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
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "molto pont." } \hspace #0.5 }
                                    \startTextSpan
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
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
                                    r16
                                    r4
                                    r2
                                    r8.
                                    \tweak style #'harmonic-mixed
                                    bf16
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak style #'harmonic-mixed
                                    bf32
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
                                    r8.
                                    r4
                                    r16.
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    af16
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
                                    bf32
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak style #'harmonic-mixed
                                    bf8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'harmonic-mixed
                                    bf32
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
                                    af16
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
                                    \<
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
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
                                    r16
                                    r4
                                    r4
                                    r8..
                                    \tweak style #'harmonic-mixed
                                    bf32
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak style #'harmonic-mixed
                                    bf8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'harmonic-mixed
                                    bf32
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
                                    af16
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
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
                                    r8.
                                    \tweak style #'harmonic-mixed
                                    bf4...
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "II" \upright "+41" }
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2
                                    \glissando
                                    - \tweak circled-tip ##t
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
                                    bf32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    af2.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "II" \upright "+37" }
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    af8..
                                    % AFTER:
                                    % START_BEAM:
                                    [
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
                                    bf4...
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \upright "II" \upright "+41" }
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
                                    bf32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STOPS:
                                    )
                                    \stopTextSpan
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
