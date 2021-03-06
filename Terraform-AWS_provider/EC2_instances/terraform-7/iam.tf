resource "aws_iam_role" "default-iam-role" {
  name = "default-iam-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_instance_profile" "default-iam-role-instanceprofile" {
  name = "default-iam-role-profile"
  role = "${aws_iam_role.default-iam-role.name}"
}
