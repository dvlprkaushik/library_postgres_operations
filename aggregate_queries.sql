-- 4. AGGREGATES

-- Total number of borrowed books.
SELECT COUNT(*) AS total_books_borrowed
FROM public.borrowed_books;

-- Average number of books borrowed per user.
SELECT AVG(total_books) AS avg_books_per_user
FROM (
  SELECT user_id, COUNT(*) AS total_books
  FROM borrowed_books
  GROUP BY user_id
) AS user_borrow_counts;



-- Count of borrowed books that were returned vs not returned.
SELECT
CASE
WHEN bb.return_Date IS NULL THEN 'Not returned'
ELSE 'Returned'
END AS status,
COUNT(*) AS total_books
FROM public.borrowed_books bb
GROUP BY status;
