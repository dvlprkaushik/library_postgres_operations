-- Find who borrowed which book.
SELECT u.name as user_name, b.title as book_name
FROM borrowed_books bb
JOIN users u ON bb.user_id = u.id
JOIN books b ON bb.book_id = b.id;


-- Show users who borrowed “Atomic Habits”.
SELECT u.name as user_name
FROM public.borrowed_books bb
JOIN public.users u ON bb.user_id = u.id
JOIN public.books b ON bb.book_id = b.id
WHERE b.title = 'Atomic Habits';

-- List all books that have never been borrowed.
SELECT b.title as book_name
FROM public.books b
LEFT JOIN public.borrowed_books bb
ON b.id = bb.book_id
WHERE bb.book_id IS NULL;

-- Show total books borrowed per user.
SELECT u.name, COUNT(bb.book_id) AS total_books
FROM users u
LEFT JOIN borrowed_books bb ON u.id = bb.user_id
GROUP BY u.name;


-- Show users with currently borrowed (not returned) books.
SELECT u.name as user_name
FROM public.users u
INNER JOIN public.borrowed_books bb
ON u.id = bb.user_id WHERE bb.return_date IS NULL;
