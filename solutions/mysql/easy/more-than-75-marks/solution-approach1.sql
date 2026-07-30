-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
-- Problem     Higher Than 75 Marks
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2025-01-05, 01:22 p.m.
-- Technique   substring-sorting-with-secondary-id
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The query filters records by marks and sorts the result set using the last three characters of the name as the primary key and the ID as the secondary key.
-- Interview   Before: "How would you sort by a suffix?" After: "I use the SUBSTR function with length(name)-2 to extract the last three characters, then apply a multi-column ORDER BY clause. This runs in O(N log N) time due to the sorting requirement on the filtered dataset."
-- Pitfalls    (1) Using an incorrect starting index for SUBSTR, which must be length(name)-2 to capture exactly three characters.  (2) Failing to include the secondary sort condition on ID, which is required when the last three characters of the names are identical.
-- ──────────────────────────────────────────────────

Select name from students
where marks>75 
order by substr(name,length(name)-2,3) asc,id asc;