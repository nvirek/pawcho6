# Laboratorium 6
## Logowanie do konta GitHub
<img width="945" height="468" alt="image" src="https://github.com/user-attachments/assets/235b0e86-cb6f-4118-af7a-226b757a3139" />

### Wejście do folderu projektu i globalne ustawienie danych autora
<img width="636" height="138" alt="image" src="https://github.com/user-attachments/assets/b2a7bced-8b43-4624-89a2-65ade97948c9" />
<img width="683" height="134" alt="image" src="https://github.com/user-attachments/assets/9bd82c02-7899-4714-a383-10f228d28252" />

### Uruchomienie agenta SSH i dodanie klucza prywatnego
<img width="720" height="135" alt="image" src="https://github.com/user-attachments/assets/b4bdb26a-af50-4a0a-bae9-e832ce24e49b" />

### Przygotowanie lokalnego repozytorium i zapisanie plików zawierających rozwiązanie zadania 5
<img width="775" height="406" alt="image" src="https://github.com/user-attachments/assets/9aef1dff-f925-4dec-8dd8-11caeea5bba6" />

### Utworzenie publicznego repozytorium na GitHub i przesłanie do niego plików
<img width="781" height="414" alt="image" src="https://github.com/user-attachments/assets/05206e3d-ca24-460c-9d47-03604cef5b07" />

### Przesłanie zaktualizowanej wersji pliku Dockerfile do repozytorium GitHub
<img width="945" height="455" alt="image" src="https://github.com/user-attachments/assets/1d031062-97b2-49c7-b828-9f25e35491ea" />

### Budowanie obrazu z wymuszonym brakiem pamięci podręcznej, wykorzystaniem kluczy SSH oraz nadaniem tagu v1
```
docker build --no-cache --ssh default -t ghcr.io/nvirek/lab6:v1 .
```
<img width="795" height="635" alt="image" src="https://github.com/user-attachments/assets/f69faa0b-6a53-40ed-a51a-d094d7c7ce6e" />

### Uwierzytelnienie w rejestrze GitHub przy użyciu osobistego tokenu dostępu
<img width="945" height="61" alt="image" src="https://github.com/user-attachments/assets/0c892ce6-2e89-4b02-914a-e7b38339f278" />

### Przesłanie obrazu oznaczonego tagiem v1 do GitHub
<img width="763" height="292" alt="image" src="https://github.com/user-attachments/assets/536c1c9b-ab15-49a5-a193-81b21ccc6a8c" />

### Weryfikacja pomyślnej publikacji obrazu w rejestrze GitHub z widocznym tagiem v1 oraz statusem Public
<img width="399" height="116" alt="image" src="https://github.com/user-attachments/assets/74896c3c-4ab4-4d98-870f-869d8991913d" />

### Łączenie opublikowanego obrazu lab6 z repozytorium źródłowym pawcho6
<img width="1919" height="1015" alt="image" src="https://github.com/user-attachments/assets/71021b4c-29a2-4e50-b449-e4e432cf85e3" />







