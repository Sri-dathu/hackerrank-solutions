-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
-- Problem     Weather Observation Station 18
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    sql
-- Status      Accepted
-- Submitted   2026-07-30, 10:42 a.m.
-- ──────────────────────────────────────────────────



SELECT CONVERT(DECIMAL(10,4),
    ABS(MAX(LAT_N) - MIN(LAT_N)) +
    ABS(MAX(LONG_W) - MIN(LONG_W))
)
FROM STATION;
