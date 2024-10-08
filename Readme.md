## 1

SELECT \* FROM city WHERE population > 100000 AND countrycode = USA;
-> wrong - USA isn't in inverted comma

SELECT \* FROM city WHERE population > 100000 AND countrycode = 'USA';

## 2

The AS keyword causes errors, so follow this convention: "Select t.Field
From table1 t" instead of "select t.Field From table1 AS t

## 3

SELECT a.id FROM albums a
JOIN bands b ON a.id = b.id
ORDER BY a.id DESC
LIMIT 1,2;

We mustn't use where when we use JOIN.

The WHERE clause might not work as expected in LEFT JOIN or RIGHT JOIN because it can remove rows that the join would normally keep. To avoid this, you should move any filter conditions related to the right (or left) table into the ON clause. This will make sure the join behaves as expected, keeping the rows that should be retained by the outer join.

# 4. UNION vs UNION ALL

The UNION operator combines the result sets of two or more SELECT statements, removing duplicate rows. It returns only distinct rows.

The UNION ALL operator combines the result sets of two or more SELECT statements, including duplicate rows. It returns all rows, including duplicates.
