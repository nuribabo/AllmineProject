select * from product ORDER BY discount_rate DESC;
1. SELECT empno FROM emp ORDER BY empno DESC
select * from member where id = 'nuri' and pw ='snfl'; 

select * from product;

insert into product values('4', '1', 300, 0, 10, '우주', 'https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200407_94%2F1586240051033tfKWk_PNG%2F23599885513671623_1478158385.png&type=sc960_832');
commit
update product set IMG_ADDR = 'https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200407_94%2F1586240051033tfKWk_PNG%2F23599885513671623_1478158385.png&type=sc960_832' where product_id = '2'; 

select * from product where product_name like '%오%';
select * from product where product_name like '%사%';

select * from recipe;

select RECIPE_NAME, RECIPE_RATE, TO_NUMBER(replace(RECIPE_PREFERENCE, '명', '')) AS PRE, RECIPE_IMG, RECIPE_INGREDIENT FROM RECIPE
ORDER BY PRE DESC;