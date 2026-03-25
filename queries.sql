/*
1. Напишіть SQL команду, за допомогою якої можна:

вибрати всі стовпчики (За допомогою wildcard “*”) з таблиці products;
вибрати тільки стовпчики name, phone з таблиці shippers,
та перевірте правильність її виконання в MySQL Workbench.
*/

-- Task 1.1
SELECT * FROM products;

-- Task 1.2
SELECT
	s.name AS shipper_name,
    s.phone AS shipper_phone
FROM
	shippers as s;
    
/*
2. Напишіть SQL команду, за допомогою якої можна знайти 
середнє, максимальне та мінімальне значення стовпчика price таблички products, 
та перевірте правильність її виконання в MySQL Workbench*.*
*/

-- Task 2
SELECT
	AVG(p.price) AS avg_product_price,
    MAX(p.price) AS max_product_price,
    MIN(p.price) AS min_product_price
FROM
	products as p;

/*
3. Напишіть SQL команду, за допомогою якої можна обрати 
унікальні значення колонок category_id та price таблиці products.
Оберіть порядок виведення на екран за спаданням значення price та виберіть тільки 10 рядків. 
Перевірте правильність виконання команди в MySQL Workbench.
*/

-- Task 3
SELECT DISTINCT
	p.category_id AS product_categegory_id,
    p.price AS product_price
FROM
	products as p
ORDER BY
	p.price DESC
LIMIT 10;

/*
4. Напишіть SQL команду, за допомогою якої можна знайти 
кількість продуктів (рядків), які знаходиться в цінових межах від 20 до 100, 
та перевірте правильність її виконання в MySQL Workbench.
*/

-- Task 4
SELECT
	COUNT(id) as products_count_20_100
FROM
	products as p
WHERE
	price BETWEEN 20 AND 100;

/*
5. Напишіть SQL команду, за допомогою якої можна знайти 
кількість продуктів (рядків) та середню ціну (price) 
у кожного постачальника (supplier_id), та перевірте правильність її виконання в MySQL Workbench.
*/

SELECT
	p.supplier_id AS product_supplier_id,
    COUNT(p.id) AS product_count,
    AVG(p.price) AS product_avg_price
FROM
	products as p
GROUP BY
	supplier_id;