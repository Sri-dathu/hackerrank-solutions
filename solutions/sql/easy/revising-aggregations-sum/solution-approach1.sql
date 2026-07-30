-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=true
-- Problem     Revising Aggregations - The Sum Function
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    sql
-- Status      Accepted
-- Submitted   2026-07-30, 10:09 a.m.
-- Technique   aggregate-sum-with-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters rows by the district column before applying the sum aggregate function to the population column.
-- Interview   Before: "How would you calculate the total population for a specific district?" After: "You use the SUM aggregate function combined with a WHERE clause to filter by district, resulting in O(N) time complexity where N is the number of rows in the table."
-- Pitfalls    (1) Failing to use the correct case-sensitive string literal for the district name.  (2) Omitting the WHERE clause, which would return the sum of the entire population column instead of the specific district.
-- ──────────────────────────────────────────────────



select sum(population)from city
where district = 'california'
