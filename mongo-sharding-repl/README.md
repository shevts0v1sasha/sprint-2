# pymongo-api

## Как запустить
docker compuse up -d
sh ./scripts/init-cfg-srv.sh
sh ./scripts/init-shard1-replicas.sh
sh ./scripts/init-shard2-replicas.sh
sh ./scripts/init-router.sh