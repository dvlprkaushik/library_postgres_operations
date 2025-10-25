-- 02_insert_data.sql

INSERT INTO users (name, email) VALUES
('Amit Sharma', 'amit@gmail.com'),
('Priya Singh', 'priya@gmail.com'),
('Rohit Mehta', 'rohit@gmail.com'),
('Sneha Patel', 'sneha@gmail.com'),
('Arjun Das', 'arjun@gmail.com'),
('Neha Verma', 'neha@gmail.com'),
('Karan Gupta', 'karan@gmail.com'),
('Tina Roy', 'tina@gmail.com'),
('Rahul Nair', 'rahul@gmail.com'),
('Meena Iyer', 'meena@gmail.com');

INSERT INTO books (title, author, published_year) VALUES
('Atomic Habits', 'James Clear', 2018),
('Ikigai', 'Héctor García', 2016),
('The Alchemist', 'Paulo Coelho', 1988),
('Deep Work', 'Cal Newport', 2016),
('Think Like a Monk', 'Jay Shetty', 2020),
('Sapiens', 'Yuval Noah Harari', 2011),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 1997),
('The Subtle Art of Not Giving a F*ck', 'Mark Manson', 2016),
('Clean Code', 'Robert C. Martin', 2008),
('The Pragmatic Programmer', 'Andrew Hunt', 1999),
('The Psychology of Money', 'Morgan Housel', 2020),
('Educated', 'Tara Westover', 2018);

INSERT INTO borrowed_books (user_id, book_id, borrow_date, return_date) VALUES
(1, 1, '2024-01-10', '2024-01-20'),
(1, 5, '2024-03-12', '2024-03-25'),
(2, 2, '2024-02-05', NULL),
(3, 3, '2024-03-01', '2024-03-15'),
(3, 7, '2024-03-18', NULL),
(4, 6, '2024-01-09', '2024-01-25'),
(5, 4, '2024-04-05', '2024-04-18'),
(6, 8, '2024-04-20', NULL),
(7, 9, '2024-05-02', '2024-05-20'),
(7, 10, '2024-05-25', NULL),
(8, 11, '2024-06-05', '2024-06-15'),
(8, 12, '2024-07-01', NULL),
(9, 1, '2024-07-10', NULL),
(9, 2, '2024-07-25', '2024-08-05'),
(10, 3, '2024-08-10', NULL),
(10, 4, '2024-08-20', '2024-09-01'),
(4, 5, '2024-09-05', NULL),
(6, 6, '2024-09-10', '2024-09-25'),
(5, 8, '2024-09-15', NULL),
(2, 9, '2024-09-25', '2024-10-05');
