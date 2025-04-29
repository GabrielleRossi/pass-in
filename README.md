## 📅 API de Cadastro de Eventos

Esta é uma API simples para gerenciamento de eventos e participantes, desenvolvida em Java.

### 🚀 Como executar o projeto

- Abra o projeto na sua IDE de preferência.

- Localize a classe `PassInApplication`.

- Execute a aplicação Java.
### Build do container
docker build -t pass-in-java .

### Executando container

docker run -p 8080:8080 pass-in-java

#### A API estará disponível em:

http://localhost:8080

## 📬 Endpoints

Você pode utilizar ferramentas como **Postman**, **Insomnia** ou **cURL** para testar os endpoints.

### ➡️ Cadastrar Evento

#### Cria um novo evento no sistema.

``` bash
curl --request POST \
  --url http://localhost:8080/events \
  --header 'Content-Type: application/json' \
  --header 'User-Agent: insomnia/8.6.1' \
  --data '{
    "title" : "Rocketseat NLW Unite - Trilha Java 2.0",
    "details": "Aprenda Java de forma gratuita",
    "maximumAttendees": 17
}'
```

### ➡️ Cadastrar Participante em Evento

#### Adiciona um novo participante a um evento específico.

``` bash
curl --request POST \
--url http://localhost:8080/events/7c6c0165-18af-4797-9743-d7153db0b376/attendees \
--header 'Content-Type: application/json' \
--header 'User-Agent: insomnia/8.6.1' \
--data '{
"name": "Gabi",
"email": "teste@gmail.com"
}'
```

### ➡️ Realizar Check-in de Participante

#### Marca a presença de um participante em um evento.

``` bash
curl --request POST \
--url http://localhost:8080/attendees/ead2d44e-49be-478d-b3af-d6c322a64fea/check-in \
--header 'User-Agent: insomnia/8.6.1'
```

### ➡️ Detalhes do evento

#### Busca informações sobre o evento

``` bash
curl --request GET \
--url http://localhost:8080/events/e4b7b89f-e847-4781-854a-5b42e683f594 \
--header 'User-Agent: insomnia/8.6.1'
```

### ➡️ Participantes do evento

#### Busca os participantes cadastrados no evento

``` bash
curl --request GET \
--url http://localhost:8080/events/attendees/7c6c0165-18af-4797-9743-d7153db0b376 \
--header 'User-Agent: insomnia/8.6.1'
```

### ➡️ Consulta crachá

#### Busca o crachá do participante do evento

``` bash
curl --request GET \
--url http://localhost:8080/attendees/ce3db802-fe24-44b9-9bc2-ace24841bsadabf4/badge \
--header 'User-Agent: insomnia/8.6.1'
```

## ⚙️ Tecnologias

Java

Spring Boot

API REST


