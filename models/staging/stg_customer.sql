select
    CustomerId as customer_id,
    trim(Surname) as surname,
    CreditScore as credit_score,
    trim(Geography) as geography,
    trim(Gender) as gender,
    Age as age,
    Tenure as tenure,
    Balance as balance,
    NumOfProducts as num_of_products,
    HasCrCard as has_cr_card,
    IsActiveMember as is_active_member,
    EstimatedSalary as estimated_salary,
    Exited as exited
from dbt_database.raw