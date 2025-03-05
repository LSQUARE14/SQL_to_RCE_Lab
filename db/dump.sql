

CREATE TABLE products(
  productsid int NOT NULL AUTO_INCREMENT,
  urlProduct VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (productsid)
);
INSERT INTO products(urlProduct) VALUES ('img/neaty-01.jpg');
INSERT INTO products(urlProduct) VALUES ('img/neaty-02.jpg');
INSERT INTO products(urlProduct) VALUES ('img/neaty-03.jpg');
INSERT INTO products(urlProduct) VALUES ('img/neaty-04.jpg');
INSERT INTO products(urlProduct) VALUES ('img/neaty-05.jpg');
INSERT INTO products(urlProduct) VALUES ('img/neaty-06.jpg');
INSERT INTO products(urlProduct) VALUES ('img/neaty-07.jpg');
INSERT INTO products(urlProduct) VALUES ('img/neaty-08.jpg');
INSERT INTO products(urlProduct) VALUES ('img/neaty-09.jpg');
INSERT INTO products(urlProduct) VALUES ('img/neaty-11.jpg');
INSERT INTO products(urlProduct) VALUES ('img/neaty-12.jpg');
INSERT INTO products(urlProduct) VALUES ('img/neaty-13.jpg');
INSERT INTO products(urlProduct) VALUES ('img/neaty-14.jpg');

CREATE TABLE flags(
  flag varchar(255)
);
INSERT INTO flags(flag) VALUES ('VSL{Cr@ck th3 s3rv3r_');