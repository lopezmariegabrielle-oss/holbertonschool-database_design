```mermaid
erDiagram
    CUSTOMERS ||--o{ ORDERS : "places"
    ORDERS ||--|{ ORDER_ITEMS : "contains"
    PRODUCTS ||--o{ ORDER_ITEMS : "ordered_in"

    CUSTOMERS {
        int customer_id PK
        string customer_name
        string customer_email
    }

    PRODUCTS {
        string product_code PK
        string product_name
        string category_name
    }

    ORDERS {
        int order_id PK
        string order_date
        int customer_id FK
    }

    ORDER_ITEMS {
        int order_id PK, FK
        string product_code PK, FK
        float unit_price_paid
        int quantity
    }
