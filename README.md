# Customer Value & Risk Analysis

I built this project to understand which customers 
are the most valuable and which generate the most risk.

I used the same insurance dataset as in project 1 
but this time I focused on individual customers 
rather than the overall portfolio.

## What I looked at
- Total premium and claims per customer
- Loss ratio per customer
- Which customers have the most policies
- Customer segmentation by value (High / Medium / Low)
- Which customers are high risk

## What I found
- Henry Scott has the highest loss ratio (2.0) — 
  claims are double his premium
- Emma Clark generates the most premium (£1,100) 
  but also has elevated risk (loss ratio 1.27)
- Only 3 customers are High Value but they generate 
  36% of total portfolio premium
- Portfolio loss ratio is 97% — claims are close 
  to total premium which is a concern

## Tools
SQL (PostgreSQL, DBeaver) · Excel (Pivot Tables · Dashboard)

## Technical Highlights
- CTEs and window functions (RANK)
- LEFT JOINs across 3 tables
- CASE WHEN for segmentation
- Loss ratio calculation per customer

## Files
- `/sql` — SQL queries
- `/excel` — Excel dashboard
- `/data` — CSV export

## Dashboard
![Dashboard](images/customer_dashboard.png)
