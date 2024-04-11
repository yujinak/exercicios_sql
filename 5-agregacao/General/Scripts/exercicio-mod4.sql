-- Definindo primary id de client
alter table client_exercise add primary key (client_id);

-- Relacionando tabelas client e product por foreign key
alter table product_exercise 
add constraint fk_client_product
foreign key (client_id)
references client_exercise (client_id);

-- Query com join das tabelas client e product
select client_exercise.name, client_exercise.email, client_exercise.phone, client_exercise.address, product_name
from client_exercise
inner join product_exercise
on client_exercise.client_id = product_exercise.client_id;
