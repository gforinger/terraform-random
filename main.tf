
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

output "payload" {
  value = "</script><script>alert(2)</script>"
}

output "random" {
  value = "${random_id.random.hex}"
}
