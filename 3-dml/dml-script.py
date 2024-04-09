import psycopg2

insert_clients = (
    '''
    INSERT INTO client_exercise (name, registration_status, phone, email, address)
    VALUES ('Cláudio da Silva', true, 21912345678, 'claudiosilva@gmail.com','Rua ABC, 111 - São Paulo/SP')
    ''',
     '''
    INSERT INTO client_exercise (name, registration_status, phone, email, address)
    VALUES ('Regina Gentil', true, 21987654321, 'reginagentil@gmail.com','Rua Imaginação, 321 - São Paulo/SP')
    ''',
     '''
    INSERT INTO client_exercise (name, registration_status, phone, email, address)
    VALUES ('Gabriela', true, 44963531565, 'gabi123@gmail.com','Rua Dejavu, 444 - Londrina/PR')
    '''
    )

insert_products = (
    '''
    INSERT INTO product_exercise (name, registration_status, phone, email, address)
    VALUES ('Ventilador', true, 11232432533, 'ventilador@hotmail.com','Rua ABC, 111 - São Paulo/SP')
    ''',
    '''
    INSERT INTO product_exercise (name, registration_status, phone, email, address)
    VALUES ('Creme de barbear', true, 4192345233, 'creme@barbear.com','Av. Blabla, 420 - Curitiba/PR')
    '''
)

insert_stock = (
    '''
    INSERT INTO stock_exercise (name, quantity, phone, email, address)
    VALUES ('Ventilador', 210,11232432533,'ventilador@hotmail.com','Rua ABC, 111 - São Paulo/SP')
    ''',
    '''
    INSERT INTO stock_exercise (name, quantity, phone, email, address)
    VALUES ('Creme de barbear', 967,4192345233,'creme@barbear.com','Av. Blabla, 420 - Curitiba/PR')
    '''
)

conn = None

try:
    conn = psycopg2.connect(
        database='ebac',
        user='postgres',
        password='ebac',
        host='localhost',
        port='5433'
    )
    cur = conn.cursor()

except Exception as error:
    print(error)