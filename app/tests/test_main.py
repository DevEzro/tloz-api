import requests, json

API_URL = "http://localhost:8000"

def test_prueba():
    response = requests.get(API_URL)
    print(response)

def test_get_greeting():
    print(f"\n===================== [🙌🏻 WELCOME TO TLOZ API] =====================")
    response = requests.get(API_URL + "/greeting")
    assert response.status_code == 200
    data = response.json()
    
    if response.status_code == 200:
        print(f"RESPONSE: {response.status_code}\nDATA: {json.dumps(data, indent=4, ensure_ascii=False)}")

def test_get_characters():
    print(f"\n===================== [📥 GET CHARACTERS] =====================")
    response = requests.get(API_URL + "/characters-table")
    assert response.status_code == 200
    data = response.json()
    
    if response.status_code == 200:
        print(f"RESPONSE: {response.status_code}\nDATA: {json.dumps(data, indent=4, ensure_ascii=False)}")
        
def test_get_objects():
    print(f"\n===================== [📥 GET OBJECTS] =====================")
    response = requests.get(API_URL + "/objects-table")
    assert response.status_code == 200
    data = response.json()
    
    if response.status_code == 200:
        print(f"RESPONSE: {response.status_code}\nDATA: {json.dumps(data, indent=4, ensure_ascii=False)}")