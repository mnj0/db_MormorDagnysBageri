ALTER TABLE products DROP CONSTRAINT fk_suppliers;

ALTER TABLE products
ADD CONSTRAINT fk_suppliers FOREIGN KEY(supplier_id) REFERENCES suppliers(id) ON DELETE RESTRICT;

ALTER TABLE supplieraddresses DROP CONSTRAINT fk_addresses;

ALTER TABLE supplieraddresses
ADD CONSTRAINT fk_addresses FOREIGN KEY(address_id) REFERENCES addresses(id) ON DELETE CASCADE;