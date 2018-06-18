DROP TABLE IF EXISTS account;
CREATE TABLE account (
  id        INT(11) NOT NULL AUTO_INCREMENT,
  name      VARCHAR(32) NOT NULL,
  password  CHAR(32) NOT NULL,
  point     INT(11) NOT NULL DEFAULT 0,
  is_online TINYINT(1) NOT NULL DEFAULT 0,
  is_lock   TINYINT(1) NOT NULL DEFAULT 0,

  PRIMARY   KEY (id, name),
  UNIQUE    KEY id USING BTREE (id),
  UNIQUE    KEY name (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO account(name, password) VALUES ('1', 'c4ca4238a0b923820dcc509a6f75849b');
INSERT INTO account(name, password) VALUES ('2', 'c4ca4238a0b923820dcc509a6f75849b');
INSERT INTO account(name, password) VALUES ('3', 'c4ca4238a0b923820dcc509a6f75849b');

