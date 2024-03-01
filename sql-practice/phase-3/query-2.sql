-- Find All the Toys for Hermione's cats
-- Your code here
--- THREE joins
-- SELECT
--   toys.name
-- FROM
--   toys
--   JOIN cats ON (toys.cat_id = cats.id)
--   JOIN cat_owners ON (cat_owners.cat_id = toys.cat_id)
--   JOIN owners ON (owners.id = cat_owners.owner_id)
-- WHERE
--   owners.first_name = 'Hermione';

-- TWO JOINS
SELECT
  toys.name
FROM
  toys
  JOIN cats ON (toys.cat_id = cats.id)
  JOIN cat_owners ON (
    cat_owners.cat_id = toys.cat_id
    AND cat_owners.owner_id = (
      SELECT
        id
      FROM
        owners
      WHERE
        owners.first_name = 'Hermione'
    )
  );
