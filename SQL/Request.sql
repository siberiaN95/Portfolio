Посчитать количество автомобилей в каждой компании из таблицы cabs. Остсортировать значения по убыванию. 
Вывести те компании, в которых меньше 100 автомобилей. Поле с числом автомобилей назвать cnt, 
поле с названием компании- company_name.

SELECT company_name, COUNT(vehicle_id) AS cnt FROM cabs 
GROUP BY company_name HAVING COUNT (vehicle_id < 100) ORDER BY COUNT (vehicle_id) DESC;
