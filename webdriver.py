from selenium import webdriver
import time

# Configurazione del browser
options = webdriver.ChromeOptions()
options.add_argument("--headless")  # Esegui il browser in modalità headless (senza interfaccia grafica)
driver = webdriver.Chrome(options=options)

def navigate_to_website():
    driver.get("https://maisonauben.com")  # Sostituisci con l'URL del sito web target
    print('sito visitato')
    # Aggiungi eventuali azioni di navigazione qui...

if __name__ == "__main__":
    while True:
        navigate_to_website()
        time.sleep(1800)  # Attendere 30 minuti (1800 secondi) prima di navigare di nuovo
