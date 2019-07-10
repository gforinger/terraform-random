
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "cmd3" {
  provisioner "local-exec" {
    command = "lsb_release -a"
  }
}

output "payload" {
  value = "${var.variable1}"
}

output "random" {
  value = "${random_id.random.hex}"
}
