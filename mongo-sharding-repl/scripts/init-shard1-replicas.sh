#!/bin/bash

# Инициализация реплик для первого шарда
docker exec -i shard1 mongosh --port 27018 <<EOF
rs.initiate({_id: "shard1", members: [
{_id: 0, host: "shard1:27018"},
{_id: 1, host: "shard1-repl1:27028"},
{_id: 2, host: "shard1-repl2:27038"}
]}) 
EOF