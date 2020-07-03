resource "aws_transfer_server" "sftp" {
  identity_provider_type = "SERVICE_MANAGED"
  invocation_role = "arn:aws:iam::481431115628:role/sftp-role"
  logging_role = "arn:aws:iam::481431115628:role/sftp-role"
  #url = ""

  tags = {
    Name     = "${var.aws-transfer-server-name}"
  }
}



resource "aws_transfer_user" "sftp-user" {
  server_id      = "${aws_transfer_server.sftp.id}"
  user_name      = "${var.sftp-user-name}"
  home_directory = "${var.sftp-s3-bucket-name}"
  role           = "arn:aws:iam::481431115628:role/sftp-role"

  tags = {
    NAME = "${var.sftp-user-name}"
  }
}

resource "aws_transfer_ssh_key" "sftp-ssh" {
  server_id = "${aws_transfer_server.sftp.id}"
  user_name = "${aws_transfer_user.sftp-user.user_name}"
  body      = "${var.ssh-public-key-file-location}"
}