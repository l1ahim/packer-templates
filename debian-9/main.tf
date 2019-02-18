resource "null_resource" "packer" {
  triggers {
    key = "${uuid()}"
  }

  provisioner "local-exec" {
    command = "packer build -only=virtualbox-iso template.json"
  }
}
