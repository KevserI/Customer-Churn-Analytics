select
    case
        when age < 30 then 'young'
        when age between 30 and 50 then 'middle'
        else 'old'
    end as age_group,
    count(*) as total,
    sum(exited) as churned,
    round(100.0 * sum(exited) / count(*), 2) as churn_rate
from {{ ref('customer_churn_analysis') }}
group by 1