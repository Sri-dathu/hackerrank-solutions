-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
-- Problem     Weather Observation Station 18
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    sql
-- Status      Accepted
-- Submitted   2026-07-30, 10:42 a.m.
-- Technique   aggregate-math-calculation
-- Time        O(N)
-- Space       O(1)
-- Insight     The Manhattan distance between two points (a, b) and (c, d) is calculated by summing the absolute differences of their coordinates, which simplifies to the sum of the range of each coordinate set.
-- Interview   Before: "How would you calculate the Manhattan distance between the extreme points of a dataset?" After: "I aggregate the min and max values for each dimension in O(N) time, then compute the sum of absolute differences, ensuring the result is rounded to four decimal places as required."
-- Pitfalls    (1) Failing to use the ABS function, which results in incorrect distances when the difference between coordinates is negative.  (2) Neglecting the rounding requirement, which leads to precision errors if the database default output exceeds four decimal places.  (3) Misinterpreting the Manhattan distance formula by attempting to use Euclidean distance instead.
-- ──────────────────────────────────────────────────



SELECT CONVERT(DECIMAL(10,4),
    ABS(MAX(LAT_N) - MIN(LAT_N)) +
    ABS(MAX(LONG_W) - MIN(LONG_W))
)
FROM STATION;
