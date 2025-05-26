# WHAT YOU WILL NEED
- Docker
- Pip instaled
- Install python packages: `pip install -r requirements.txt`

# STEP 1
- First make sure to install the packages with the command bellow.
- Make 'docker compose up -d' to start a postgres container
>[!NOTE] 
For those who have a pgadmin container, you can manage this postgres server by adding to a new connection, but first you would need a docker network instance. For that follow the next steps:
    - `docker network create <custom_docker_network>`
    - `docker network connect <custom_docker_network> <docker_container>` and `docker network connect <custom_docker_network> <your_pgadmin_container>`
    - Later, add a new connection with the specifications insde the compose file.

# LAUNCH API
Inside `app` folder: `uvicorn main:app --reload`

# RUN PYTEST
>[!NOTE] 
Run it as you want. This is only my preferences

```
pytest -s -v --disable-pytest-warnings path/to/test_main.py
```

```
-s: shows all aoutputs
-v: makes outputs more verbose
--disable-pytest-warnings: does not show anoying and irrelevant warnings
```