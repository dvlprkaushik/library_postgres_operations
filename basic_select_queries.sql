-- 🧩 1. BASIC SELECT

-- Show all users.
SELECT * FROM public.users;

-- Show all books published after 2010.
SELECT * FROM public.books WHERE published_year > 2010;

-- Show names and emails of users who joined recently (ORDER BY created_at DESC LIMIT 5).
SELECT name,email FROM public.users ORDER BY created_at DESC LIMIT 5;

-- Show only book titles and authors.
SELECT title,author FROM public.books;

-- Show borrowed_books table data.
SELECT * FROM public.borrowed_books;
