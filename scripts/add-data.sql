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