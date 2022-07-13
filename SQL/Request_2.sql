Задания на написание запросов к БД:
Даны 2 таблицы: 1я с названием user и полями id, user_name, level_id, skill
2я с названием level и полями: id, level_name.
								
1. Отобрать из таблицы user всех пользователей, у которых level_id=1, skill > 799000 и в имени встречается буква а								
2. Удалить всех пользователей, у которых skill меньше 100000								
3. Вывести все данные из таблицы user в порядке убывания по полю skill 								
4. Добавить в таблицу user нового пользователя по имени Oleg, с уровнем 4 и skill =10								
5. Обновить данные в таблице user -  для пользователей с level_id меньше 2 проставить skill 2000000								
6. Выбрать user_name всех пользователей уровня admin используя подзапрос								
7. Выбрать user_name всех пользователей уровня admin используя join								


1. SELECT * from user WHERE level_id =1 AND skill > 799000 AND user_name LIKE "%a%";
2. DELETE FROM user WHERE skill<100000;
3. SELECT * FROM user ORDER BY skill DESC;
4. INSERT INTO user VALUES ( 7, 'Oleg', 4, 10);
5. UPDATE user SET skill = 2000000 WHERE level_id<2;
6. SELECT user.user_name FROM user WHERE user.level_id=(SELECT level.id FROM level WHERE level.level_name='admin');
7. SELECT user.user_name FROM user JOIN level ON user.level_id=level.id AND level_name='admin';
