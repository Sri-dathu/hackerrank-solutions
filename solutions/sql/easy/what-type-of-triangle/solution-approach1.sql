-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
-- Problem     Type of Triangle
-- Difficulty  Easy
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    sql
-- Status      Accepted
-- Submitted   2026-07-30, 09:45 a.m.
-- Technique   case-when-conditional-logic
-- Time        O(N)
-- Space       O(1)
-- Insight     The query evaluates triangle validity using the triangle inequality theorem before checking side equality constraints in a specific hierarchical order.
-- Interview   Before: "How would you classify these triangles?" After: "I used a CASE statement to validate the triangle inequality theorem first, ensuring O(N) time complexity, then checked for Equilateral, Isosceles, and Scalene properties in order."
-- Pitfalls    (1) Failing to check the triangle inequality theorem (A+B <= C) first results in incorrect classifications for invalid side lengths.  (2) Checking for Isosceles before Equilateral causes Equilateral triangles to be misclassified as Isosceles due to the logical overlap.
-- ──────────────────────────────────────────────────



SELECT
    CASE
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        ELSE 'Scalene'
    END
FROM TRIANGLES;

