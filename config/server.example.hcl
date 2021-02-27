listener "tcp" {
  address     = "0.0.0.0:80"
  tls_disable = 1
}

cluster_addr = "http://127.0.0.1:8200"

storage "raft" {
  path = "/vault/data"
  node_id = "raft_node_1"
}

disable_mlock = true
