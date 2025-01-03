#!/bin/bash

# Инициализация шардов
docker exec -i shard1 mongosh --port 27018 <<EOF
rs.initiate({_id : "shard1",members: [{ _id : 0, host : "shard1:27018" }]});
exit();
EOF