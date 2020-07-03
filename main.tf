provider "aws" {
    version = "~> 2.0"
    region  = "us-east-1"
    access_key = "AKIAXAF4H25WMHNCOXLK"
    secret_key = "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"
}

/*
module "sftp" {
    source = "/home/sasi/TerraForm/terraform-scripts/modules/sftp"
    aws-transfer-server-name = "test-sftp"
    iam-role-name-for-sftp = "test-sftp-role"
    s3-access-policy-name = "s3-specific-bucket-access"
    sftp-user-name = "sasi-sftp"
    sftp-s3-bucket-name = "/sasi-learn-test-bucket"
    ssh-public-key-file-location = "${file("/home/sasi/TerraForm/terraform-scripts/modules/sftp/rsa.pub")}"
}
*/

module "launch-ec2" {
    source = "./modules/ec2"
    
}