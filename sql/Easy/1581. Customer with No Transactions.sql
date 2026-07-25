--Using Sub Query
select customer_id, count_no_trans = count(*) from Visits where visit_id not in (select visit_id from transactions)
group by customer_id

-- Using Joins (Efficient)
select customer_id, count_no_trans = count(*) from(
    select v.visit_id, v.customer_id, t.transaction_id from Visits v left join Transactions t on v.visit_id = t.visit_id 
)a where transaction_id is null 
