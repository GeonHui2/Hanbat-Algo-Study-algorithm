SELECT U.USER_ID, U.NICKNAME,
CONCAT(CITY, ' ', STREET_ADDRESS1, ' ', STREET_ADDRESS2) AS 전체주소, 
CONCAT(substr(U.TLNO, 1, 3), '-', substr(U.TLNO, 4, 4), '-',substr(U.TLNO, 8, 4)) AS 전화번호
FROM USED_GOODS_USER AS U
JOIN USED_GOODS_BOARD  AS B
ON U.USER_ID = B.WRITER_ID
GROUP BY U.USER_ID
HAVING COUNT(U.USER_ID) >= 3
ORDER BY U.USER_ID DESC;
