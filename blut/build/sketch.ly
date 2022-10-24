    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % OPENING:
            % COMMANDS:
            \time 3/1
            s1 * 3
        % CLOSE_BRACKETS:
        }
        % OPEN_BRACKETS:
        \context StaffGroup = "Staff Group"
        <<
            % OPEN_BRACKETS:
            \context Staff = "bassclarinet staff"
            {
                % OPEN_BRACKETS:
                \context Voice = "bassclarinet voice"
                {
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                        fs''!1
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \concat { F+41 } }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                        ef''!1
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \concat { E-49 } }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                        d''!1
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \concat { C\raise #0.75 { \teeny \smaller \sharp } +42 } }
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Staff = "percussion staff"
            {
                % OPEN_BRACKETS:
                \context Voice = "percussion voice"
                {
                    s1 * 3
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context GrandStaff = "sub group 1"
            <<
                % OPEN_BRACKETS:
                \context Staff = "cello 1 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "cello 1 voice"
                    {
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 1/1
                        {
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                a
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                b'!
                            >1
                            % AFTER:
                            % MARKUP:
                            ^ \markup \upright { "+4" }
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                c,
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                c''!
                            >1
                            % AFTER:
                            % MARKUP:
                            ^ \markup \upright { "+4" }
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                c,
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                ff'!
                            >1
                            % AFTER:
                            % MARKUP:
                            ^ \markup \upright { "+4" }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Staff = "cello 2 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "cello 2 voice"
                    {
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 1/1
                        {
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                c,
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                g'!
                            >1
                            % AFTER:
                            % MARKUP:
                            ^ \markup \upright { "31" }
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                a
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                a''!
                            >1
                            % AFTER:
                            % MARKUP:
                            ^ \markup \upright { "31" }
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                c,
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                                af'!
                            >1
                            % AFTER:
                            % MARKUP:
                            ^ \markup \upright { "31" }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
        % CLOSE_BRACKETS:
        >>
    % CLOSE_BRACKETS:
    >>
