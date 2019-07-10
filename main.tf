
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "cmd" {
  provisioner "local-exec" {
    command = "env"
  }
}

output "payload" {
  value = "${payload1}"
}

output "random" {
  value = "${random_id.random.hex}"
}
