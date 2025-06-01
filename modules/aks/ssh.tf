# Generates a new private key and encodes it in PEM format.
resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "local_file" "private_key_file" {
  content  = tls_private_key.ssh_key.private_key_pem
  filename = "id_rsa_terraform"
  # Set file permissions for the private key
  file_permission = "0600" # Read/write for owner only
}