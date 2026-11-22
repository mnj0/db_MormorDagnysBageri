CREATE TABLE suppliers(
    id SERIAL PRIMARY KEY,
    supplierName VARCHAR(80) NOT NULL,
    contactPerson VARCHAR(60) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(128) NOT NULL
);

CREATE TABLE supplieraddresses(
    address_id INTEGER NOT NULL,
    CONSTRAINT fk_addresses FOREIGN KEY(address_id) REFERENCES addresses(id),
    supplier_id INTEGER NOT NULL, 
    CONSTRAINT fk_suppliers FOREIGN KEY(supplier_id) REFERENCES suppliers(id),
    addresstype_id INTEGER NOT NULL,
    CONSTRAINT fk_addresstypes FOREIGN KEY(addresstype_id) REFERENCES addresstypes(id),
    PRIMARY KEY (address_id, supplier_id, addresstype_id)


);

CREATE TABLE addresses(
    id SERIAL PRIMARY KEY,
    addressLine VARCHAR(60) NOT NULL,
    postCode CHAR(5) NOT NULL,
    city VARCHAR(60) NOT NULL
);

CREATE TABLE addresstypes(
    id SERIAL PRIMARY KEY,
    addresstype VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    itemNumber VARCHAR(15) NOT NULL UNIQUE,
    itemName VARCHAR(80) NOT NULL,
    pricePerKg DECIMAL NOT NULL,
    supplier_id INTEGER NOT NULL,
    CONSTRAINT fk_suppliers FOREIGN KEY(supplier_id) REFERENCES suppliers(id)
);