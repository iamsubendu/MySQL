SELECT \* FROM city WHERE population > 100000 AND countrycode = USA;
-> wrong - USA isn't in inverted comma

SELECT \* FROM city WHERE population > 100000 AND countrycode = 'USA';
