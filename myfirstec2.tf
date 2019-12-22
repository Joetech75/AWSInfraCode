provider "aws"{ 
  region = "ap-southeast-1"
  
}

#create a ec2 instance 

resource "aws_instance" "myfirstec2" {
  count = 6
  ami           = "ami-01112b32e723178b2"
  instance_type = "t2.micro"
  availability_zone = "ap-southeast-1a"
  tags = {"Name": "myfirstec2Instance","env": "dev"}
}

