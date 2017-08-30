﻿Перем юТест;

Функция ПолучитьСписокТестов(ЮнитТестирование) Экспорт
	
	юТест = ЮнитТестирование;
	
	ВсеТесты = Новый Массив;
	
	ВсеТесты.Добавить("ТестДолжен_ПроверитьМетодСуществует");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьВызовМетодаБезПараметров");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьВызовМетодаБезПараметровДляСтруктуры");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьВызовМетодаБезПараметров_ЯвноПередаюПустойМассив");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов");

	ВсеТесты.Добавить("ТестДолжен_ПроверитьЧтоУСтруктурыМетодСуществует");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ДляСтруктуры");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьЧтоУСоответствияМетодСуществует");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ДляСоответствия");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьЧтоУРефлектораМетодСуществует");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ДляРефлектора");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ДляРазныхТипов");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьЧтоПараметрыИзмененныеВПроцедуреВозвращеныВМассив");
	
	ВсеТесты.Добавить("ТестДолжен_ПроверитьМетод_ПолучитьТаблицуСвойств");

	ВсеТесты.Добавить("ТестДолжен_ПроверитьВызовМетодаСПараметрамиПоУмолчанию");

	Возврат ВсеТесты;
КонецФункции

Процедура ТестДолжен_ПроверитьМетодСуществует() Экспорт
	Пример = ПолучитьОбъектДляПроверки("Пример_reflector");
	
	ИмяМетода = "Версия";
	Рефлектор = Новый Рефлектор;
	ЕстьМетод = Рефлектор.МетодСуществует(Пример, ИмяМетода);

	юТест.Проверить(ЕстьМетод);
КонецПроцедуры

Процедура ТестДолжен_ПроверитьЧтоУСтруктурыМетодСуществует() Экспорт
	Пример = Новый Структура;
	
	ИмяМетода = "Вставить";
	Рефлектор = Новый Рефлектор;
	ЕстьМетод = Рефлектор.МетодСуществует(Пример, ИмяМетода);

	юТест.Проверить(ЕстьМетод);
КонецПроцедуры

Процедура ТестДолжен_ПроверитьЧтоУСоответствияМетодСуществует() Экспорт
	Пример = Новый Соответствие;
	
	ИмяМетода = "Вставить";
	Рефлектор = Новый Рефлектор;
	ЕстьМетод = Рефлектор.МетодСуществует(Пример, ИмяМетода);

	юТест.Проверить(ЕстьМетод);
КонецПроцедуры

Процедура ТестДолжен_ПроверитьЧтоУРефлектораМетодСуществует() Экспорт
	Пример = Новый Рефлектор;
	
	ИмяМетода = "МетодСуществует";
	Рефлектор = Новый Рефлектор;
	ЕстьМетод = Рефлектор.МетодСуществует(Пример, ИмяМетода);

	юТест.Проверить(ЕстьМетод);
КонецПроцедуры

Процедура ТестДолжен_ПроверитьВызовМетодаБезПараметров() Экспорт
	Пример = ПолучитьОбъектДляПроверки("Пример_reflector");
	
	ИмяМетода = "Версия";
	Рефлектор = Новый Рефлектор;
	Версия = Рефлектор.ВызватьМетод(Пример, ИмяМетода);

	юТест.ПроверитьРавенство(Пример.Версия(), Версия);
КонецПроцедуры

Процедура ТестДолжен_ПроверитьВызовМетодаБезПараметровДляСтруктуры() Экспорт
	Пример = Новый Структура;
	Пример.Вставить("Ключ", 1);
	
	ИмяМетода = "Очистить";
	Рефлектор = Новый Рефлектор;
	Версия = Рефлектор.ВызватьМетод(Пример, ИмяМетода);

	юТест.ПроверитьРавенство(0, Пример.Количество(), "Ожидали, что структура будет пустой");
КонецПроцедуры

Процедура ТестДолжен_ПроверитьВызовМетодаБезПараметров_ЯвноПередаюПустойМассив() Экспорт
	Пример = ПолучитьОбъектДляПроверки("Пример_reflector2");
	
	ИмяМетода = "Версия";
	ПустойМассив = Новый Массив;
	Рефлектор = Новый Рефлектор;
	Версия = Рефлектор.ВызватьМетод(Пример, ИмяМетода, ПустойМассив);

	юТест.ПроверитьРавенство(Пример.Версия(), Версия);
КонецПроцедуры

Процедура ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов() Экспорт
	Пример = ПолучитьОбъектДляПроверки("Пример_reflector2");
	
	Рефлектор = Новый Рефлектор;
	ТаблицаМетодов = Рефлектор.ПолучитьТаблицуМетодов(Пример);

	юТест.ПроверитьРавенство(Строка(ТипЗнч(ТаблицаМетодов)), "ТаблицаЗначений", "ТаблицаМетодов");
	юТест.ПроверитьРавенство(3, ТаблицаМетодов.Количество(), "ТаблицаМетодов.Количество()");

	Метод0 = ТаблицаМетодов.Найти("Версия", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод0, "Метод0");
	юТест.ПроверитьРавенство("Версия", Метод0.Имя, "Метод0.Имя");
	юТест.ПроверитьРавенство(0, Метод0.КоличествоПараметров, "Метод0.КоличествоПараметров");
	юТест.ПроверитьРавенство(Истина, Метод0.ЭтоФункция, "Метод0.ЭтоФункция");

	Метод1 = ТаблицаМетодов.Найти("ПолучитьСписокТестов", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод1, "Метод1");
	юТест.ПроверитьРавенство("ПолучитьСписокТестов", Метод1.Имя, "Метод1.Имя");
	юТест.ПроверитьРавенство(1, Метод1.КоличествоПараметров, "Метод1.КоличествоПараметров");
	юТест.ПроверитьРавенство(Истина, Метод1.ЭтоФункция, "Метод1.ЭтоФункция");

	Метод2 = ТаблицаМетодов.Найти("ТестДолжен_ПроверитьВерсию", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод2, "Метод2");
	юТест.ПроверитьРавенство("ТестДолжен_ПроверитьВерсию", Метод2.Имя, "Метод2.Имя");
	юТест.ПроверитьРавенство(0, Метод2.КоличествоПараметров, "Метод2.КоличествоПараметров");
	юТест.ПроверитьРавенство(Ложь, Метод2.ЭтоФункция, "Метод2.ЭтоФункция");
КонецПроцедуры

Процедура ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ДляСтруктуры() Экспорт
	Пример = Новый Структура;
	Пример.Вставить("Ключ", 1);
	
	Рефлектор = Новый Рефлектор;
	ТаблицаМетодов = Рефлектор.ПолучитьТаблицуМетодов(Пример);

	юТест.ПроверитьРавенство(Строка(ТипЗнч(ТаблицаМетодов)), "ТаблицаЗначений", "ТаблицаМетодов");
	юТест.ПроверитьРавенство(5, ТаблицаМетодов.Количество(), "ТаблицаМетодов.Количество()");

	Метод0 = ТаблицаМетодов.Найти("вставить", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод0, "Метод0");
	юТест.ПроверитьРавенство("вставить", Метод0.Имя, "Метод0.Имя");
	юТест.ПроверитьРавенство(2, Метод0.КоличествоПараметров, "Метод0.КоличествоПараметров");
	юТест.ПроверитьРавенство(Ложь, Метод0.ЭтоФункция, "Метод0.ЭтоФункция");

	Метод4 = ТаблицаМетодов.Найти("очистить", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод4, "Метод4");
	юТест.ПроверитьРавенство("очистить", Метод4.Имя, "Метод4.Имя");
	юТест.ПроверитьРавенство(0, Метод4.КоличествоПараметров, "Метод4.КоличествоПараметров");
	юТест.ПроверитьРавенство(Ложь, Метод4.ЭтоФункция, "Метод4.ЭтоФункция");

КонецПроцедуры

Процедура ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ДляСоответствия() Экспорт
	Пример = Новый Соответствие;
	Пример.Вставить("Ключ", 1);
	
	Рефлектор = Новый Рефлектор;
	ТаблицаМетодов = Рефлектор.ПолучитьТаблицуМетодов(Пример);

	юТест.ПроверитьРавенство(Строка(ТипЗнч(ТаблицаМетодов)), "ТаблицаЗначений", "ТаблицаМетодов");
	юТест.ПроверитьРавенство(5, ТаблицаМетодов.Количество(), "ТаблицаМетодов.Количество()");

	Метод0 = ТаблицаМетодов.Найти("вставить", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод0, "Метод0");
	юТест.ПроверитьРавенство("вставить", Метод0.Имя, "Метод0.Имя");
	юТест.ПроверитьРавенство(2, Метод0.КоличествоПараметров, "Метод0.КоличествоПараметров");
	юТест.ПроверитьРавенство(Ложь, Метод0.ЭтоФункция, "Метод0.ЭтоФункция");

	Метод4 = ТаблицаМетодов.Найти("удалить", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод4, "Метод4");
	юТест.ПроверитьРавенство("удалить", Метод4.Имя, "Метод4.Имя");
	юТест.ПроверитьРавенство(1, Метод4.КоличествоПараметров, "Метод4.КоличествоПараметров");
	юТест.ПроверитьРавенство(Ложь, Метод4.ЭтоФункция, "Метод4.ЭтоФункция");

КонецПроцедуры

Процедура ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ДляРефлектора() Экспорт
	Пример = Новый Рефлектор;
	
	Рефлектор = Новый Рефлектор;
	ТаблицаМетодов = Рефлектор.ПолучитьТаблицуМетодов(Пример);

	юТест.ПроверитьРавенство(Строка(ТипЗнч(ТаблицаМетодов)), "ТаблицаЗначений", "ТаблицаМетодов");
	юТест.ПроверитьРавенство(4, ТаблицаМетодов.Количество(), "ТаблицаМетодов.Количество()");

	Метод0 = ТаблицаМетодов.Найти("вызватьметод", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод0, "Метод0");
	юТест.ПроверитьРавенство("вызватьметод", Метод0.Имя, "Метод0.Имя");
	юТест.ПроверитьРавенство(3, Метод0.КоличествоПараметров, "Метод0.КоличествоПараметров");
	юТест.ПроверитьРавенство(Истина, Метод0.ЭтоФункция, "Метод0.ЭтоФункция");

	Метод2 = ТаблицаМетодов.Найти("получитьтаблицуметодов", "Имя");
	юТест.ПроверитьНеРавенство(Неопределено, Метод2, "Метод2");
	юТест.ПроверитьРавенство("получитьтаблицуметодов", Метод2.Имя, "Метод2.Имя");
	юТест.ПроверитьРавенство(1, Метод2.КоличествоПараметров, "Метод2.КоличествоПараметров");
	юТест.ПроверитьРавенство(Истина, Метод2.ЭтоФункция, "Метод2.ЭтоФункция");

КонецПроцедуры

Процедура ТестДолжен_ПроверитьМетод_ПолучитьТаблицуМетодов_ДляРазныхТипов() Экспорт
	МассивОбъектов = Новый Массив;
	МассивОбъектов.Добавить(АргументыКоманднойСтроки);
	МассивОбъектов.Добавить(Новый Массив);
	МассивОбъектов.Добавить(Новый Рефлектор);
	МассивОбъектов.Добавить(Новый ТаблицаЗначений);
	МассивОбъектов.Добавить(Новый СписокЗначений);
	МассивОбъектов.Добавить(Новый РегулярноеВыражение("а"));
	МассивОбъектов.Добавить(Новый ЗаписьXML);
	МассивОбъектов.Добавить(Новый ЧтениеXML);
	МассивОбъектов.Добавить(Новый Консоль);
	МассивОбъектов.Добавить(Новый Файл("ыв"));
	МассивОбъектов.Добавить(Новый ГенераторСлучайныхЧисел);
	МассивОбъектов.Добавить(Новый СистемнаяИнформация);
	МассивОбъектов.Добавить(Новый ТекстовыйДокумент);
	МассивОбъектов.Добавить(Новый ЧтениеТекста);
	МассивОбъектов.Добавить(Новый ЗаписьТекста);

	Рефлектор = Новый Рефлектор;

	Для Каждого Объект Из МассивОбъектов Цикл
		ТипОбъекта = ТипЗнч(Объект);
		Попытка
			ТаблицаМетодов = Рефлектор.ПолучитьТаблицуМетодов(Объект);
		Исключение
			ИнфоОшибки = ИнформацияОбОшибке();
			текстОшибки = ПодробноеПредставлениеОшибки(ИнфоОшибки);
			
			ВызватьИсключение "Тип <"+ТипОбъекта +">: не удалось получить таблицу методов" + Символы.ПС + текстОшибки;
		КонецПопытки;

		юТест.ПроверитьРавенство(Строка(ТипЗнч(ТаблицаМетодов)), "ТаблицаЗначений", "ТаблицаМетодов "+ТипЗнч(Объект));
		юТест.ПроверитьБольше(ТаблицаМетодов.Количество(), 0, "ТаблицаМетодов.Количество()"+ТипЗнч(Объект));
	КонецЦикла;

КонецПроцедуры

Процедура СообщитьПриветМир(БулеваПеременная, Знач ЧисловаяПеременная) Экспорт
    Сообщить("Привет, Мир!");
    БулеваПеременная = Ложь;
	ЧисловаяПеременная = 7;
КонецПроцедуры

Процедура ТестДолжен_ПроверитьЧтоПараметрыИзмененныеВПроцедуреВозвращеныВМассив() Экспорт

	БулеваПеременная = Истина;
	ЧисловаяПеременная = 2;
	ПараметрыОповещения = Новый Массив;
	ПараметрыОповещения.Добавить(БулеваПеременная);
	ПараметрыОповещения.Добавить(ЧисловаяПеременная);

	Рефлектор = Новый Рефлектор;     
	Рефлектор.ВызватьМетод(ЭтотОбъект, "СообщитьПриветМир", ПараметрыОповещения);
	
	юТест.ПроверитьИстину(БулеваПеременная, "Переменная не должна поменять значение");
	юТест.ПроверитьРавенство(2, ЧисловаяПеременная, "Переменная не должна поменять значение");
	
	юТест.ПроверитьЛожь(ПараметрыОповещения[0], "Аргумент метода должен принять значение Ложь");
	юТест.ПроверитьРавенство(2, ПараметрыОповещения[1], "Аргумент метода не должен поменять значение");
	

КонецПроцедуры

Процедура ТестДолжен_ПроверитьМетод_ПолучитьТаблицуСвойств() Экспорт

	Пример = ПолучитьОбъектДляПроверки("test_reflector");
	Рефлектор = Новый Рефлектор;

	ТаблицаСвойств = Рефлектор.ПолучитьТаблицуСвойств(Пример);
	юТест.ПроверитьРавенство(3, ТаблицаСвойств.Количество());

	юТест.ПроверитьРавенство("ЭкспортнаяПеременная", ТаблицаСвойств[1].Имя);

	ТаблицаСвойств = Рефлектор.ПолучитьТаблицуСвойств(Рефлектор);
	юТест.ПроверитьРавенство(0, ТаблицаСвойств.Количество());

КонецПроцедуры

Функция ПолучитьОбъектДляПроверки(ИмяКласса)
	ТекПуть = Новый Файл(ТекущийСценарий().Источник).Путь;
	ПодключитьСценарий(ТекПуть+"example-test.os", ИмяКласса);
	Пример = Новый(ИмяКласса);
	Возврат Пример;
КонецФункции

Функция ФункцияСПараметрамиПоУмолчанию(Знач П1, Знач П2 = 2, Знач П3 = 3) Экспорт
	Возврат П1 + П2 + П3;
КонецФункции

Функция НовыеПараметры(Знач П1 = Неопределено, Знач П2 = Неопределено, Знач П3 = Неопределено, Знач П4 = Неопределено)

	М = Новый Массив;

	Если Не П1 = Неопределено Тогда
		М.Добавить(П1);
	КонецЕсли;

	Если Не П2 = Неопределено Тогда
		М.Добавить(П2);
	КонецЕсли;

	Если Не П3 = Неопределено Тогда
		М.Добавить(П3);
	КонецЕсли;

	Если Не П4 = Неопределено Тогда
		М.Добавить(П4);
	КонецЕсли;

	Возврат М;
КонецФункции

Функция ТестДолжен_ПроверитьВызовМетодаСПараметрамиПоУмолчанию() Экспорт

	Рефлектор = Новый Рефлектор;
	Результат = Рефлектор.ВызватьМетод(ЭтотОбъект, "ФункцияСПараметрамиПоУмолчанию", НовыеПараметры(1));
	юТест.ПроверитьРавенство(Результат, 6, "Вызов рефлектором с параметрами по-умолчанию");

	Результат = Рефлектор.ВызватьМетод(ЭтотОбъект, "ФункцияСПараметрамиПоУмолчанию", НовыеПараметры(1, 1));
	юТест.ПроверитьРавенство(Результат, 5, "Вызов рефлектором с параметрами по-умолчанию");

	Ошибка = Ложь;
	Попытка

		Результат = Рефлектор.ВызватьМетод(ЭтотОбъект, "ФункцияСПараметрамиПоУмолчанию", НовыеПараметры(1, 1, 1, 1));
		Ошибка = Истина;

	Исключение
		// Всё правильно!
	КонецПопытки;

	Если Ошибка Тогда
		юТест.ТестПровален("Вызов рефлектора с превышением параметров");
	КонецЕсли;

	Ошибка = Ложь;
	Попытка

		Результат = Рефлектор.ВызватьМетод(ЭтотОбъект, "ФункцияСПараметрамиПоУмолчанию", НовыеПараметры());
		Ошибка = Истина;

	Исключение
		// Всё правильно!
	КонецПопытки;

	Если Ошибка Тогда
		юТест.ТестПровален("Вызов рефлектора с недостаточным количеством параметров");
	КонецЕсли;

КонецФункции

