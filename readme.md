# Teste Uplexis :: Sintegra

Api e sistema web para consultas

## Instalação

### Clonar o projeto

```
git clone https://github.com/daavelar/uplexis
```

### Entrar na pasta e rodar o composer

```
cd uplexis && composer install
```

### Renomear o arquivo `.env.example` para `.env` e alterar as configurações de banco no .env
 
```
mv .env.example .env
``` 
 
### Criar o banco de dados 
 
```
mysql -uroot -p -e "create database uplexis"
```
 
### Importar o banco de dados

#### Opção 1 - Rodar as migrations do Laravel

```
php artisan migrate --seed
```

#### Opção 2 - Importar via linha de comando

```
mysql -uroot -p uplexis < database/uplexis.sql
```

Qualquer uma das opções irá criar o banco de dados com as seguintes credenciais:

```
Usuário: admin
Senha: admin
```

Este usuário servirá para logar via Web e via Api (Basic Auth)

###  Subir o servidor da aplicação

```
php artisan serve 
```


## Utilização da API

Após subir o servidor será possível fazer utilizar a api e o sistema pela Url **http://localhost:8000**, 
padrão do Laravel

##### Listar um cliente pelo seu Cnpj

#### /GET http://localhost:8000/api/{cnpj}/

O tipo de autenticação da api é o Basic, portanto uma requisição com cURL ficaria assim:
 
```
curl -u "admin:admin" http://localhost:8000/api/31.804.115-0002-43
```

Em caso de erro serão retornados os seguintes códigos Http, com uma mensagem de erro:
 
``
401 Unauthorized
``

``
500 Internal Server Error
``
