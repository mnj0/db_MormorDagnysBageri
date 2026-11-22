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

--antal produkter i lager
SELECT products.itemName, inventory.quantity
FROM inventory
INNER JOIN products ON products.id = inventory.product_id;

--ingredienser i recept
SELECT recipes.recipeName, products.itemName
FROM recipeingredients
INNER JOIN recipes ON recipes.id = recipeingredients.recipe_id
INNER JOIN products ON products.id = recipeingredients.product_id
ORDER BY recipes.recipeName;

--beställa från vad med ett recept.
SELECT recipes.recipeName, products.itemName, suppliers.supplierName, suppliers.phone, suppliers.email
FROM recipeingredients
INNER JOIN recipes ON recipes.id = recipeingredients.recipe_id
INNER JOIN products ON products.id = recipeingredients.product_id
INNER JOIN suppliers ON suppliers.id = products.supplier_id
WHERE recipes.recipeName = 'Cinnamon bun';
