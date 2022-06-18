Select company_name , COUNT ( vehicle_id) AS cnt FROM cabs 
GROUP BY company_name HAVING COUNT (vehicle_id<100) ORDER BY COUNT (vehicle_id) DESC;