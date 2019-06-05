Select ID_Заказчик, Дата, ID_Агент from Заказ ORDER BY ID_Заказчик 

SELECT [Город] FROM Заказчик   WHERE [Город] BETWEEN 'К' AND 'Н' ORDER BY [Город] DESC 

SELECT MAX(Сумма) as max from Заказ
 
SELECT *FROM Заказ WHERE MONTH(Дата) = 10

SELECT Агент.[ФИО], Агент.[Город], Заказ.[ID_Заказ], Заказ.[Дата], Заказ.[Сумма] FROM Агент, Заказ WHERE Агент.ID_Агент = Заказ.ID_Агент ORDER BY Агент.ФИО

CREATE TABLE Агент_2 (ID_Агент INT NOT NULL PRIMARY KEY,
ФИО NVARCHAR(40),
Город NVARCHAR(30),
Комиссионные REAL);
insert into Агент_2 Select ID_Агент, ФИО, Город, Комиссионные FROM Агент WHERE Город = 'Махачкала' OR Город = 'Элиста'
Select *From Агент_2 

CREATE TABLE Заказ_2 (ID_Заказ INT PRIMARY KEY NOT NULL,
Сумма real, Дата datetime, ID_Заказчик INT, ID_Агент INT);
insert into Заказ_2 Select ID_Заказ, Сумма, Дата, ID_Заказчик, ID_Агент FROM Заказ
Select *from Заказ_2

DELETE FROM Заказ_2 WHERE (ID_Агент%2) = 0
