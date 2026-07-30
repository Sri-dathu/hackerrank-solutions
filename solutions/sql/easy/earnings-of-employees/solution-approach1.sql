-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
-- Problem     Top Earners
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    sql
-- Status      Accepted
-- Submitted   2026-07-30, 10:24 a.m.
-- Technique   group-by-aggregation-sort
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The query calculates total earnings per employee, groups identical earnings to count occurrences, and selects the highest value by sorting in descending order.
-- Interview   Before: "I would iterate through the table to find the max earnings and then count the occurrences." After: "I used a group-by aggregation with an order-by clause to identify the maximum earnings and count in O(N log N) time, which handles the requirement to return both values efficiently."
-- Pitfalls    (1) Failing to group by the calculated earnings expression results in an invalid query for aggregate functions.  (2) Using an incorrect sort order would return the minimum earnings instead of the maximum.  (3) Omitting the count function prevents identifying the number of employees sharing the maximum earnings value.
-- ──────────────────────────────────────────────────


SELECT top 1 salary*months as earnings, count(*) 
from Employee group by salary*months 
order by earnings desc 

