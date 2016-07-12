# Teste Uplexis :: Sintegra

Api e sistema web para consultas


- `make:migration:schema`
- `make:migration:pivot`
- `make:seed`

*With one or two more to come.*

## Usage

### Passo 1: Clonar o projeto

```
git clone https://github.com/daavelar/uplexis
```

### Step 2: Rodar o composer


```
composer install
```


### Step 3: Importar o banco de dados

#### Opção 1 - Via terminal

```
mysql -uroot -p < database/uplexis.sql
```

#### Opção 1 - Rodar as migrations do Laravel

```
php artisan migrate --seed
```

Qualquer uma das opções irá criar o banco de dados com o seguinte usuário:

```
admin
admin
```

Este usuário será usado para login via web e via Api...
