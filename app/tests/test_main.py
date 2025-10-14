import requests, json
from colorama import Fore

API_URL = "http://localhost:8000"

def test_prueba():
    response = requests.get(API_URL)
    print(response)

def test_get_greeting():
    print(r'''\n
    ===================== [🙌🏻 WELCOME TO TLOZ API] =====================

                     @@                                          
                    @::@                                         
                   @::::@                                        
                  @::::::@                                       
                 #::::::::%       @***************************@  
                +::::::::::+      %*===******************%%%*@   
               ::::::::::::::@   @*****@@@@@@@@@@@@*********@    
             @::::::::::::::::@  @***@           @****#****@     
            @::::::::::::::::::@@***@           @****@****@      
           @::::::::::::::::::::@*@            @****@****@       
          @+@@@@@@@@@@@@@@@@@@@@@@            @****@%***@        
         @::-                  :::@          @***@ @***@         
        @:::::@              @:::::@        @****@****@          
       @:::::::@            @:::::::@      @*********@           
      @:::::::::@          @:::::::::@    @***@@****@            
     @:::::::::::@        @:::::::::::@  @****@****@             
    @:::::::::::::@      @:::::::::::::@@*********@              
   @:::::::::::::::@    @::::::::::::::@***@ %***@            @  
  #:::::::::::::::::@  @::::::::::::::@***@ @***%           @*@  
 =:::::::::::::::::::@@::::::::::::::@****%****%           @**@  
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@****@****#           @***@  
                                   @****@****#          @****@   
                                  @*********#          @*****@   
                                 @**---*****************:::**@   
                                @***---*****************:::*@    
                                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    \n''')
    response = requests.get(API_URL + "/greeting")
    assert response.status_code == 200
    data = response.json()
    
    if response.status_code == 200:
        print(f"RESPONSE: {Fore.GREEN}{response.status_code}{Fore.RESET}\nDATA: {Fore.CYAN}{json.dumps(data, indent=4, ensure_ascii=False)}{Fore.RESET}")

def test_get_characters():
    print(f"\n===================== [📥 GET CHARACTERS] =====================")
    response = requests.get(API_URL + "/characters-table")
    assert response.status_code == 200
    data = response.json()
    
    if response.status_code == 200:
        print(f"RESPONSE: {Fore.GREEN}{response.status_code}{Fore.RESET}\nDATA: {Fore.CYAN}{json.dumps(data, indent=4, ensure_ascii=False)}{Fore.RESET}")
        
def test_get_objects():
    print(f"\n===================== [📥 GET OBJECTS] =====================")
    response = requests.get(API_URL + "/objects-table")
    assert response.status_code == 200
    data = response.json()
    
    if response.status_code == 200:
        print(f"RESPONSE: {Fore.GREEN}{response.status_code}{Fore.RESET}\nDATA: {Fore.CYAN}{json.dumps(data, indent=4, ensure_ascii=False)}{Fore.RESET}")