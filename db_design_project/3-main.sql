CREATE TABLE speakers (
    speaker_email TEXT PRIMARY KEY,
    speaker_name TEXT NOT NULL
);
CREATE TABLE sessions (
    session_id TEXT PRIMARY KEY,
    session_title TEXT NOT NULL,
    track_name TEXT NOT NULL,
    room_name TEXT NOT NULL,
    speaker_email TEXT,
    FOREIGN KEY (speaker_email) REFERENCES speakers(speaker_email)
);
CREATE TABLE attendees (
    attendee_id INTEGER PRIMARY KEY,
    attendee_name TEXT NOT NULL,
    attendee_email TEXT NOT NULL UNIQUE,
    company_name TEXT NOT NULL
);
CREATE TABLE registrations (
    attendee_id INTEGER,
    session_id TEXT,
    PRIMARY KEY (attendee_id, session_id),
    FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id),
    FOREIGN KEY (session_id) REFERENCES sessions(session_id)
);
