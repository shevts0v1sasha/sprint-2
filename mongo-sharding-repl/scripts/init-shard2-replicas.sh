#!/bin/bash

# Инициализация реплик для первого шарда
docker exec -i shard2 mongosh --port 27019 <<EOF
rs.initiate({_id: "shard2", members: [
{_id: 0, host: "shard2:27019"},
{_id: 1, host: "shard2-repl1:27029"},
{_id: 2, host: "shard2-repl2:27039"}
]}) 
EOF