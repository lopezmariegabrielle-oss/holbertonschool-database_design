```mermaid
erDiagram
    STUDENTS ||--o{ ENROLLMENTS : "registers"
    COURSES ||--o{ ENROLLMENTS : "includes"
    INSTRUCTORS ||--o{ COURSES : "teaches"

    STUDENTS {
        int student_id PK
        string student_name
        string student_email
    }

    INSTRUCTORS {
        int instructor_id PK
        string instructor_name
        string instructor_email
    }

    COURSES {
        string course_id PK
        string course_name
        int instructor_id FK
    }

    ENROLLMENTS {
        int student_id PK, FK
        string course_id PK, FK
    }
