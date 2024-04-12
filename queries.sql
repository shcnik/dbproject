-- Внесём нового посетителя
INSERT INTO moa.passports VALUES
('76123456A', 'Nikita Shch', 'Arstotzka', 'Paradizna', '06.04.2004', 'M', '18.12.2024', '\000');

INSERT INTO moa.identity_cards VALUES
(041000001, 'Nikita Shch', '\000', 'Altan', '06.04.2004', 183, 68);

INSERT INTO moa.entrants VALUES
(4201, now(), NULL, NULL, '76123456A', NULL, NULL, NULL, NULL, NULL, 041000001, '\000', 183, 68, NULL, NULL, NULL, false, true, NULL, false);

-- Запросим всех посетивших пограничный пункт сегодня
SELECT * FROM moa.entrants WHERE date_trunc('day', entry_date) = date_trunc('day', now());

-- Запросим всех пропущенных через пограничный пункт, отсорировав их по времени прохода
SELECT * FROM moa.entrants WHERE admitted ORDER BY entry_date;

-- Выведем все дни, когда кто-то был арестован
SELECT date_trunc('day', entry_date)
FROM moa.entrants
WHERE detained
GROUP BY date_trunc('day', entry_date)
HAVING count(*) > 0;

-- Запросим конфискованные паспорта
WITH confiscated AS (
  SELECT passport, confiscated
  FROM moa.entrants
  WHERE confiscated
)
SELECT id, name, nation
FROM moa.passports
WHERE id IN (SELECT passport FROM confiscated);

-- Подсчитаем число рабочих по сферам
SELECT field, count(id)
FROM moa.work_passes
GROUP BY field;

-- Подсчитаем вакцины и сколько человек каждой привито
SELECT DISTINCT vaccine, count(vaccine)
OVER (PARTITION BY vaccine)
FROM moa.vaccines;

-- Выпишем имя, страну человека и въехал ли он
SELECT moa.entrants.id, name, nation, admitted FROM moa.entrants
JOIN moa.passports ON passport = moa.passports.id;

-- Выпишем замечания инспектору по дням со штрафами за них
SELECT *, count(id) OVER (PARTITION BY date_trunc('day', citations.cit_time)) AS penalty FROM moa.citations;

-- Подсчитаем статистику по тем, кто был пропущен, кому было отказано и кто был арестован по дням
SELECT date_trunc('day', entry_date),
count(*) FILTER (WHERE admitted) AS admitted,
count(*) FILTER (WHERE NOT admitted) AS denied,
count(*) FILTER (WHERE detained) AS detained
FROM moa.entrants
GROUP BY date_trunc('day', entry_date);

-- Выведем всех работающих в сельском хозяйстве
SELECT moa.passports.name, passport FROM moa.entrants
JOIN moa.passports on moa.passports.id = passport
JOIN moa.work_passes ON moa.work_passes.name = moa.passports.name
WHERE field = 'agriculture';