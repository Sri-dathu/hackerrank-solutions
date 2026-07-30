-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
-- Problem     Higher Than 75 Marks
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2025-01-05, 01:22 p.m.
-- ──────────────────────────────────────────────────

Select name from students
where marks>75 
order by substr(name,length(name)-2,3) asc,id asc;