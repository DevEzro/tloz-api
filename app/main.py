from fastapi import FastAPI
import psycopg2
from psycopg2.extras import RealDictCursor

app = FastAPI()

@app.get("/greeting")
async def greeting():
    return {"message": """🤗 Hi! Hope you enjoy this TLOZ® API to play with! If you like this repository, please consider giving it a star ⭐!"""}

@app.get("/characters-table")
async def characters_table():
    try:
        # Conectar a la base de datos PostgreSQL
        conn = psycopg2.connect(
            dbname="hyrule",
            user="ganon",
            password="tr1f0rc3",
            host="127.0.0.1",  # <-- aquí el cambio
            port="5432"
        )
        
        # Crear un cursor que devuelve diccionarios en lugar de tuplas
        cursor = conn.cursor(cursor_factory=RealDictCursor)
        
        # Ejecutar una consulta (ajusta el nombre de la tabla)
        cursor.execute("SELECT * FROM characters;")
        
        # Obtener los resultados
        rows = cursor.fetchall()

        # Cerrar conexión
        cursor.close()
        conn.close()

        return {"data": rows}
    
    except Exception as e:
        return {"error": str(e)}
    
@app.get("/objects-table")
async def objects_table():
    try:
        # Conectar a la base de datos PostgreSQL
        conn = psycopg2.connect(
            dbname="hyrule",
            user="ganon",
            password="tr1f0rc3",
            host="127.0.0.1",  # <-- aquí el cambio
            port="5432"
        )
        
        # Crear un cursor que devuelve diccionarios en lugar de tuplas
        cursor = conn.cursor(cursor_factory=RealDictCursor)
        
        # Ejecutar una consulta (ajusta el nombre de la tabla)
        cursor.execute("SELECT * FROM objects;")
        
        # Obtener los resultados
        rows = cursor.fetchall()

        # Cerrar conexión
        cursor.close()
        conn.close()

        return {"data": rows}
    
    except Exception as e:
        return {"error": str(e)}