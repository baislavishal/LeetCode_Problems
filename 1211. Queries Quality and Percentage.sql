/*
Write a solution to find each query_name, the quality and poor_query_percentage.
Both quality and poor_query_percentage should be rounded to 2 decimal places.
Return the result table in any order.
Write your MySQL query statement below
*/

SELECT query_name,
    ROUND((SUM(rating/position))/COUNT(query_name),2) AS quality,
    ROUND(AVG(CASE WHEN rating<3 THEN 1 ELSE 0 END)*100,2) AS 
    poor_query_percentage
    FROM Queries
    WHERE query_name IS NOT NULL
    GROUP BY query_name