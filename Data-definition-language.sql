CREATE TABLE Customer(
    Customer_id VARCHAR(20) PRIMARY KEY,
    Customer_name VARCHAR(20) NOT NULL,
    Customer_Tel NUMBER
);

CREATE TABLE Product(
    Product_id VARCHAR(20) PRIMARY KEY,
    Product_name VARCHAR(20) NOT NULL,
    Price NUMBER CHECK (Price > 0)
);

CREATE TABLE Orders (
	Customer_id VARCHAR(20) PRIMARY KEY,
	Product_id VARCHAR2(20) NOT NULL,
	Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT fk_Orders FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    CONSTRAINT fk_Orders FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

ALTER TABLE Product ADD Category VARCHAR2(20);
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE ;