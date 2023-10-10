*ACESSANDO DB MS GO*

> docker-compose exec mysql bash
> mysql -u root -p wallet
> pw: root

*ACESSANDO DB MS JAVA*

> docker-compose exec mysql2 bash 
> mysql -u root -p balances
> pw: root


docker-compose exec goapp bash






http://localhost:9021/

em clusters criar os topicos "balances" e "transactions"

depois de executar o client.http criando as transações
abrir cada um dos topicos e nos selects colocar jump to offset e no segundo "0"
vai aparecer os itens na fila do kafka
    