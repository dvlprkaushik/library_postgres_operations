-- 5. SORTING / FILTERING

-- Top 3 users with most borrowed books.
SELECT u.name AS user_name, COUNT(bb.id) AS borrow_count
FROM public.users u
INNER JOIN public.borrowed_books bb
ON bb.user_id = u.id
GROUP BY user_name
ORDER BY borrow_count DESC
LIMIT 3;

-- Sort books by published_year DESC.
SELECT b.title AS book_name, b.published_year AS published_year
FROM public.books b ORDER BY published_year DESC;


-- Order users alphabetically.
SELECT u.name as user_name
FROM public.users u
ORDER BY user_name;

-- Show borrow records ordered by borrow_date DESC.
SELECT bb.borrow_date
FROM public.borrowed_books bb
ORDER BY bb.borrow_date DESC;

-- Show only books borrowed in 2016.
SELECT b.title AS book_name
FROM public.books b
WHERE b.published_year = 2016;
