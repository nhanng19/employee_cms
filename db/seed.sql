INSERT INTO department (name) VALUES
('Marketing'),
('Finance'),
('Operations Management'),
('Human Resource'),
('IT'),
('Customer Service');

INSERT INTO role (title, salary, department_id) VALUES
('CEO', 1000000, 3),
('CMO', 200000, 1),
('CFO', 300000, 2),
('CTO', 500000, 5),
('Associate', 75000, 4),
('Intern', 50000, 6);

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
('Nhan', 'Nguyen', 1, null),
('Adam', 'Turner', 2, 1),
('Jacky', 'Cai', 3, 1),
('John', 'Appleseed', 4, 1),
('Lex', 'Luthor', 2, 1),
('Kim', 'Kelly', 5, 2),
('Connor', 'McGregor', 6, 3),
('Scotty', 'Hotty', 5, 3),
('Sun', 'Tzu', 5, 2),
('Bobby', 'Fischer', 6, 4),
('Tommy', 'Hilfiger', 5, 5),
('Hikaru', 'Nakamura', 6, 6);
