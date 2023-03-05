#8
SELECT name,population,area FROM world
WHERE area > 3000000 AND population < 250000000
OR area < 3000000 AND population > 250000000;

#9
SELECT name, ROUND(population/1000000, 2) AS population, ROUND(gdp/1000000000, 2) AS gdp FROM world
WHERE continent LIKE 'South America';

#10
SELECT name, ROUND(gdp/population,-3) as gdppercap FROM world
WHERE gdp > 1000000000000;

#12
SELECT name, capital
FROM world WHERE LEFT(name,1) = LEFT(capital,1) AND name <> capital;

#13
SELECT name
   FROM world
  WHERE name NOT LIKE '% %'
  AND name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%u%';

14
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('physics','chemistry'), subject,winner
