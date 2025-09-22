USE ecommerce_db;

INSERT INTO Users (name, email, phone) VALUES 
  ('Alice','alice@example.com','9876543210'),
  ('Bob','bob@example.com','9876501234');

INSERT INTO Categories (category_name) VALUES ('Electronics'), ('Books');

INSERT INTO Products (name, description, price, stock, category_id) VALUES
  ('Wireless Mouse','Ergonomic',299.99,50,1),
  ('Data Structures Book','CS textbook',499.00,20,2);

INSERT INTO Orders (user_id, status) VALUES (1,'Completed'), (2,'Pending');

INSERT INTO Order_Items (order_id, product_id, quantity, price) VALUES
  (1,1,2,299.99),
  (1,2,1,499.00);

INSERT INTO Payments (order_id, amount, payment_method) VALUES
  (1,1098.98,'Credit Card');  -- 2*299.99 + 1*499.00 = 1098.98
