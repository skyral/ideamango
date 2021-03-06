UPDATE cities as c
        INNER JOIN regions as r
             ON c.region = r.region_code AND c.country_code = r.country_code
SET c.region_id = r.id

UPDATE cities as c
        INNER JOIN countries as co
             ON c.country_code = co.country_code
SET c.country_id = co.id


UPDATE regions as r
  INNER JOIN countries as c
    ON r.country_code = c.country_code
SET r.country_id = c.id
