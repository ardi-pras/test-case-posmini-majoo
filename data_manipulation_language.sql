Data Manipulation Language
a. Admin
INSERT INTO admin VALUES('majoo1', '$2y$10$fRJKJtdGhdhxOIHZg1Jame6.A5jbYnrPZbvevfWyazWrWoCgDMw3q');

b. Product
INSERT INTO product VALUES(NULL, 'Majo Pro', 1, 'Lorem ipsum', 275000, 'majo_pro_img.jpeg');
INSERT INTO product VALUES(NULL,'Majo Advance', 1, 'Lorem ipsum', 276000, 'majo_advance_img.jpeg');
INSERT INTO product VALUES(NULL,'Majo Lifestyle', 1, 'Lorem ipsum', 277000, 'majo_lifestyle_img.jpeg');
INSERT INTO product VALUES(NULL,'Majo Desktop', 1, 'Lorem ipsum', 278000, 'majo_lifestyle_img.jpeg');

SELECT * FROM product;

UPDATE product SET product_name= 'Majo Prooo' WHERE product_id = 1;
UPDATE product SET product_price= 3000000 WHERE product_id = 2;
UPDATE product SET product_description= 'Lorem ipsum Majo Lifestyle' WHERE product_id = 3;
UPDATE product SET product_image= 'majo_lifestyles_img.jpeg' WHERE product_id = 4;

DELETE FROM product WHERE product_id=1;

c. Category
INSERT INTO category VALUES(NULL, 'Elektronik');
INSERT INTO category VALUES(NULL, 'Otomotif');
INSERT INTO category VALUES(NULL, 'Fashion');
INSERT INTO category VALUES(NULL, 'Makanan');
INSERT INTO category VALUES(NULL, 'Minuman');

SELECT * FROM category;

UPDATE category SET category_name='Furnitur' WHERE category_id=1;

DELETE FROM category WHERE category_id=1;