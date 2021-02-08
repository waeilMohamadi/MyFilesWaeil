DROP TABLE IF EXISTS Product CASCADE;
DROP TABLE IF EXISTS company CASCADE;

CREATE TABLE Company(id SERIAL PRIMARY KEY,company_name varchar(50) NOT NULL,company_address varchar(200) NULL,company_size integer);

CREATE TABLE Product (id SERIAL PRIMARY KEY, product_name varchar(100) NOT NULL,quantity integer NOT NULL,company_id SERIAL,CONSTRAINT fk_company FOREIGN KEY (company_id) REFERENCES Company(id)
);

INSERT INTO Company(company_name, company_address, company_size) VALUES
('Homes','123 Baker Street AZ 11022',100),('Kaiba Corp',NULL,3)

INSERT INTO Product(product_name,Quantity,company_id) VALUES 
('The Dancing Stickman',3,1),
('Duel Disk System', 1000, 2);
SELECT * FROM Company;
SELECT * FROM Product;
