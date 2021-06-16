/*
 * in this directory execute:
 * sqlite3 -init ./schema.sql ../test/db/senecatest.db
 */

CREATE TABLE foo (
  id VARCHAR(36),
  p1 VARCHAR(255),
  p2 VARCHAR(255),
  p3 VARCHAR(255),
  int_arr VARCHAR(255),
  x INT,
  y INT,
  seneca VARCHAR(125)
);

CREATE TABLE moon_bar (
  id VARCHAR(36),
  str VARCHAR(255),
  `int` INT,
  bol BOOLEAN,
  wen DATETIME,
  mark VARCHAR(255),
  `dec` REAL,
  arr TEXT,
  obj TEXT,
  seneca VARCHAR(125)
);

CREATE TABLE players (
  id VARCHAR(36) NOT NULL,
  username VARCHAR(255) NOT NULL,
  points INT DEFAULT NULL,
  points_history TEXT DEFAULT NULL,

  PRIMARY KEY (id),
  UNIQUE(username)
);

CREATE TABLE racers (
  id VARCHAR(36) NOT NULL,
  points INT NOT NULL DEFAULT 0,
  username VARCHAR(255) NOT NULL,
  favorite_car VARCHAR(255) NOT NULL,

  PRIMARY KEY (id),
  UNIQUE(username)
);

CREATE TABLE users (
  id VARCHAR(36) NOT NULL,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,

  PRIMARY KEY (id),
  UNIQUE(email)
);

CREATE TABLE customers (
  id VARCHAR(36) NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  credits INT NOT NULL,

  PRIMARY KEY (id),
  UNIQUE(first_name, last_name)
);

CREATE TABLE products (
  id VARCHAR(36) NOT NULL,
  price VARCHAR(255) NOT NULL,
  label VARCHAR(255) DEFAULT NULL,
  coolness_factor INT DEFAULT NULL,

  PRIMARY KEY (id),
  UNIQUE(label),
  UNIQUE(label, price)
);

