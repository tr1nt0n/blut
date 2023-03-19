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
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
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
                    d''4
                    ef''4
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPENING:
                    % COMMANDS:
                    \override Staff.Stem.stemlet-length = 0.75
                    ef''16
                    % AFTER:
                    % START_BEAM:
                    [
                    e''16
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    e''8.
                    % OPENING:
                    % COMMANDS:
                    \revert Staff.Stem.stemlet-length
                    c'16
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    ~
                    c'4
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPENING:
                    % COMMANDS:
                    \override Staff.Stem.stemlet-length = 0.75
                    c'16
                    % AFTER:
                    % START_BEAM:
                    [
                    % OPENING:
                    % COMMANDS:
                    \revert Staff.Stem.stemlet-length
                    cs'16
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    ~
                    % OPENING:
                    % COMMANDS:
                    \override Staff.Stem.stemlet-length = 0.75
                    cs'8.
                    % AFTER:
                    % START_BEAM:
                    [
                    % OPENING:
                    % COMMANDS:
                    \revert Staff.Stem.stemlet-length
                    e'16
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    ~
                    e'4
                    ef'8
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPENING:
                    % COMMANDS:
                    \override Staff.Stem.stemlet-length = 0.75
                    ef'8
                    % AFTER:
                    % START_BEAM:
                    [
                    % OPENING:
                    % COMMANDS:
                    \revert Staff.Stem.stemlet-length
                    d''8
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    ~
                    d''4
                    ef''8
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPENING:
                    % COMMANDS:
                    \override Staff.Stem.stemlet-length = 0.75
                    ef''8
                    % AFTER:
                    % START_BEAM:
                    [
                    % OPENING:
                    % COMMANDS:
                    \revert Staff.Stem.stemlet-length
                    e''8
                    % AFTER:
                    % STOP_BEAM:
                    ]
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
                    s1 * 1/2
                    s1 * 3/8
                    % BEFORE:
                    % COMMANDS:
                    \once \override Rest.transparent = ##t
                    r1 * 5/8
                    % BEFORE:
                    % COMMANDS:
                    \once \override Rest.transparent = ##t
                    r1 * 5/8
                    % BEFORE:
                    % COMMANDS:
                    \once \override Rest.transparent = ##t
                    r1 * 5/8
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
                        s1 * 1/2
                        s1 * 3/8
                        % BEFORE:
                        % COMMANDS:
                        \once \override Rest.transparent = ##t
                        r1 * 5/8
                        % BEFORE:
                        % COMMANDS:
                        \once \override Rest.transparent = ##t
                        r1 * 5/8
                        % BEFORE:
                        % COMMANDS:
                        \once \override Rest.transparent = ##t
                        r1 * 5/8
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
                        s1 * 1/2
                        s1 * 3/8
                        % BEFORE:
                        % COMMANDS:
                        \once \override Rest.transparent = ##t
                        r1 * 5/8
                        % BEFORE:
                        % COMMANDS:
                        \once \override Rest.transparent = ##t
                        r1 * 5/8
                        % BEFORE:
                        % COMMANDS:
                        \once \override Rest.transparent = ##t
                        r1 * 5/8
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
