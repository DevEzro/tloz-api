# REQUIREMENTS
`pip install -r requirements.txt`

# LAUNCH API
Inside `app` folder: `uvicorn main:app --reload`

# RUN PYTEST
>[!NOTE] Run it as you want. This is only my preferences

`pytest -s -v --disable-pytest-warnings path/to/test_main.py`

```
-s: shows all aoutputs
-v: makes outputs more verbose
--disable-pytest-warnings: does not show anoying and irrelevant warnings
```