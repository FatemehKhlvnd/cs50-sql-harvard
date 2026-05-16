-- INGREDIENTS
CREATE TABLE ingredients (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    price_per_unit REAL NOT NULL
);

-- DONUTS
CREATE TABLE donuts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    gluten_free BOOLEAN NOT NULL,
    price REAL NOT NULL
);

-- DONUT ↔ INGREDIENTS (many-to-many)
CREATE TABLE donut_ingredients (
    donut_id INTEGER NOT NULL,
    ingredient_id INTEGER NOT NULL,
    PRIMARY KEY (donut_id, ingredient_id),
    FOREIGN KEY (donut_id) REFERENCES donuts(id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients(id)
);

-- CUSTOMERS
CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

-- ORDERS
CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_number INTEGER NOT NULL UNIQUE,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- ORDER ITEMS (each donut in an order)
CREATE TABLE order_items (
    order_id INTEGER NOT NULL,
    donut_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL DEFAULT 1,
    PRIMARY KEY (order_id, donut_id),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (donut_id) REFERENCES donuts(id)
);
