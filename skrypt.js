const fs = require('fs');
const os = require('os');

//Odczytanie wersji ze zmiennej
const version = process.env.APP_VERSION || "Nieznana";

//Pobranie nazwy hosta
const hostname = os.hostname();

//Pobranie adresu IP 
const ip = os.networkInterfaces().eth0[0].address;

//Przygotowanie strony HTML
const html = `<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Sprawozdanie Lab 5</title></head>
<body>
    <h1>Informacje o srodowisku uruchomieniowym</h1>
    <p><strong>Wersja aplikacji:</strong> ${version}</p>
    <p><strong>Nazwa serwera (hostname):</strong> ${hostname}</p>
    <p><strong>Adres IP serwera:</strong> ${ip}</p>
</body>
</html>`;

//Zapis pliku dla Nginxa
fs.writeFileSync('/usr/share/nginx/html/index.html', html);