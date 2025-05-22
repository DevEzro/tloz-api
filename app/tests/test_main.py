import requests

API_URL = "http://localhost:8000"

def test_prueba():
    response = requests.get(API_URL)
    print(response)

def test_get_greeting():
    print(f"\n==================== [WELCOME TO TLOZ API] ====================")
    response = requests.get(API_URL + "/")
    assert response.status_code == 200
    data = response.json()
    
    if response.status_code == 200:
        print(f"RESPONSE: {response.status_code}\nDATA: {data}")