	--  Inserindo dados na tabela de client
    INSERT INTO client_exercise (client_id, name, registration_status, phone, email, address)
    VALUES (001,'Cláudio Silva', true, 21912345678, 'clau@gmail.com','Rua ABC, 111 - São Paulo/SP');
   
    INSERT INTO client_exercise (client_id, name, registration_status, phone, email, address)
    VALUES (002,'Regina Gentil', true, 21987654321, 'reg@gmail.com','Rua Imaginação, 321 - São Paulo/SP');
   
    INSERT INTO client_exercise (client_id, name, registration_status, phone, email, address)
    VALUES (003,'Gabriela', true, 44963531565, 'gabi@gmail.com','Rua Dejavu, 444 - Londrina/PR');

   	--  Inserindo dados na tabela de product
    INSERT INTO product_exercise (product_name, order_id, client_id)
    VALUES ('Ventilador', 0111424,2);
   
    INSERT INTO product_exercise (product_name, order_id, client_id)
    VALUES ('Cadeira', 05225,1);
  
    
	--  Inserindo dados na tabela de stock
    INSERT INTO stock_exercise (name, quantity, phone, email, address)
    VALUES ('Ventilador', 210,11232432533,'ventilador@hotmail.com','Rua ABC, 111 - São Paulo/SP');
   
    INSERT INTO stock_exercise (name, quantity, phone, email, address)
    VALUES ('Creme de barbear', 967,4192345233,'creme@barbear.com','Av. Blabla, 420 - Curitiba/PR');
    
