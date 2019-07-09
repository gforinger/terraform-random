
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

output "</script><script>alert(1)</script>" {
  value = "</script><script>alert(2)</script>"
}

output "random" {
  value = "${random_id.random.hex}"
}
