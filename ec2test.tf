

resource "aws_instance" "devinstance" {
  ami               = "ami-04a2d6660f1296314"
  instance_type     = "t2.micro"
  availability_zone = "ap-southeast-1a"
  tags = {
    Name = "Development Box"
  }
}
