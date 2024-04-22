provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "linux-1" {
    ami = "ami-080e1f13689e07408"
    key_name = "jenkins-server"
    instance_type = "t2.micro"  
    tags = {
      Name = "ubuntu_linux"
      Env  = "production"
      os   = "ubuntu_linux"
    }
}
