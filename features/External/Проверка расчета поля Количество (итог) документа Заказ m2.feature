﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: проверка расчета поля Количество (итог) документа Заказ

Как Менеджер по продажам я хочу
проверить расчет поля Количество (итог) документа Заказ
чтобы расчет был верный  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка расчета поля Количество (итог) документа Заказ
* Заполняем таблицу Товары
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Йогурт'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '100,00'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3'
	И в таблице "Товары" я завершаю редактирование строки
* Проверяем Количество (итог)
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '3'

		