# Физическая модель базы данных

Название схемы `moa`.

## `moa.entrants`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `id`            | ИД посетителя                    | `INTEGER`      | `PRIMARY KEY` |
| `entry_date`    | Дата и время посещения           | `TIMESTAMP`    | `NOT NULL`    |
| `purpose`       | Заявленная цель визита           | `TEXT`         |               |
| `duration`      | Заявленный срок поездки          | `INTERVAL`     |               |
| `passport`      | Номер паспорта                   | `CHAR(10)`     | `FOREIGN KEY` |
| `access_permit` | Номер разрешения на въезд        | `INTEGER`      | `FOREIGN KEY` |
| `work_pass`     | Номер разрешения на работу       | `INTEGER`      | `FOREIGN KEY` |
| `diplomat_auth` | Номер дипломатического пропуска  | `INTEGER`      | `FOREIGN KEY` |
| `asylum_grant`  | Номер права на убежище           | `INTEGER`      | `FOREIGN KEY` |
| `vax_cert`      | Номер сертификата о вакцинации   | `INTEGER`      | `FOREIGN KEY` |
| `identity_card` | Номер ИД-карты гражданина        | `INTEGER`      | `FOREIGN KEY` |
| `photo`         | Хеш фотографии                   | `BYTEA`        | `NOT NULL`    |
| `height`        | Измеренный рост (в см)           | `NUMERIC`      | `NOT NULL`    |
| `weight`        | Измеренный вес (в кг)            | `NUMERIC`      | `NOT NULL`    |
| `body_scan`     | Скан тела (при выполнении)       | `BYTEA`        |               |
| `fingerprint`   | Отпечаток пальца (при снятии)    | `BYTEA`        |               |
| `identity_rec`  | Запись МВ (при запросе)          | `INTEGER`      | `FOREIGN KEY` |
| `detained`      | Арестован ли посетитель          | `BOOLEAN`      |               |
| `admitted`      | Разрешён ли въезд                | `BOOLEAN`      | `CHECK NOT detained OR admitted IS NULL` |
| `denial_reason` | Причина отказа                   | `TEXT`         | `CHECK denial_reason IS NULL OR NOT admitted` |
| `confiscated`   | Конфискован ли паспорт           | `BOOLEAN`      | `CHECK NOT confiscated OR confiscated IS NULL OR passport IS NOT NULL` |

## `moa.passports`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `id`            | Номер паспорта                   | `CHAR(10)`     | `PRIMARY KEY` |
| `name`          | Имя и фамилия владельца          | `VARCHAR(256)` | `NOT NULL`    |
| `photo`         | Хеш фотографии                   | `BYTEA`        | `NOT NULL`    |
| `nation`        | Государство, выдавшее паспорт    | `VARCHAR(256)` | `NOT NULL`    |
| `issue_city`    | Город выдачи паспорта            | `VARCHAR(256)` | `NOT NULL`    |
| `birth_date`    | Дата рождения                    | `DATE`         |               |
| `sex`           | Пол                              | `ENUM('M','F')`|               |
| `expiry`        | Cрок действия паспорта           | `DATE`         | `NOT NULL`    |

## `moa.access_permits`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `id`            | Номер разрешения                 | `INTEGER`      | `PRIMARY KEY` |
| `name`          | Имя и фамилия владельца          | `VARCHAR(256)` | `NOT NULL`    |
| `passport`      | Номер паспорта владельца         | `СHAR(10)`     | `NOT NULL FOREIGN KEY` |
| `nation`        | Государство происхождения        | `VARCHAR(256)` | `NOT NULL FOREIGN KEY`    |
| `purpose`       | Цель визита                      | `TEXT`         | `NOT NULL`    |
| `duration`      | Длительность визита (в днях)     | `INTERVAL`     |               |
| `height`        | Рост (в см)                      | `NUMERIC`      | `NOT NULL`    |
| `weight`        | Вес (в кг)                       | `NUMERIC`      | `NOT NULL`    |
| `appearance`    | Описание особых примет           | `TEXT`         | `NOT NULL`    |
| `expiry`        | Срок действия разрешения         | `DATE`         | `NOT NULL`    |

## `moa.identity_cards`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `id`            | Номер карты                      | `INTEGER`      | `PRIMARY KEY` |
| `name`          | Имя и фамилия владельца          | `VARCHAR(256)` | `NOT NULL`    |
| `photo`         | Хеш фотографии                   | `BYTEA`        | `NOT NULL`    |
| `district`      | Район проживания                 | `VARCHAR(256)` | `NOT NULL FOREIGN KEY` |
| `birth_date`    | Дата рождения                    | `DATE`         |               |
| `height`        | Рост                             | `NUMERIC`      | `NOT NULL`    |
| `weight`        | Вес                              | `NUMERIC`      | `NOT NULL`    |

## `moa.asylum_grants`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `id`            | Номер права                      | `INTEGER`      | `PRIMARY KEY` |
| `name`          | Имя и фамилия владельца          | `VARCHAR(256)` | `NOT NULL`    |
| `photo`         | Хеш фотографии                   | `BYTEA`        | `NOT NULL`    |
| `passport`      | Номер паспорта владельца         | `СHAR(10)`     | `NOT NULL FOREIGN KEY` |
| `nation`        | Государство происхождения        | `VARCHAR(256)` | `NOT NULL FOREIGN KEY`    |
| `birth_date`    | Дата рождения                    | `DATE`         |               |
| `height`        | Рост (в см)                      | `NUMERIC`      | `NOT NULL`    |
| `weight`        | Вес (в кг)                       | `NUMERIC`      | `NOT NULL`    |
| `fingerprint`   | Отпечаток пальца                 | `BYTEA`        | `NOT NULL`    |
| `expiry`        | Срок действия права              | `DATE`         | `NOT NULL`    |

## `moa.work_passes`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `id`            | Номер права                      | `INTEGER`      | `PRIMARY KEY` |
| `name`          | Имя и фамилия владельца          | `VARCHAR(256)` | `NOT NULL`    |
| `field`         | Область деятельности             | `VARCHAR(256)` | `NOT NULL`    |
| `expiry`        | Срок действия права              | `DATE`         | `NOT NULL`    |

## `moa.diplomatic_auths`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `id`            | Номер права                      | `INTEGER`      | `PRIMARY KEY` |
| `name`          | Имя и фамилия владельца          | `VARCHAR(256)` | `NOT NULL`    |
| `passport`      | Паспорт владельца                | `CHAR(10)`     | `NOT NULL`    |
| `origin`        | Напрявляющее государство         | `VARCHAR(256)` | `NOT NULL`    |

## `moa.auth_nations`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `auth_id`       | Номер права                      | `INTEGER`      | `PRIMARY KEY FOREIGN KEY` |
| `nation`        | Государство, куда въезд разрешён | `VARCHAR(256)` | `PRIMARY KEY` |

## `moa.vax_certificates`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `id`            | Номер сертификата                | `INTEGER`      | `PRIMARY KEY` |
| `name`          | Имя и фамилия владельца          | `VARCHAR(256)` | `NOT NULL`    |
| `passport`      | Паспорт владельца                | `CHAR(10)`     | `NOT NULL`    |

## `moa.vaccines`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `cert_id`       | Номер сертификата                | `INTEGER`      | `PRIMARY KEY FOREIGN KEY` |
| `vaccine`       | Вакцина                          | `VARCHAR(256)` | `PRIMARY KEY` |
| `vax_date`          | Дата, когда поставлена           | `DATE`         | `NOT NULL`    |

## `moa.identity_records`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `id`            | Номер записи                     | `INTEGER`      | `PRIMARY KEY` |
| `name`          | Имя и фамилия                    | `VARCHAR(256)` | `NOT NULL`    |
| `alias`         | Вторые имя и фамилия             | `VARCHAR(256)` |               |
| `fingerprint`   | Отпечаток пальца                 | `BYTEA`        | `NOT NULL`    |

## `moa.nations`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `name`          | Название государства             | `VARCHAR(256)` | `PRIMARY KEY` |
| `allowed`       | Разрешён ли въезд                | `BOOLEAN`      | `NOT NULL`    |

## `moa.issue_cities`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `name`          | Название города                  | `VARCHAR(256)` | `PRIMARY KEY` |
| `nation`        | Государство города               | `VARCHAR(256)` | `NOT NULL FOREIGN KEY` |
| `valid_from`    | Начало действия записи           | `TIMESTAMP`    | `PRIMARY KEY` |
| `valid_to`      | Конец действия записи            | `TIMESTAMP`    |               |

## `moa.nations_history`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `name`          | Название государства             | `VARCHAR(256)` | `PRIMARY KEY` |
| `until`         | Конец действия записи            | `TIMESTAMP`    | `PRIMARY KEY` |
| `allowed`       | Разрешён ли въезд                | `BOOLEAN`      | `NOT NULL`    |

## `moa.districts`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `name`          | Название района                  | `VARCHAR(256)` | `PRIMARY KEY` |
| `confiscate`    | Конфисковывать ли паспорт        | `BOOLEAN`      | `NOT NULL`    |

## `moa.districts_history`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `name`          | Название района                  | `VARCHAR(256)` | `PRIMARY KEY` |
| `until`         | Конец действия записи            | `TIMESTAMP`    | `PRIMARY KEY` |
| `confiscate`    | Конфисковывать ли паспорт        | `BOOLEAN`      | `NOT NULL`    |

## `moa.citations`

| Название        | Описание                         | Тип данных     | Ограничение   |
|-----------------|----------------------------------|----------------|---------------|
| `id`            | Номер замечания                  | `INTEGER`      | `PRIMARY KEY` |
| `cit_time`      | Дата и время выдачи              | `TIMESTAMP`    | `NOT NULL`    |
| `entrant`       | Посетитель (ИД)                  | `INTEGER`      | `FOREIGN KEY` |
| `violation`     | Нарушение протокола              | `TEXT`         | `NOT NULL`    |

*Примечание:* календарь, счёт времени и единицы измерения роста и веса такие же, как в реальном мире.