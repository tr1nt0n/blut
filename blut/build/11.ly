    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 11/40
            s1 * 11/40
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 13/28
            s1 * 13/28
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 16/24
            s1 * 2/3
            % OPENING:
            % COMMANDS:
            \time 17/32
            s1 * 17/32
            % AFTER:
            % MARKUP:
            - \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"47" } }
            % OPENING:
            % COMMANDS:
            \time 14/32
            s1 * 7/16
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #8.5
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \abs-fontsize #12 \upright { "Accel." } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \abs-fontsize #12 \concat { \abjad-metronome-mark-markup #3 #0 #1 #"117" } }
            \startTextSpan
            % OPENING:
            % COMMANDS:
            \time 12/32
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 15/32
            s1 * 15/32
            % OPENING:
            % COMMANDS:
            \time 11/32
            s1 * 11/32
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
            - \abjad-dashed-line-with-hook
            - \tweak bound-details.left.text \markup \concat { \upright { "Rall." } \hspace #0.5 }
            \startTextSpan
            % ABSOLUTE_BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 1/16
            s1 * 1/16
            % AFTER:
            % MARKUP:
            - \markup \huge \center-column { \musicglyph "scripts.ufermata" } 
            % SPANNER_STOPS:
            \stopTextSpan
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
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \italic 5:4
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 32/40
                            {
                                % BEFORE:
                                % COMMANDS:
                                \set Staff.instrumentName = \markup \bold { Bass Clarinet }
                                \set Staff.shortInstrumentName = \markup \bold { b. cl. }
                                bf4
                                % AFTER:
                                % ARTICULATIONS:
                                \ff
                                % SPANNER_STARTS:
                                - \tweak padding #3.5
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                                \startTextSpan
                                - \tweak stencil #constante-hairpin
                                \<
                                ~
                                bf16.
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \override TupletNumber.text = \markup \italic 7:4
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 16/28
                            {
                                af2.
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                                af16
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                                % SPANNER_STOPS:
                                \stopTextSpan
                            % CLOSE_BRACKETS:
                            }
                            % AFTER:
                            % GROB_REVERTS:
                            \revert TupletNumber.text
                            s1 * 2/3
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 16 29) (ly:make-duration 4 0))
                            \times 29/16
                            {
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \one-eighth-flat-markup
                                e!2
                                % AFTER:
                                % SPANNER_STARTS:
                                (
                                - \tweak circled-tip ##t
                                \<
                                \glissando
                                ef!4..
                                % AFTER:
                                % SPANNER_STARTS:
                                \glissando
                                eqf!16
                                % AFTER:
                                % ARTICULATIONS:
                                \ffff
                                % SPANNER_STOPS:
                                )
                            % CLOSE_BRACKETS:
                            }
                            s1 * 11/32
                            s1 * 13/32
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
                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5
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
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \ff
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                - \tweak stencil #constante-hairpin
                                \<
                                % COMMANDS:
                                \boxed-markup "Frame Drum + Slit Drum w/ drum sticks" 1
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                <b d'>32
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \!
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            s1 * 13/28
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                <b d'>4
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \ff
                                % SPANNER_STARTS:
                                \<
                                b4
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                d'4
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \fff
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                <b d'>4
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                            % CLOSE_BRACKETS:
                            }
                            s1 * 17/32
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 4 0))
                            \times 7/6
                            {
                                % ABSOLUTE_BEFORE:
                                % COMMANDS:
                                \staff-line-count 1
                                % OPENING:
                                % COMMANDS:
                                \clef "percussion"
                                c'8
                                % AFTER:
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \<
                                - \tweak padding #6.5
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "pizz." } \hspace #0.5 }
                                \startTextSpan
                                % COMMANDS:
                                \boxed-markup "Lion's Roar" 1
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                            % CLOSE_BRACKETS:
                            }
                            c'8
                            c'8
                            c'8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 14 15) (ly:make-duration 5 0))
                            \times 15/14
                            {
                                c'16
                                c'16
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                c'16
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                c'16
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 11) (ly:make-duration 5 0))
                            \times 11/10
                            {
                                c'16
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                \ffff
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \>
                                c'16
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 12 13) (ly:make-duration 5 0))
                            \times 13/12
                            {
                                c'16
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                c'16
                                c'16
                                c'16
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                \!
                                % SPANNER_STOPS:
                                \stopTextSpan
                            % CLOSE_BRACKETS:
                            }
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
                                    s1 * 11/40
                                    s1 * 13/28
                                    s1 * 2/3
                                    s1 * 17/32
                                    s1 * 7/16
                                    s1 * 3/8
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 15) (ly:make-duration 5 0))
                                    \times 15/13
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'harmonic-mixed
                                        g''16
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #6.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                        \startTextSpan
                                        - \tweak padding #9.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                        \startTextSpan
                                        \tweak style #'harmonic-mixed
                                        d'''16
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        fs'''16
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        c,8.
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "IV" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'harmonic-mixed
                                        dqs'''32
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 11) (ly:make-duration 5 0))
                                    \times 11/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'harmonic-mixed
                                        dqs'''32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        a16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ffff
                                        % MARKUP:
                                        ^ \markup \upright { "I" }
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \revert Staff.Stem.stemlet-length
                                        c,8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "IV" }
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 13) (ly:make-duration 5 0))
                                    \times 13/15
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        a''16
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        a4
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "I" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'harmonic-mixed
                                        cqs'''16
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        % START_BEAM:
                                        [
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        c,16
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "IV" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'harmonic-mixed
                                        g''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
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
                                    s1 * 11/40
                                    s1 * 13/28
                                    s1 * 2/3
                                    s1 * 17/32
                                    s1 * 7/16
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                    \times 6/5
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'harmonic-mixed
                                        g''16
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #6.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                        \startTextSpan
                                        - \tweak padding #9.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "pizz. molto pont." } \hspace #0.5 }
                                        \startTextSpan
                                        \tweak style #'harmonic-mixed
                                        cqs'''16
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "III" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        e'''16
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "II" }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \revert Staff.Stem.stemlet-length
                                        a8
                                        % AFTER:
                                        % MARKUP:
                                        ^ \markup \upright { "I" }
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic-mixed
                                    d'''32
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic-mixed
                                    d'''32
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic-mixed
                                    gqs'''32
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic-mixed
                                    gqs'''32
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    c,16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "IV" }
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    c,16
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic-mixed
                                    c'''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    a32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ffff
                                    % MARKUP:
                                    ^ \markup \upright { "I" }
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    a16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    a16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    a16
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    g''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    \tweak style #'harmonic-mixed
                                    cqs'''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    \tweak style #'harmonic-mixed
                                    e'''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic-mixed
                                    d'''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "III" }
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic-mixed
                                    gqs'''32
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic-mixed
                                    gqs'''32
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    c,32
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "IV" }
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    c,8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c,32
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic-mixed
                                    c'''32
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \upright { "II" }
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic-mixed
                                    c'''32
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic-mixed
                                    c'32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
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
