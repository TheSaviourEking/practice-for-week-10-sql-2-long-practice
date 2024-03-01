-- Find the name and birth year of all the cats ordered by descending birth year
-- Your code here
SELECT DISTINCT
  name,
  birth_year
FROM
  cats
-- GROUP BY
--   name
ORDER BY
  birth_year DESC;
