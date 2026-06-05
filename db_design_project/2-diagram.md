```mermaid
erDiagram
    DEPARTMENTS ||--o{ EMPLOYEES : "has"

    DEPARTMENTS {
        int department_id PK
        string department_name
        string department_location
        string department_manager_email
    }

    EMPLOYEES {
        int employee_id PK
        string employee_name
        string employee_email
        int department_id FK
    }
