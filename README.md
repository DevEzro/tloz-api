# BEFORE STARTING
Make sure to have this tools installed in your system:
- Docker
- Pip
- Install python packages: ```pip install -r requirements.txt```

## 1. Required installations
- First make sure to install the packages with the command bellow.
- If you want to manage the database with a pgadmin container but do not have one, uncomment the pgadmin section from the compose file. If not, proceed with the next steps.
- Run ```docker compose up -d``` to start the postgres container inside the compose file.

>[!NOTE] 
For those who have a pgadmin container, you can manage this database by adding it to a new connection, but first you would need to create a docker network. For that follow the next steps:
- ```docker network create <custom_docker_network>```
- ```docker network connect <custom_docker_network> <docker_container>```
- ```docker network connect <custom_docker_network> <your_pgadmin_container>```

- Later, in your pgadmin instance, add a new connection with the specifications insde the compose file:
    - General Tab
      - Name: `<the_server_name_of_your_preference>`
    - Connection Tab (the postgres container properties)
       - Host: `tloz-api-postgres`
       - Maintence databse: `hyrule`
       - Username: `ganon`
       - Password: `tr1f0rc3`

-----
<br>

## 2. Run FastAPI
Is required to run FastAPI locally. For this, run inside the `app` folder:
```uvicorn main:app --reload```

## 3. Try the API and DB connection
Search for `localhost:8000/docs` to access FastAPI and try it by executing the GET endpoints.

# EXTRA: PYTEST
>[!NOTE] 
The `app/tests` contains a test file to try pytests. Run it as you want. This is only of my preference:

```
pytest -s -v --disable-pytest-warnings path/to/test_main.py
```

To understand the command bellow:
```
-s: shows all aoutputs
-v: makes outputs more verbose
--disable-pytest-warnings: does not show anoying and irrelevant warnings
```