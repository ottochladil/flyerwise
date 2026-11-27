CREATE TABLE store (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    CONSTRAINT uq_store_name UNIQUE (name)
);

CREATE TABLE product (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    brand VARCHAR(100),
    category VARCHAR(100),
    unit VARCHAR(10) NOT NULL,
    package_size NUMERIC(10,3) NOT NULL,
    CONSTRAINT chk_product_unit CHECK (unit IN ('KG', 'L', 'PCS')),
    CONSTRAINT chk_product_package_size CHECK (package_size > 0)
);
