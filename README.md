# DigitalDesign SQL
Задания по блоку SQL в школе инженера 2023.

## Реализация

### Задание 2.
Вывести общую сумму продаж с разбивкой по годам и месяцам, за все время работы компании.

#### Результат работы программы:
![Результат](https://github.com/Skyliice/DigitalDesignSQL/blob/main/Images/Task2.PNG)

### Задание 3.
Выбрать 10 самых приоритетных городов для следующего магазина
Столбцы: Город | Приоритет
Приоритет определяется как количество покупателей в городе
В городе не должно быть магазина

#### Результат работы программы:
![Результат](https://github.com/Skyliice/DigitalDesignSQL/blob/main/Images/Task3.PNG)

### Задание 4.
Выбрать покупателей, купивших больше 15 единиц одного и того же продукта за все время работы компании.
Столбцы: Фамилия покупателя | Имя покупателя | Название продукта | Количество купленных экземпляров (за все время) 
Упорядочить по количеству купленных экземпляров по убыванию, затем по полному имени покупателя по возрастанию

#### Результат работы программы:
![Результат](https://github.com/Skyliice/DigitalDesignSQL/blob/main/Images/Task4.PNG)

### Задание 5.
Вывести содержимое первого заказа каждого клиента
Столбцы: Дата заказа | Фамилия покупателя | Имя покупателя | Содержимое заказа
Упорядочить по дате заказа от новых к старым
В ячейку содержимого заказа нужно объединить все элементы заказа покупателя в следующем формате:
<Имя товара> Количество: <количество в заказе> шт.
<Имя товара> Количество: <количество в заказе> шт.
<Имя товара> Количество: <количество в заказе> шт.

#### Результат работы программы:
![Результат](https://github.com/Skyliice/DigitalDesignSQL/blob/main/Images/Task5.PNG)

### Задание 6.
Вывести список сотрудников, непосредственный руководитель которых младше сотрудника и меньше работает в компании
Столбцы: Имя руководителя | Дата приема руководителя на работу| Дата рождения руководителя |
	| Имя сотрудника | Дата приема сотрудника на работу| Дата рождения сотрудника
Поле имя выводить в формате 'Фамилия И.О.'
Упорядочить по иерархии от директора вниз к рядовым сотрудникам
Внутри одного уровня иерархии упорядочить по фамилии руководителя, затем по фамилии сотрудника

#### Результат работы программы:
![Результат](https://github.com/Skyliice/DigitalDesignSQL/blob/main/Images/Task6.PNG)

### Задание 7.
Написать хранимую процедуру, с тремя параметрами и результирующим набором данных 
входные параметры - две даты, с и по 
выходной параметр - количество найденных записей 
Результирующий набор содержит записи всех холостых мужчин-сотрудников, родившихся в диапазон указанных в параметре дат

#### Результат работы программы:
![Результат](https://github.com/Skyliice/DigitalDesignSQL/blob/main/Images/Task7.PNG)
