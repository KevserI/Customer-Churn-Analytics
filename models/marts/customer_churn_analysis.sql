select
    p.customer_id,
    p.surname,
    p.geography,
    p.gender,
    p.age,
    s.credit_score,
    s.tenure,
    s.balance,
    s.num_of_products,
    s.has_cr_card,
    s.is_active_member,
    s.estimated_salary,
    s.exited
from {{ ref('dim_customer_profile') }} p
join {{ ref('fct_customer_status') }} s
    on p.customer_id = s.customer_id