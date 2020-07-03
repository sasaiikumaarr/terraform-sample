resource "aws_instance" "sample-terraform-instance" {
    ami = "ami-02b5d851009884e20"
    instance_type = "t2.micro"
    subnet_id = "subnet-04678db983bfbcf4c"
    tags = {
        Name = "terraform-instance"
    }
} 