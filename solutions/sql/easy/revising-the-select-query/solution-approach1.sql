-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
-- Problem     Revising the Select Query I
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    sql
-- Status      Accepted
-- Submitted   2026-07-28, 07:47 p.m.
-- ──────────────────────────────────────────────────



SELECT * from city 
where population >100000 and countrycode="usa";

