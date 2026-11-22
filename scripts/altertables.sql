ALTER TABLE products DROP CONSTRAINT fk_suppliers;

ALTER TABLE products
ADD CONSTRAINT fk_suppliers FOREIGN KEY(supplier_id) REFERENCES suppliers(id) ON DELETE RESTRICT;

ALTER TABLE supplieraddresses DROP CONSTRAINT fk_addresses;

ALTER TABLE supplieraddresses
ADD CONSTRAINT fk_addresses FOREIGN KEY(address_id) REFERENCES addresses(id) ON DELETE CASCADE;

ALTER TABLE supplieraddresses DROP CONSTRAINT fk_suppliers;
ALTER TABLE supplieraddresses
ADD CONSTRAINT fk_suppliers FOREIGN KEY(supplier_id) REFERENCES suppliers(id) ON DELETE CASCADE;


ALTER TABLE supplieraddresses DROP CONSTRAINT fk_addresstypes;
ALTER TABLE supplieraddresses
ADD CONSTRAINT fk_addresstypes FOREIGN KEY(addresstype_id) REFERENCES addresstypes(id) ON DELETE RESTRICT;

ALTER TABLE inventory DROP CONSTRAINT fk_products;
ALTER TABLE inventory
ADD CONSTRAINT fk_products FOREIGN KEY(product_id) REFERENCES products(id) ON DELETE CASCADE;


ALTER TABLE recipeingredients DROP CONSTRAINT fk_recipies;
ALTER TABLE recipeingredients
ADD CONSTRAINT fk_recipes FOREIGN KEY(recipe_id) REFERENCES recipes(id) ON DELETE CASCADE;


ALTER TABLE recipeingredients DROP CONSTRAINT fk_products;
ALTER TABLE recipeingredients
ADD CONSTRAINT fk_products FOREIGN KEY(product_id) REFERENCES products(id) ON DELETE RESTRICT;