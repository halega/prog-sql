USE TSQLV5;

SELECT orderid, orderdate, val,
  RANK() OVER(ORDER BY val DESC) AS rnk
FROM Sales.OrderValues
ORDER BY rnk;
