-- 1st 

-- create table customer
-- (
-- cust_id int,
-- trans_date date,
-- profit int
-- )

-- select * from customer

-- insert into customer values
-- (001,'2020-10-09',45),
-- (001,'2021-01-13',98),
-- (002,'2017-08-12',456);

/* Gap(in days) between transaction for each customer partitioned by cutomer */

-- select cust_id, trans_date,
-- trans_date - LAG(trans_date) OVER (PARTITION BY cust_id ORDER BY trans_date)
-- AS gap_in_days from customer

/* Gap(in days) between transaction */


-- select 
-- cust_id, 
-- trans_date, 
-- trans_date - lag(trans_date) over (order by trans_date) as gap_in_days 
-- from customer


/* with unsually large gaps(in days) between transactions */

-- with diff_table as 
-- (
-- select 
-- cust_id, 
-- trans_date, 
-- trans_date - lag(trans_date) over (order by trans_date) as gap_in_days 
-- from customer
-- )
-- select * from diff_table
-- where gap_in_days >  500            /*lets assume treshold vlaue is 500*/


-- we can also use datediff function to find the differnce in the dates 

-- Datediff(day, transactiondate, previous date)




