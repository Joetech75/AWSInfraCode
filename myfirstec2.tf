
#create a ec2 instance 
resource "aws_instance" "devec2" {
  ami               = var.server_amis   
  instance_type     = var.machine_type  
  availability_zone = var.az  
  subnet_id = "aws_subnet.public_subnet" 
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags              = { "Name" : "myfirstec2Instance", "env" : "dev" }
}
 