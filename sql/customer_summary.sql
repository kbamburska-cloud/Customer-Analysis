select cu.customer_id,
cu.first_name,
cu.last_name,
count (distinct p.policy_id) as total_policies,
sum(p.premium) as total_premium,
sum(c.claim_amount) as total_claims,
round(sum(c.claim_amount)*100.0/sum(p.premium),2) as loss_ratio
from customers cu
left join policies p 
on cu.customer_id =p.customer_id 
left join claims c 
on p.policy_id = c.policy_id 
group by cu.customer_id, cu.first_name, cu.last_name
order by loss_ratio desc;
