# Teste Uplexis :: Sintegra

Api e sistema web para consultas

## Instalação

### Passo 1: Selecionar pasta desejada e clonar o projeto

```
git clone https://github.com/daavelar/uplexis
```

### Step 2: Rodar o composer

```
composer install
```

### Passo 3: Importar o banco de dados

#### Opção 1 - Via terminal _(substituir root pelo usuário do banco)_

```
mysql -uroot -p < database/uplexis.sql
```

#### Opção 2 - Rodar as migrations do Laravel

```
php artisan migrate --seed
```

Qualquer uma das opções irá criar o banco de dados com o seguinte usuário:

```
Usuário: admin
Senha: admin
```

Este usuário será utilizado para login via web e via Api...

### Passo 4:  Subir o servidor da aplicação

```
php artisan serve 
```

## Utilização da API

Após subir o servidor será possível fazer utilizar a api, os exemplos utilizarão 
o host http://localhost:8000, padrão do Laravel

#### /GET http://localhost:8000/api/{cnpj}/

###### Método: **GET**

O tipo de autenticação da api é o Basic, portanto uma requisição com cURL ficaria assim: 

```
curl -u "admin:admin" http://localhost:8000/api/31.804.115-0002-43
```

Exemplo de requisição com PHP