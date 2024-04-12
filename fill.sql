-- Заполнение таблиц данными

INSERT INTO moa.nations VALUES
('Antegria', true),
('Arstotzka', true),
('Impor', true),
('Kolechia', true),
('Obristan', true),
('Republia', true),
('Skoatia', true),
('United Federation', true),
('Kovir', false),
('Redania', false),
('Kaedwen', false),
('Temeria', false),
('Aedirn', false),
('Mahakam', false),
('Lyria', false),
('Nilfgaard', false);

INSERT INTO moa.nations_history VALUES
('Arstotzka', '23.11.1982', false),
('Antegria', '24.11.1982', false),
('Impor', '24.11.1982', false),
('Kolechia', '24.11.1982', false),
('Obristan', '24.11.1982', false),
('Republia', '24.11.1982', false),
('Skoatia', '24.11.1982', false),
('United Federation', '24.11.1982', false),
('Kolechia', '29.11.1982', true),
('Kolechia', '30.11.1982', false),
('Impor', '11.12.1982', true),
('Impor', '12.12.1982', false),
('United Federation', '17.12.1982', true),
('United Federation', '18.12.1982', false),
('Kovir', '01.01.1970', false),
('Redania', '01.01.1970', false),
('Kaedwen', '01.01.1970', false),
('Temeria', '01.01.1970', false),
('Aedirn', '01.01.1970', false),
('Mahakam', '01.01.1970', false),
('Lyria', '01.01.1970', false),
('Nilfgaard', '01.01.1970', false),
('Kovir', '01.01.1980', true),
('Redania', '01.01.1980', true),
('Kaedwen', '01.01.1980', true),
('Temeria', '01.01.1980', true),
('Aedirn', '01.01.1980', true),
('Mahakam', '01.01.1980', true),
('Lyria', '01.01.1980', true),
('Nilfgaard', '01.01.1980', true);

INSERT INTO moa.issue_cities VALUES
('St. Marmero', 'Antegria', '01.01.1900', NULL),
('Glorian', 'Antegria', '08.05.1945', NULL),
('Outer Grouse', 'Antegria', '01.01.1900', NULL),
('Orvech Vonor', 'Arstotzka', '01.01.1900', NULL),
('East Grestin', 'Arstotzka', '04.11.1982', NULL),
('Paradizna', 'Arstotzka', '01.01.1900', NULL),
('Enkyo', 'Impor', '01.01.1900', NULL),
('Heihan', 'Impor', '01.01.1900', NULL),
('Tsunkeido', 'Impor', '01.01.1900', NULL),
('Yurko', 'Kolechia', '01.01.1900', NULL),
('Vedor', 'Kolechia', '01.01.1900', NULL),
('Grestin', 'Kolechia', '01.01.1900', '04.11.1982'),
('West Grestin', 'Kolechia', '04.11.1982', NULL),
('Skal', 'Obristan', '01.01.1900', NULL),
('Lorndaz', 'Obristan', '01.01.1900', NULL),
('Mergerous', 'Obristan', '01.01.1900', NULL),
('Glorian', 'Republia', '01.01.1900', '08.05.1945'),
('True Glorian', 'Republia', '09.05.1945', NULL),
('Lesrenadi', 'Republia', '01.01.1900', NULL),
('Bostan', 'Republia', '01.01.1900', NULL),
('Great Rapid', 'United Federation', '01.01.1900', NULL),
('Singleton', 'United Federation', '01.01.1900', '22.02.1970'),
('Shingleton', 'United Federation', '22.02.1970', NULL),
('Korista', 'United Federation', '01.01.1900', NULL),
('Pala', 'Skoatia', '01.01.1900', NULL);

INSERT INTO moa.districts VALUES
('Altan', false),
('Veskillo', false),
('Bernton', false),
('Octovalis', false),
('Gennistora', false),
('Lendiforma', false),
('Vosenfield', false),
('Fardesto', false),
('District A', true),
('District B', true),
('District C', true),
('District D', true),
('District E', true),
('District F', true),
('District G', true);

INSERT INTO moa.districts_history VALUES
('Altan', '16.12.1982', false),
('Altan', '01.01.1983', true),
('Veskillo', '20.12.1982', false),
('Veskillo', '01.01.1983', true),
('Bernton', '20.12.1982', false),
('Bernton', '01.01.1983', true),
('Octovalis', '20.12.1982', false),
('Octovalis', '01.01.1983', true),
('Gennistora', '20.12.1982', false),
('Gennistora', '01.01.1983', true),
('Lendiforma', '20.12.1982', false),
('Lendiforma', '01.01.1983', true),
('Vosenfield', '20.12.1982', false),
('Vosenfield', '01.01.1983', true),
('Fardesto', '20.12.1982', false),
('Fardesto', '01.01.1983', true),
('Veskillo', '20.12.1970', true),
('Veskillo', '01.01.1971', false),
('Bernton', '20.12.1970', true),
('Bernton', '01.01.1971', false),
('Octovalis', '20.12.1970', true),
('Octovalis', '01.01.1971', false),
('Gennistora', '20.12.1970', true),
('Gennistora', '01.01.1971', false),
('Lendiforma', '20.12.1970', true),
('Lendiforma', '01.01.1971', false),
('Vosenfield', '20.12.1970', true),
('Vosenfield', '01.01.1971', false),
('Fardesto', '20.12.1970', true),
('Fardesto', '01.01.1971', false);

INSERT INTO moa.passports VALUES
('X6LDXGTQ9C', 'Henrietta Lubova', 'Antegria', 'Glorian', '18.03.1930', 'F', '18.10.1983', '\000'),
('E8MHX2109U', 'Anna Freydenzon', 'Arstotzka', 'Paradizna', '04.01.1955', 'F', '29.02.1984', '\000'),
('H1VBP721B9', 'Mikkel Ivarsson', 'Obristan', 'Mergerous', '28.11.1945', 'M', '14.10.1984', '\000'),
('2AW6UC29H0', 'Alexa Mellegard', 'United Federation', 'Great Rapid', '29.05.1937', 'F', '10.10.1984', '\000'),
('5K6XL61KUX', 'Evan Critch', 'Kolechia', 'West Grestin', '09.02.1942', 'M', '23.10.1984', '\000'),
('9DNUG9SH2K', 'William Zeppeli', 'Obristan', 'Mergerous', '17.03.1948', 'M', '04.09.1984', '\000'),
('ZUN21DER07', 'Alisa Dvachevskaya', 'Obristan', 'Skal', '03.04.1972', 'F', '19.01.1999', '\000'),
('B2C07NAKAA', 'Slavyana Feoktistova', 'Republia', 'True Glorian', '12.05.1972', 'F', '29.12.1989', '\000'),
('VOCALOID02', 'Miku Hatsune', 'Impor', 'Tsunkeido', '31.08.1972', 'F', '20.05.1990', '\000'),
('H0M0SC1B3R', 'Electronic Syroezhkin', 'United Federation', 'Korista', '23.03.1972', 'M', '08.12.1991', '\000'),
('YAN22IICH0', 'Unylova Helena', 'Kolechia', 'Vedor', '25.09.1972', 'F', '21.12.1993', '\000'),
('1234OKOK<<', 'Jorji Costava', 'Cobrastan', 'Bestburg', '31.05.1923', 'M', '01.10.2013', '\000'),
('GCD7FMBAR<', 'Jorji Costava', 'Obristan', 'Skal', '28.11.1982', 'M', '01.01.1983', '\000'),
('46IG1B97SS', 'Nikita Scher', 'Arstotzka', 'Paradizna', '06.04.1984', 'M', '18.12.2002', '\000'),
('4588IST123', 'Kama Ogden', 'Kolechia', 'Yurko', '10.05.1984', 'F', '30.06.2000', '\000'),
('TF54S87HJ1', 'Shae Piersovska', 'Kolechia', 'West Grestin', '10.01.1983', 'F', '01.10.1950', '\000');

INSERT INTO moa.identity_cards VALUES
(553000001, 'Anna Freydenzin', '\000', 'Bernton', '04.01.1955', 168, 53),
(841000001, 'Nikita Scher', '\000', 'Altan', '06.04.1984', 183, 68),
(648000001, 'Olga Mironova', '\000', 'Fardesto', '12.04.1964', 177, 61);

INSERT INTO moa.identity_records VALUES
(1, 'Anna Freydenzon', 'Anna Freydenzin', '\000'),
(2, 'William Zeppeli', NULL, '\000');

INSERT INTO moa.access_permits VALUES
(82000006, 'Jorji Costava', 'GCD7FMBAR<', 'Obristan', 'visit', '1 week', 168, 70, 'bald', '30.12.1982'),
(82000001, 'Henrietta Lubova', 'X6LDXGTQ9C', 'Antegria', 'work', '6 months', 169, 68, 'glasses', '12.01.1983'),
(82000002, 'Mikkel Ivarsson', 'H1VBP721B9', 'Obristan', 'visit', '14 days', 180, 88, 'perfect eyesight', '16.01.1983'),
(82000003, 'Alexa Mellegard', '2AW6UC29H0', 'United Federation', 'visit', '14 days', 162, 52, 'long hair', '25.01.1983'),
(82000004, 'Evan Critch', '5K6XL61KUX', 'Kolechia', 'immigration', NULL, 178, 93, 'sideburns', '31.01.1983'),
(82000005, 'William Zeppeli', '9DNUG9SH2K', 'Obristan', 'transit', '14 days', 193, 75, 'moustache', '19.01.1983'),
(78000001, 'Alisa Dvachevskaya', 'ZUN21DER07', 'Obristan', 'visit', '1 year', 174, 55, 'red hair with bolts', '30.04.1978'),
(89000001, 'Slavyana Feoktistova', 'B2C07NAKAA', 'Republia', 'work', '3 months', 176, 55, 'long plaits', '31.10.1989'),
(89000002, 'Electronic Syroezhkin', 'H0M0SC1B3R', 'United Federation', 'work', '3 months', 183, 68, 'blue eyes', '31.12.1989'),
(89000003, 'Unylova Helena', 'YAN22IICH0', 'Kolechia', 'transit', '7 days', 165, 48, 'purple hair', '01.09.1989');

INSERT INTO moa.diplomatic_auths VALUES
(300001, 'Miku Hatsune', 'VOCALOID02', 'Impor'),
(400001, 'Shae Piersovska', 'TF54S87HJ1', 'Kolechia'),
(100002, 'Stephan Graire', 'EZICREVOLT', 'Antegria'),
(300002, 'Michael Shmit', '567GHJR53A', 'Impor'),
(500002, 'Karl Parov', 'RSTR121355', 'Obristan');

INSERT INTO moa.auth_nations VALUES
(300001, 'Impor'),
(300001, 'Kolechia'),
(300001, 'Arstotzka'),
(400001, 'Obristan'),
(400001, 'Antegria'),
(100002, 'Kolechia'),
(100002, 'Republia'),
(300002, 'United Federation'),
(300002, 'Kolechia'),
(300002, 'Arstotzka'),
(500002, 'Arstotzka'),
(500002, 'Antegria'),
(500002, 'Republia');

INSERT INTO moa.vax_certificates VALUES
(81000001, 'Henrietta Lubova', 'X6LDXGTQ9C'),
(81000002, 'Anna Freydenzon', 'E8MHX2109U'),
(82000001, 'Mikkel Ivarsson', 'H1VBP721B9'),
(82000002, 'Alexa Mellegard', '2AW6UC29H0'),
(81000003, 'Evan Critch', '5K6XL61KUX'),
(82000003, 'William Zeppeli', '9DNUG9SH2K'),
(89000001, 'Electronic Syroezhkin', 'H0M0SC1B3R');

INSERT INTO moa.vaccines VALUES
(81000001, 'polio', '09.08.1981'),
(81000001, 'pox', '11.08.1981'),
(81000002, 'polio', '01.03.1981'),
(81000002, 'measles', '03.03.1981'),
(81000002, 'HPV', '05.03.1981'),
(82000001, 'measles', '21.03.1982'),
(82000001, 'polio', '23.03.1982'),
(82000002, 'polio', '23.07.1982'),
(82000002, 'cholera', '25.07.1982'),
(81000003, 'malaria', '25.02.1981'),
(81000003, 'tuberculosis', '26.02.1981'),
(81000003, 'polio', '28.02.1981'),
(82000003, 'polio', '10.01.1982'),
(82000003, 'tetanus', '11.01.1982'),
(82000003, 'tuberculosis', '13.01.1982'),
(89000001, 'HIV', '20.05.1983'),
(89000001, 'hepatitis', '09.08.1984'),
(89000001, 'tuberculosis', '12.07.1986'),
(89000001, 'polio', '08.01.1989');

INSERT INTO moa.work_passes VALUES
(82000001, 'Henrietta Lubova', 'statistics', '06.01.1983'),
(89000001, 'Slavyana Feoktistova', 'agriculture', '31.12.1989'),
(89000002, 'Electronic Syroezhkin', 'electronics', '01.01.1990'),
(83000001, 'Alexandra S.', 'industry', '01.06.1984'),
(84000001, 'Dmitri X.', 'agriculture', '31.12.1984'),
(84000002, 'Nikhto I.', 'medicine', '01.01.1984'),
(85000001, 'Catherine F.', 'household', '01.06.1985'),
(86000001, 'Atr Deni', 'science', '31.12.1986'),
(86000002, 'Sirius Black', 'elctronics', '01.01.1986'),
(87000001, 'Ahenar White', 'agriculture', '01.06.1987'),
(88000001, 'Yisha Grower', 'archaeology', '31.01.1989'),
(87000002, 'Yader Smit', 'electronics', '01.01.1990'),
(90000001, 'Celesta Luna', 'theater', '09.05.1990'),
(91000001, 'Kila Kir', 'agriculture', '25.12.1991'),
(92000002, 'Xar Z.', 'trade', '04.10.1993');

INSERT INTO moa.entrants VALUES
(33, '25.11.1982 10:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\000', 168, 70, NULL, NULL, NULL, false, false, 'No passport', false),
(48, '26.11.1982 12:00', NULL, NULL, '1234OKOK<<', NULL, NULL, NULL, NULL, NULL, NULL, '\000', 168, 70, NULL, NULL, NULL, false, false, 'Cobrastan is not a real country', false),
(65, '28.11.1982 11:00', NULL, NULL, 'GCD7FMBAR<', NULL, NULL, NULL, NULL, NULL, NULL, '\000', 168, 70, NULL, NULL, NULL, false, false, 'No access permit', false),
(82, '30.11.1982 10:12', NULL, NULL, 'GCD7FMBAR<', NULL, NULL, NULL, NULL, NULL, NULL, '\000', 168, 70, NULL, NULL, NULL, false, false, 'No access permit', false),
(115, '03.12.1982 16:03', NULL, NULL, 'GCD7FMBAR<', 82000006, NULL, NULL, NULL, NULL, NULL, '\000', 168, 70, NULL, NULL, NULL, false, true, NULL, false),
(259, '17.12.1982 17:03', 'visit', '3 days', 'TF54S87HJ1', NULL, NULL, 400001, NULL, NULL, NULL, '\000', 170, 57, NULL, NULL, NULL, false, true, NULL, false),
(291, '21.12.1982 07:00', NULL, NULL, 'GCD7FMBAR<', 82000006, NULL, NULL, NULL, NULL, NULL, '\000', 168, 70, NULL, NULL, NULL, false, true, NULL, true),
(361, '04.01.1983 06:45', 'work', '6 months', 'X6LDXGTQ9C', 82000001, 82000001, NULL, NULL, 81000001, NULL, '\000', 170, 68, NULL, NULL, NULL, false, true, NULL, false),
(362, '04.01.1983 06:47', NULL, NULL, 'E8MHX2109U', NULL, NULL, NULL, NULL, 81000002, 553000001, '\000', 175, 53, NULL, '\000', 1, false, true, NULL, false),
(363, '04.01.1983 06:48', 'visit', '14 days', 'H1VBP721B9', 82000002, NULL, NULL, NULL, 82000001, NULL, '\000', 175, 88, NULL, NULL, NULL, false, true, NULL, false),
(364, '04.01.1983 06:50', 'visit', '14 days', '2AW6UC29H0', 82000003, NULL, NULL, NULL, 82000002, NULL, '\000', 165, 52, NULL, NULL, NULL, false, true, NULL, false),
(365, '04.01.1983 06:52', 'immigration', NULL, '5K6XL61KUX', 82000004, NULL, NULL, NULL, 81000003, NULL, '\000', 180, 93, NULL, NULL, NULL, false, true, NULL, false),
(366, '04.01.1983 06:53', 'transit', '14 days', '9DNUG9SH2K', 82000005, NULL, NULL, NULL, 82000003, NULL, '\000', 180, 75, NULL, '\001', 2, true, NULL, NULL, false),
(4101, '13.06.1989 14:00', 'visit', '1 year', 'ZUN21DER07', 78000001, NULL, NULL, NULL, NULL, NULL, '\000', 175, 55, NULL, NULL, NULL, false, true, NULL, false),
(4102, '13.06.1989 14:05', 'work', '3 months', 'B2C07NAKAA', 89000001, 89000001, NULL, NULL, NULL, NULL, '\000', 176, 55, NULL, NULL, NULL, false, true, NULL, false),
(4103, '13.06.1989 14:10', 'offical', '7 days', 'VOCALOID02', NULL, NULL, 300001, NULL, NULL, NULL, '\000', 170, 45, NULL, NULL, NULL, false, true, NULL, false),
(4104, '13.06.1989 14:15', 'work', '3 months', 'H0M0SC1B3R', 89000002, 89000001, NULL, NULL, 89000001, NULL, '\000', 180, 65, NULL, NULL, NULL, false, false, 'HIV vaccine expired', false),
(4105, '13.06.1989 14:20', 'transit', '7 days', 'YAN22IICH0', 89000003, NULL, NULL, NULL, NULL, NULL, '\000', 165, 50, '\001', NULL, NULL, true, NULL, NULL, false);

INSERT INTO moa.citations VALUES
(1, '04.01.1983 06:45', 361, 'Work pass - invalid date'),
(2, '17.12.1982 17:05', 259, 'No diplomatic authorization in Arstotzka'),
(3, '13.06.1989 14:03', 4101, 'Access permit expired');