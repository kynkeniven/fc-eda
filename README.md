docker-compose up -d

docker-compose exec mysql bash //acessar o bash do mysql
mysql -u root -p wallet
pw: root

Create table clients (id varchar(255), name varchar(255), email varchar(255), created_at date)
Create table accounts (id varchar(255), client_id varchar(255), balance int, created_at date)
Create table transactions (id varchar(255), account_id_from varchar(255), account_id_to varchar(255), amount int, created_at date)

update accounts set balance = 1000 where id="9a9d550f-c475-4bad-a034-cfd3dbdb6813";


docker-compose exec goapp bash
go run cmd/walletcore/main.go 



http://localhost:9021/

em clusters criar os topicos "balances" e "transactions"

depois de executar o client.http criando as transações
abrir cada um dos topicos e nos selects colocar jump to offset e no segundo "0"
vai aparecer os itens na fila do kafka
    