SELECT * FROM supplieraddresses;


--leverantör med addresser
SELECT suppliers.supplierName, addresses.addressLine, addresses.city, addresstypes.addresstype
FROM supplieraddresses
INNER JOIN suppliers ON suppliers.id = supplieraddresses.supplier_id
INNER JOIN addresses ON addresses.id = supplieraddresses.address_id
INNER JOIN addresstypes ON addresstypes.id = supplieraddresses.addresstype_id;

--produkter med leverantörer
SELECT products.itemName, suppliers.supplierName, products.itemNumber, products.pricePerKg
FROM products
INNER JOIN suppliers ON suppliers.id = products.supplier_id
ORDER BY suppliers.supplierName;