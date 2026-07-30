-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
-- Problem     Top Earners
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    sql
-- Status      Accepted
-- Submitted   2026-07-30, 10:24 a.m.
-- ──────────────────────────────────────────────────


SELECT top 1 salary*months as earnings, count(*) 
from Employee group by salary*months 
order by earnings desc 

