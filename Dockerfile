# Budowanie
FROM alpine AS builder
# Deklaracja argumentu, który przyjmujemy z komendy docker build --build-arg
ARG VERSION
# Ustawienie katalogu roboczego
WORKDIR /app
# Skopiowanie kodu źródłowego skryptu JS do etapu budowania
COPY skrypt.js .

# Serwer Nginx
FROM nginx:alpine
# Ponowna deklaracja ARG, aby wartość była widoczna w tym etapie
ARG VERSION
# Przypisanie wartości ARG do zmiennej, którą odczyta skrypt
ENV APP_VERSION=${VERSION}
# Instalacja Node.js i curl, czyszczenie cache
RUN apk add --update curl nodejs && \
    rm -rf /var/cache/apk/*
# Kopiowanie gotowego skryptu z pierwszego etapu
COPY --from=builder /app/skrypt.js /app/skrypt.js
# Generowanie HTML przez JS tuż przed startem Nginxa
CMD ["/bin/sh", "-c", "node /app/skrypt.js && nginx -g 'daemon off;'"]
# Sprawdzanie co 10s, czy serwer odpowiada
HEALTHCHECK --interval=10s --timeout=3s \
    CMD curl -f http://localhost/ || exit 1
# Informacja o porcie, na którym pracuje kontener
EXPOSE 80