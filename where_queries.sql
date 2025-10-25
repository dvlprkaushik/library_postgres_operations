-- 2. WHERE CONDITIONS

-- Books published before 2000.
SELECT * FROM public.books WHERE published_year < 2000;

-- Borrowed books where return_date IS NULL.
SELECT * FROM public.borrowed_books WHERE return_date IS NULL;

-- Users with Gmail accounts.
SELECT * FROM public.users WHERE email LIKE '%@gmail.com';

-- Borrow records borrowed in March 2024.
SELECT * FROM public.borrowed_books WHERE borrow_date BETWEEN '2024-03-01' AND '2024-03-31';

-- Books whose author name contains 'Robert'.
SELECT * FROM public.books WHERE author LIKE '%Robert%';
