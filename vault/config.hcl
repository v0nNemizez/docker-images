storage "file" {
  path = "/opt/vault/data"
}

listener "tcp" {
  address     = "192.168.10.170:8200"
  tls_disable = 1
}

disable_mlock = true
ui = true


api_addr = "http://127.0.0.1:8200"
cluster_addr = "https://127.0.0.1:8201"
