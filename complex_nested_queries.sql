-- 7. COMPLEX / NESTED

-- Find users who borrowed more than 1 books.
SELECT u.name , COUNT(bb.id) as book_count
FROM public.users u
INNER JOIN public.borrowed_books bb
ON bb.user_id = u.id
GROUP BY u.name
HAVING COUNT(bb.id) > 1;


-- Find the most borrowed book title.
SELECT b.title as book_name, COUNT(bb.id) AS book_count
FROM public.books b
INNER JOIN public.borrowed_books bb
ON bb.book_id = b.id
GROUP BY b.title
ORDER BY COUNT(bb.id) DESC
LIMIT 1;


-- Find users who borrowed a book by 'Robert Kiyosaki'.
SELECT u.name as user_name
FROM public.users u
INNER JOIN public.borrowed_books bb
ON bb.user_id = u.id
INNER JOIN public.books b
ON bb.book_id = b.id
WHERE b.author = 'Robert Kiyosaki'
GROUP BY u.name;



-- Find books borrowed by users whose name starts with 'A'.
SELECT b.title as book_name, u.name as user_name
FROM public.borrowed_books bb
INNER JOIN public.books b
ON bb.book_id = b.id
INNER JOIN public.users u
ON bb.user_id = u.id
WHERE u.name LIKE 'A%'
GROUP BY b.title, u.name;
