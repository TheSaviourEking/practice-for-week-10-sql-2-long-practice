-- Find the name of the cats who have an owner whose first name begins with an "H"
-- Your code here
SELECT
  cats.name
FROM
  cats
  JOIN cat_owners ON (cat_owners.cat_id = cats.id)
  JOIN owners ON (cat_owners.owner_id = owners.id)
WHERE
  -- owners.first_name like 'H%';
  SUBSTR(owners.first_name, 1, 1) = 'H';
