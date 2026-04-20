# syntax=docker/dockerfile:1
# Aktywacja rozszerzonego frontendu BuildKit

FROM alpine AS builder
RUN apk add --no-cache git openssh-client

# Konfiguracja SSH dla bezpiecznego pobierania repozytorium
RUN mkdir -p -m 0700 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

WORKDIR /app

# Pobranie repozytorium przez protokół SSH 
RUN --mount=type=ssh git clone git@github.com:nvirek/pawcho6.git .

FROM nginx:alpine
ARG VERSION
ENV APP_VERSION=${VERSION}

# Powiązanie obrazu z repozytorium na GitHubie
LABEL org.opencontainers.image.source=https://github.com/nvirek/pawcho6
LABEL org.opencontainers.image.authors="Weronika <s101040@pollub.edu.pl>"
LABEL org.opencontainers.image.description="Aplikacja serwera Nginx budowana przez SSH dla zadania Lab 6"

RUN apk add --update curl nodejs && rm -rf /var/cache/apk/*

# Kopiowanie pliku skrypt.js 
COPY --from=builder /app/skrypt.js /app/skrypt.js

CMD ["/bin/sh", "-c", "node /app/skrypt.js && nginx -g 'daemon off;'"]

# Sprawdzanie stanu aplikacji
HEALTHCHECK --interval=10s --timeout=3s \
    CMD curl -f http://localhost/ || exit 1

# Informacja o porcie
EXPOSE 80