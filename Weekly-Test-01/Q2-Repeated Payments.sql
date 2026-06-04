select 
from 
transactions t
inner join 
transactions t1
ON
t1.merchant_id=t.merchant_id,
t1.credit_card_id=t.credit_card_id,
t1.amount=t.amount,
EXTRACT(day from t1.transaction_timestamp=t.transaction_timestamp),
EXTRACT(day from t1.transaction_timestamp=t.transaction_timestamp)

select count(*)-10 as payment_count from transactions
