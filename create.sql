-- Создаём таблицы

CREATE SCHEMA IF NOT EXISTS moa;

CREATE TABLE IF NOT EXISTS moa.nations (
  name VARCHAR(256) PRIMARY KEY,
  allowed BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS moa.nations_history (
  name VARCHAR(256),
  until TIMESTAMP,
  allowed BOOLEAN NOT NULL,
  PRIMARY KEY (name, until)
);

CREATE TABLE IF NOT EXISTS moa.issue_cities (
  name VARCHAR(256),
  nation VARCHAR(256) NOT NULL REFERENCES moa.nations (name),
  valid_from TIMESTAMP,
  valid_to TIMESTAMP,
  PRIMARY KEY (name, valid_from)
);

CREATE TABLE IF NOT EXISTS moa.districts (
  name VARCHAR(256) PRIMARY KEY,
  confiscate BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS moa.districts_history (
  name VARCHAR(256),
  until TIMESTAMP,
  confiscate BOOLEAN NOT NULL,
  PRIMARY KEY (name, until)
);

CREATE TYPE GENDER AS ENUM ('M', 'F');

CREATE TABLE IF NOT EXISTS moa.passports (
  id CHAR (10) PRIMARY KEY,
  name VARCHAR (256) NOT NULL,
  nation VARCHAR (256) NOT NULL,
  issue_city VARCHAR (256) NOT NULL,
  birth_date DATE NOT NULL,
  gender GENDER NOT NULL,
  expiry DATE NOT NULL,
  photo BYTEA
);

CREATE TABLE IF NOT EXISTS moa.access_permits (
  id INTEGER PRIMARY KEY,
  name VARCHAR (256) NOT NULL,
  passport CHAR (10) NOT NULL REFERENCES moa.passports (id),
  nation VARCHAR (256) NOT NULL REFERENCES moa.nations (name),
  purpose TEXT NOT NULL,
  duration INTERVAL,
  height NUMERIC NOT NULL,
  weigh NUMERIC NOT NULL,
  appear TEXT NOT NULL,
  expiry DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS moa.work_passes (
  id INTEGER PRIMARY KEY,
  name VARCHAR (256) NOT NULL,
  field VARCHAR (256) NOT NULL,
  expiry DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS moa.diplomatic_auths (
  id INTEGER PRIMARY KEY,
  name VARCHAR (256) NOT NULL,
  passport CHAR (10) NOT NULL,
  origin VARCHAR (256) NOT NULL
);

CREATE TABLE IF NOT EXISTS moa.auth_nations (
  auth_id INTEGER REFERENCES moa.diplomatic_auths (id),
  nation VARCHAR (256),
  PRIMARY KEY (auth_id, nation)
);

CREATE TABLE IF NOT EXISTS moa.asylum_grants (
  id INTEGER PRIMARY KEY,
  name VARCHAR (256) NOT NULL,
  photo BYTEA NOT NULL,
  passport CHAR (10) NOT NULL REFERENCES moa.passports (id),
  nation VARCHAR (256) NOT NULL REFERENCES moa.nations (name),
  birth_date DATE NOT NULL,
  height NUMERIC NOT NULL,
  weigh NUMERIC NOT NULL,
  fingerprint BYTEA NOT NULL,
  expiry DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS moa.identity_cards (
  id INTEGER PRIMARY KEY,
  name VARCHAR (256) NOT NULL,
  photo BYTEA NOT NULL,
  district VARCHAR (256) NOT NULL REFERENCES moa.districts (name),
  birth_date DATE NOT NULL,
  height NUMERIC NOT NULL,
  weigh NUMERIC NOT NULL
);

CREATE TABLE IF NOT EXISTS moa.vax_certificates (
  id INTEGER PRIMARY KEY,
  name VARCHAR (256) NOT NULL,
  passport CHAR (10) NOT NULL
);

CREATE TABLE IF NOT EXISTS moa.vaccines (
  cert_id INTEGER,
  vaccine VARCHAR (256),
  vax_date DATE NOT NULL,
  PRIMARY KEY (cert_id, vaccine)
);

CREATE TABLE IF NOT EXISTS moa.identity_records (
  id INTEGER PRIMARY KEY,
  name VARCHAR (256) NOT NULL,
  alias VARCHAR (256),
  fingerprint BYTEA NOT NULL
);

CREATE TABLE IF NOT EXISTS moa.entrants (
  id INTEGER PRIMARY KEY,
  entry_date TIMESTAMP NOT NULL,
  purpose TEXT,
  duration INTERVAL,
  passport CHAR (10) REFERENCES moa.passports (id),
  access_permit INTEGER REFERENCES moa.access_permits (id),
  work_pass INTEGER REFERENCES moa.work_passes (id),
  diplomat_auth INTEGER REFERENCES moa.diplomatic_auths (id),
  asylum_grant INTEGER REFERENCES moa.asylum_grants (id),
  vax_cert INTEGER REFERENCES moa.vax_certificates (id),
  id_card INTEGER REFERENCES moa.identity_cards (id),
  photo BYTEA NOT NULL,
  height NUMERIC NOT NULL,
  weigh NUMERIC NOT NULL,
  body_scan BYTEA,
  fingerprint BYTEA,
  identity_rec INTEGER REFERENCES moa.identity_records (id),
  detained BOOLEAN NOT NULL,
  admitted BOOLEAN CHECK (NOT detained OR admitted IS NULL),
  denial_reason TEXT CHECK (denial_reason IS NULL OR NOT admitted),
  confiscated BOOLEAN NOT NULL CHECK (NOT confiscated OR confiscated IS NULL OR passport IS NOT NULL)
);

CREATE TABLE IF NOT EXISTS moa.citations (
  id INTEGER PRIMARY KEY,
  cit_time TIMESTAMP NOT NULL,
  entrant INTEGER NOT NULL REFERENCES moa.entrants (id),
  violation TEXT NOT NULL
);
