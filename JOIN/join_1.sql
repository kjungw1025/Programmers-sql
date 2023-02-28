SELECT BOOK.BOOK_ID, AUTHOR.AUTHOR_NAME, DATE_FORMAT(BOOK.PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK, AUTHOR
WHERE BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID AND BOOK.CATEGORY = '경제'
ORDER BY BOOK.PUBLISHED_DATE ASC; 
