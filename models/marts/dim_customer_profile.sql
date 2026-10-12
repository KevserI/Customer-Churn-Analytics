select
    customer_id,
    surname,
    geography,
    gender,
    age
from {{ ref('stg_customer') }}