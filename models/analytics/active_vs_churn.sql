select
    is_active_member,
    count(*) as total_customers,
    sum(exited) as churned_customers,
    round(100.0 * sum(exited) / count(*), 2) as churn_rate
from {{ ref('customer_churn_analysis') }}
group by is_active_member