with customer_summary as(
select cu.customer_id,
cu.first_name,
cu.last_name,
count (distinct p.policy_id) as total_policies,
sum(p.premium) as total_premium,
sum(c.claim_amount) as total_claims,
round(sum(c.claim_amount)*1.0/sum(p.premium),2) as loss_ratio
from customers cu
left join policies p 
on cu.customer_id =p.customer_id 
left join claims c 
on p.policy_id = c.policy_id 
group by cu.customer_id, cu.first_name, cu.last_name)
select *,
CASE
           WHEN total_premium > 800 THEN 'HIGH_VALUE'
           WHEN total_premium >= 400 THEN 'MEDIUM_VALUE'
           ELSE 'LOW_VALUE'
       END AS customer_segment
from customer_summary;
