import psycopg2

def create_tables():
    # Queries para criar tabelas
    commands = (
    ''' 
    CREATE TABLE client_exercise(
        name varchar(30),
        registration_status boolean,
        phone integer,
        email varchar(20),
        address varchar(60)
    ) 
    ''',
    ''' CREATE TABLE product_exercise(
        name varchar(30),
        registration_status boolean,
        phone integer,
        email varchar(20),
        address varchar(60)
    ) 
    ''',
    ''' CREATE TABLE stock_exercise(
        name varchar(30),
        quantity integer,
        phone integer,
        email varchar(20),
        address varchar(60)
    ) 
    ''')

    conn = None

    try:
        # Conectando 
        conn = psycopg2.connect(
            database="ebac",
            user="postgres",
            password="ebac",
            host="localhost",
            port="5433"
        )

        # Criando Cursor
        cur = conn.cursor()

        # Criar tabelas
        for command in commands:
            cur.execute(command)

        # Fechar comunicação com PostgreSQL
        cur.close()

        # Fazer commit
        conn.commit()
    
    except Exception as error:
        print(error)

    finally:
        if conn is not None:
            conn.close()


create_tables()