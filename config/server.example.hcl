listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}

// Change the API address to a public endpoint
api_addr = "https://vault.example.com"

storage "file" {
  path = "/vault/file"
}

ui = true
