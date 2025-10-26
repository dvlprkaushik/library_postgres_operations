-- 6. GROUP BY QUERIES

-- Count how many books each user borrowed.
SELECT u.name AS user_name, COUNT(bb.id) AS book_count
FROM public.users u
INNER JOIN public.borrowed_books bb
ON bb.user_id = u.id
GROUP BY u.name;

-- Count how many times each book was borrowed.
SELECT b.title AS book_name, COUNT(bb.id) AS borrow_count
FROM public.books b
INNER JOIN public.borrowed_books bb
ON bb.book_id = b.id
GROUP BY b.title;

-- Group borrowed_books by MONTH(borrow_date) and count.
SELECT
to_char(bb.borrow_date, 'yyyy-mm') AS borrow_month,
COUNT(bb.id) as book_count
FROM public.borrowed_books bb
GROUP BY borrow_month
ORDER BY borrow_month;
