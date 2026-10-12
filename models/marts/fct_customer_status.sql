select
    customer_id,
    credit_score,
    tenure,
    balance,
    num_of_products,
    has_cr_card,
    is_active_member,
    estimated_salary,
    exited
from {{ ref('stg_customer') }}