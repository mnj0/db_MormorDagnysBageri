CREATE TABLE suppliers(
    id SERIAL PRIMARY KEY,
    supplierName VARCHAR(80) NOT NULL,
    contactPerson VARCHAR(60) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(128) NOT NULL
);

CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    itemNumber VARCHAR(15) NOT NULL UNIQUE,
    itemName VARCHAR(80) NOT NULL, 
    pricePerKg DECIMAL NOT NULL
    --supplier_id INTEGER NOT NULL
);

CREATE TABLE adresses(
    id SERIAL PRIMARY KEY,
    addressLine VARCHAR(60) NOT NULL,
    postCode CHAR(5) NOT NULL,
    city VARCHAR(60) NOT NULL
);