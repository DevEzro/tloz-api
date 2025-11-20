<p align="center">
  <img 
    src="./assets/tloz_api_v2.png" width="400">
  </img>
</p>

<br>
<br>

# 🤺 BEFORE STARTING
Make sure to have this tools installed in your system:
- 🐳 Docker
- 📦 Pip
- 🐍 Python (Recommended Python3)

For the Python venv run : `python3 -m venv <your_venv_name>`

<br>
<br>

# ▶️ STEPS
## 🪛 1. Required installations
- 🐍 Install python requirements:
```
pip install -r requirements.txt
```

- 🐳 Run `docker compose` command bellow:
>[!IMPORTANT]
Before running the `docker compose` command, If you don't mind or don't want to manage the database with the pgadmin container inside the compose file, just comment the pgadmin section.

```
docker compose up -d
``` 

>[!NOTE]
This will start the postgres container inside the compose file. By running this, the `init/init.sql` file will create the tables and values of these in the database automatically.

>[!TIP] 
>For those who have already a pgadmin container, you can manage this database by adding it to a new connection, but first you will need to create a docker network. For that follow the next steps:
>```
>docker network create <custom_docker_network>
>```
>```
>docker network connect <custom_docker_network> <docker_container>
>```
>```
>docker network connect <custom_docker_network> <your_pgadmin_container>
>```
>
>- Later, in your pgadmin instance, add a new connection with the specifications >insde the compose file:
>    - General Tab
>      - Name: `<the_server_name_of_your_preference>`
>    - Connection Tab (the postgres container properties)
>      - Host: `tloz-api-postgres`
>       - Maintence databse: `hyrule`
>       - Username: `ganon`
>       - Password: `tr1f0rc3`

<br>

## 🦄 2. Run FastAPI
Is required to run FastAPI locally. For this, run inside the `app` folder:
```
uvicorn main:app --reload
```

<br>

## 🌐 3. Try the API and DB connection
Search for `localhost:8000/docs` to access FastAPI and try it by executing the GET endpoints.

<br>
<br>

# 🧪 EXTRA: PYTEST
The `app/tests` contains a test file to try pytests. You're free to modify it. Run it as you want, this is only of my preference:

```
pytest -s -v --disable-pytest-warnings path/to/test_main.py
```

To understand the command above:
```
-s: shows all outputs
-v: makes outputs more verbose
--disable-pytest-warnings: does not show anoying and irrelevant warnings
```
