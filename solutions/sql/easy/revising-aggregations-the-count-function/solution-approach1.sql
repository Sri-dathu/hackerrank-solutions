-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true
-- Problem     Revising Aggregations - The Count Function
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    sql
-- Status      Accepted
-- Submitted   2026-07-30, 10:06 a.m.
-- Technique   aggregate-count-with-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters the dataset by the population threshold before applying the count aggregate function to the remaining rows.
-- Interview   Before: "How would you count specific rows in a table?" After: "I use the COUNT function combined with a WHERE clause to filter records. This approach runs in O(N) time, where N is the number of rows in the CITY table, ensuring we only count cities with a population exceeding 100,000."
-- Pitfalls    (1) Using COUNT(*) instead of COUNT(name) may include rows with NULL values in the name column if the schema allows them.  (2) Incorrectly placing the population condition in a HAVING clause instead of a WHERE clause would force unnecessary grouping.
-- ──────────────────────────────────────────────────



select count(name) from city 
WHERE population>100000
