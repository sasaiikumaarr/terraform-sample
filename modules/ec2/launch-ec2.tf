resource "aws_instance" "sample-terraform-instance" {
    ami = "ami-0e9089763828757e1"
    instance_type = "t2.micro"
    subnet_id = "subnet-04678db983bfbcf4c"
    security_groups = ["sg-ea4a19c1"]
    key_name = "aws-test-key"
    iam_instance_profile = "ec2-role"
    tags = {
        Name = "terraform-instance"
    }
} 