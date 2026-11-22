SELECT * FROM supplieraddresses;

SELECT s.supplierName, t.addresstype, a.addressLine, a.city
FROM supplieraddresses sa
INNER JOIN suppliers s ON s.id = sa.supplier_id
INNER JOIN addresses a ON a.id = sa.address_id
INNER JOIN addresstypes t ON t.id = sa.addresstype_id;