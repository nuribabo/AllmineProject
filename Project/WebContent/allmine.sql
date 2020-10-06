select * from product;

select * from member where id = 'nuri' and pw ='snfl'; 

select * from product;

insert into product values('4', '1', 300, 0, 10, '우주', 'https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200407_94%2F1586240051033tfKWk_PNG%2F23599885513671623_1478158385.png&type=sc960_832');
commit
update product set IMG_ADDR = 'https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200407_94%2F1586240051033tfKWk_PNG%2F23599885513671623_1478158385.png&type=sc960_832' where product_id = '2'; 

select * from product where product_name like '%오%';
select * from product where product_name like '%사%';

select * from cart_product;
