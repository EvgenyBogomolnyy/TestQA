﻿#language: ru

@tree

Функционал: проверка создание клиента

Как Оператор я хочу
создать клиента
чтобы вести клиентскую базу  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
* Открытие формы создание клиента
	И В командном интерфейсе я выбираю 'Продажи' 'Контрагенты'
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Заполнение наименования клиента
	И в поле с именем 'Наименование' я ввожу текст 'Тестовый контрагент'
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Оптовая'		
* Заполнение номера телефона
	И в поле с именем 'Телефон' я ввожу текст '111-111'
* Сохранение
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка создания по коду
	И я запоминаю значение поля "Код" как "$Код$"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Тестовый контрагент (Контрагент)' в течение 20 секунд
	Тогда таблица "Список" содержит строки
		| 'Наименование'        | 'Код'   |
		| 'Тестовый контрагент' | '$Код$' |

	
			
		
	
	