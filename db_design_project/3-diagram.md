```mermaid
erDiagram
    SPEAKERS ||--o{ SESSIONS : "presents"
    ATTENDEES ||--o{ REGISTRATIONS : "registers"
    SESSIONS ||--o{ REGISTRATIONS : "includes"

    SPEAKERS {
        string speaker_email PK
        string speaker_name
    }

    SESSIONS {
        string session_id PK
        string session_title
        string track_name
        string room_name
        string speaker_email FK
    }

    ATTENDEES {
        int attendee_id PK
        string attendee_name
        string attendee_email
        string company_name
    }

    REGISTRATIONS {
        int attendee_id PK, FK
        string session_id PK, FK
    }
