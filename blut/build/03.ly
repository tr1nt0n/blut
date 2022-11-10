    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % OPENING:
            % COMMANDS:
            \time 9/32
            s1 * 9/32
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
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
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"140" } }
            % OPENING:
            % COMMANDS:
            \time 4/32
            s1 * 1/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"94" } }
            % OPENING:
            % COMMANDS:
            \time 8/32
            s1 * 1/4
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \break
            % OPENING:
            % COMMANDS:
            \time 12/32
            s1 * 3/8
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }
            % OPENING:
            % COMMANDS:
            \time 4/32
            s1 * 1/8
            % OPENING:
            % COMMANDS:
            \time 15/32
            s1 * 15/32
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
            - \markup \huge \center-column { \musicglyph "scripts.ufermata" } 
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
                            \override TupletNumber.text = \markup \italic 8:5
                            % OPEN_BRACKETS:
                            \times 10/16
                            {
                                % BEFORE:
                                % COMMANDS:
                                \set Staff.instrumentName = \markup \bold { Bass Clarinet }
                                \set Staff.shortInstrumentName = \markup \bold { b. cl. }
                                af!1
                                % AFTER:
                                % SPANNER_STARTS:
                                (
                                - \tweak circled-tip ##t
                                \<
                                \glissando
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \three-eighths-flat-markup
                                a!2..
                                % AFTER:
                                % ARTICULATIONS:
                                \mf
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                \glissando
                                af!8
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % SPANNER_STOPS:
                                )
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            s1 * 1/4
                            r16
                            dqs'16
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
                            dqs'8
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            dqs'16
                            % AFTER:
                            % ARTICULATIONS:
                            \fff
                            % STOP_BEAM:
                            ]
                            r16
                            s1 * 3/8
                            s1 * 1/8
                            s1 * 15/32
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
                            \times 9/8
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
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                \p
                                % SPANNER_STARTS:
                                - \tweak padding #6
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "pizz." } \hspace #0.5 }
                                \startTextSpan
                                % COMMANDS:
                                \boxed-markup "Lion\'s Roar" 1
                                c'8
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \times 2/3
                            {
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                c'8
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                            % CLOSE_BRACKETS:
                            }
                            c'16.
                            c'16.
                            c'16.
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/10
                            {
                                c'8
                                c'8
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                c'8
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                % SPANNER_STOPS:
                                \stopTextSpan
                            % CLOSE_BRACKETS:
                            }
                            s1 * 1/4
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
                            \fff
                            % STOP_BEAM:
                            ]
                            r16
                            c'8
                            % AFTER:
                            % STEM_TREMOLOS:
                            :64
                            % ARTICULATIONS:
                            \fff
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            s1 * 3/8
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            s1 * 1/8
                            s1 * 15/32
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
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    cqs'''16.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak padding #9.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                    \startTextSpan
                                    ~
                                    \tweak style #'harmonic-mixed
                                    cqs'''32
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    a''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    a''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    cqs'''32
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    cqs'''16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    cqs'''32
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    g''32
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    g''16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    g''32
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    c,32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \upright { "IV" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    c,8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c,16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c,16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    cqs'''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    cqs'''16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    cqs'''32
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    a''32
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    a''16.
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    cqs'''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    s1 * 1/4
                                    s1 * 1/8
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
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
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "scratch" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { flaut. molto pont. }
                                    \startTextSpan
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
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fff
                                    % SPANNER_STOPS:
                                    )
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
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
                                    - \tweak padding #12.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "flaut." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { scratch m.p. }
                                    \startTextSpan
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
                                    c16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fff
                                    % SPANNER_STOPS:
                                    )
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    af8
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
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "fl.m.p." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { scratch }
                                    \startTextSpan
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
                                    af16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fff
                                    % SPANNER_STOPS:
                                    )
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    r16
                                    r8
                                    b32
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
                                    \>
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    b32
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    b8
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    c16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
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
                                    c16.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    % SPANNER_STOPS:
                                    )
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
                                    r16.
                                    r32
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        c'''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        % SPANNER_STARTS:
                                        - \tweak padding #9.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                        \startTextSpan
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        a4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % MARKUP:
                                        ^ \markup \upright { "I" }
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    gqs'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    \tweak style #'harmonic-mixed
                                    gqs'''32
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    c,8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % MARKUP:
                                    ^ \markup \upright { "IV" }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    c,16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/9
                                    {
                                        c,8.
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        c'''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        \tweak style #'harmonic-mixed
                                        g''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        \tweak style #'harmonic-mixed
                                        c'''8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    r8
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "tenorvarC"
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \fp
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \glissando
                                    e'8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    <
                                        e'
                                        \tweak style #'harmonic
                                        a'
                                    >16.
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \<
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    b,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fff
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
                                    \>
                                    - \tweak padding #12
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "scratch" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { flaut. molto pont. }
                                    \startTextSpan
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    b,8
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    b,16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    r16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
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
                                    - \tweak padding #13
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "flaut." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { scratch m.p. }
                                    \startTextSpan
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
                                    af16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fff
                                    % SPANNER_STOPS:
                                    )
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    bf8
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
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "fl.m.p." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { scratch }
                                    \startTextSpan
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
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fff
                                    % SPANNER_STOPS:
                                    )
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    r16
                                    r8
                                    b,32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
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
                                    \>
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
                                    b,8
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    \tweak style #'harmonic-mixed
                                    af16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
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
                                    \>
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
                                    af16.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    % SPANNER_STOPS:
                                    )
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
