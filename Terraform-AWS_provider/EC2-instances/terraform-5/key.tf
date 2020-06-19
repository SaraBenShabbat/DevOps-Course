resource "aws_key_pair" "mykeypair" {
  key_name = "mykeypair"
  public_key = "${file("${path.module}/mykeypair.pub")}"
  lifecycle {
    ignore_changes = ["public_key"]
  }
}
