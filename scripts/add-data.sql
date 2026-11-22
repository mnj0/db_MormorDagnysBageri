-- Active: 1795273211740@@ep-lingering-star-b9935c08-pooler.c-7.eu-central-1.aws.neon.tech@5432@grandmabakerydb
INSERT INTO suppliers(
    supplierName,
    contactPerson,
    phone,
    email
)VALUES(
    'Arla',
    'Stefan Görgren',
    '031-60768434',
    'arlasupport@hotmail.com'
),(
    'St Green',
    'Hanna Blom',
    '031-57654765',
    'hannablom@hotmail.com'
),(
    'Garden',
    'Johanna Nyman',
    '031-67999214',
    'gardenco@hotmail.com'
),(
    'Skånemejerier',
    'Anette Gregow',
    '0703 52 98 97',
    'press@skanemejerier.se'
);

INSERT INTO addresses(
    addressLine,
    postCode,
    city
)VALUES(
    'Arlagatan 1', 
    '34565', 
    'Arla Staden'
),(
    'Grönavägen 7', 
    '41120', 
    'Göteborg'
),(
    'Trädgårdsgatan 9', 
    '41108', 
    'Göteborg'
),(
    'Mejerigatan 4', 
    '21115', 
    'Malmö');

INSERT INTO addresstypes(
    id, addresstype
)VALUES(
    1,
    'Billing'
),(
    2,
    'Delivery'
),(
    3,
    'Visiting'
);

INSERT INTO supplieraddresses (address_id, supplier_id, addresstype_id) VALUES
(1, 1, 1),  
(2, 2, 1),  
(3, 3, 1),  
(4, 4, 1);  

INSERT INTO products(
    itemNumber,
    itemName,
    pricePerKg,
    supplier_id
)VALUES(
    'ARL-1001',
    'Butter',
    89.00,
    1
),(
    'ARL-1002',
    'Milk',
    14.50,
    1
),(
    'ARL-1003',
    'Cream',
    42.00,
    1
),(
    'STG-2001',
    'Wheat flour',
    12.90,
    2
),(
    'STG-2002',
    'Rye flour',
    15.50,
    2
),(
    'STG-2003',
    'Oats',
    18.00,
    2
),(
    'GAR-3001',
    'Sugar',
    16.00,
    3
),(
    'GAR-3002',
    'Cinnamon',
    210.00,
    3
),(
    'GAR-3003',
    'Cardamom',
    450.00,
    3
),(
    'SKM-4001',
    'Eggs',
    38.00,
    4
),(
    'SKM-4002',
    'Yeast',
    65.00,
    4
),(
    'SKM-4003',
    'Cream cheese',
    78.00,
    4
);

