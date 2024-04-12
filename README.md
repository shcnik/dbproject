# Проект «База данных Министерства въезда Арстотцки»

В данном проекте моделируется, как могла бы выглядеть база данных, хранящая сведения о работе Министерства въезда Арстотцки (из компьютерной игры «Papers Please»). В ней хранятся сведения о посещающих пограничные пункты людях и их документах, о зарегистрированных Министерством въезда и другими учреждениями Арстотцки документах для въезда в страну, а также вспомогательная информация. База данных предназначена для автоматизации работы пропускных пунктов и аудита работы инспекторов пограничной службы.

## Описание сущностей

### Посетитель

- Уникальный ИД 
- Дата и время посещения
- Заявленные посетителем цель визита и срок
- Номера имеющихся при нём документов
- Хеш фотографии
- Измеренные рост и вес
- Хеши скана тела и отпечатка пальца (при их выполнении)
- Ссылка на запись МВ о въезжающем (при запросе)
- Был ли посетитель арестован
- Разрешён или запрещён ли въезд
- Причина отказа во въезде
- Был ли конфискован паспорт

Соответствующая запись добавляется при каждом посещении, даже если процесс проверки оказался не завершён.

### Паспорт

- Номер паспорта (в стандартном формате: 10 алфавитно-цифровых символов)
- Имя и фамилия по паспорту
- Хеш фото из паспорта
- Страна паспорта
- Город выдачи
- Дата рождения
- Пол
- Срок действия

Паспорта записываются либо учреждениями при оформлении на них документов, либо инспектором по факту предъявления.

### Разрешение на въезд

- Номер разрешения
- Имя и фамилия владельца
- Номер паспорта владельца
- Страна владельца
- Цель визита
- Длительность визита
- Вес и рост
- Описание особых примет
- Срок действия

Разрешения записываются исключительно Министерством въезда по факту их оформления.

### Личная карта гражданина Арстотцки

- Номер карты
- Имя и фамилия владельца
- Хеш фотографии
- Район проживания
- Дата рождения
- Рост и вес

Личные карты записываются исключительно МВД по факту их оформления.

### Разрешение на работу

- Номер разрешения
- Имя и фамилия владельца
- Область деятельности
- Срок действия

Разрешения записываются исключительно Министерством труда по факту их оформления.

### Дипломатические пропуска

- Номер пропуска
- Имя и фамилия владельца
- Номер паспорта владельца
- Страна выдачи
- Список стран, куда разрешён въезд

Дип. пропуска записываются либо МИД при согласовании въезда дипломата, либо инспектором по факту предъявления.

### Права на убежище

- Номер права
- Имя и фамилия владельца
- Страна владельца
- Номер паспорта владельца
- Хеш фотографии
- Дата рождения
- Рост
- Вес
- Хеш скана отпечатка пальца
- Срок действия

Права записываются исключительно Министерством въезда при их оформлении.

### Сертификаты о вакцинации

- Номер сертификата
- Имя и фамилия владельца
- Номер паспорта владельца
- Список поставленных вакцин (болезнь и дата)

Сертификаты записываются инспектором по факту их предъявления.

### Запись Министерства въезда

- Номер записи
- Имя (с фамилией)
- Второе имя (alias)
- Скан отпечатка

*Каким образом получаются эти сведения - в игре не уточнялось.*

### Государства

- Название
- Разрешён ли въезд
- Список городов выдачи

Обновляется Министерством въезда согласно политической ситуации в мире.

### Районы Арстотцки

- Название
- Производится ли конфискация паспортов

Обновляется Министерством въезда согласно политической ситуации в стране.

### Замечания

- Номер замечания
- Дата выдачи
- Посетитель
- Нарушение

Замечания записываются Министерством въезда по факту выдачи.

## Нормализация и версионирование

База данных использует вторую нормальную форму, т.к. для всех отношений имеется лишь один потенциальный ключ (как правило, присваиваемый суррогатный).

Для информации о посетителях, документах и замечаниях применяется тип версионирования SCD 0, т.к. после внесения записи никогда не меняются и не удаляются. Для информации о государствах и районах Арстотцки используется тип версионирования SCD 4, так как для ссылок требуется, чтобы в качестве потенциального ключа могли выступать только названия государств/районов.