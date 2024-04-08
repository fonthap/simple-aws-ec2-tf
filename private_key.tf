resource "tls_private_key" "tf_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "my_key_pair" {
  key_name   = var.private_key_name       
  public_key = tls_private_key.tf_key.public_key_openssh

  provisioner "local-exec" { 
    command = "echo '${tls_private_key.tf_key.private_key_pem}' > ./myKeyPair.pem"
  }
}