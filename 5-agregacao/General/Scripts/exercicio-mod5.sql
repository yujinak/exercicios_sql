--------------------------------DDL--------------------------------

--product
CREATE TABLE "exercise".product (
	product_id serial NOT NULL,
	"name" varchar(25) NOT NULL,
	created_date timestamp NOT NULL DEFAULT now(),
	CONSTRAINT product_pkey PRIMARY KEY (product_id)
);

-- stock

CREATE TABLE "exercise".stock (
	id serial NOT NULL,
	product_id int4 NOT NULL,
	quantity int4 NOT NULL,
	CONSTRAINT stock_pkey PRIMARY KEY (id)
);


--------------------------------DML--------------------------------


--1 
insert into "exercise".product (name) values ('celular');
insert into "exercise".product (name) values ('livro');
insert into "exercise".product (name) values ('tablet');
insert into "exercise".product (name) values ('notebook');
insert into "exercise".product (name) values ('roteador');


insert into "exercise".stock (product_id, quantity) values (1, 5);
insert into "exercise".stock (product_id, quantity) values (2, 3);
insert into "exercise".stock (product_id, quantity) values (3, 0);
insert into "exercise".stock (product_id, quantity) values (4, 1);
insert into "exercise".stock (product_id, quantity) values (5, 0);


--2

-- Dica 1 há um erro de sintaxe (lembre que o Group By precisa estar com a mesma quantidade de colunas do SELECT)
-- Dica 2 ordene pela quantidade decrescente de produtos

select
	name product_name,
	"exercise".stock.product_id,
	"exercise".stock.quantity 
FROM
	"exercise".product
INNER JOIN "exercise".stock USING (product_id)    	
GROUP by
	product_name,
	"exercise".stock.product_id,
	"exercise".stock.quantity 
ORDER BY quantity DESC;


--3
select 
	sum(quantity) -- campo para somar a quantidade de itens no stock
from "exercise".stock