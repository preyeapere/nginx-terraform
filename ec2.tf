# EC2 Instance in the Public Subnet
resource "aws_instance" "server_public" {
  ami                         = "ami-04cdc91e49cb06165"
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  user_data                   = file("nginx.sh")
  vpc_security_group_ids      = [aws_security_group.allow_web.id]
  key_name                    = "gold"
  tags = {
    Name = "nginx-server-Public-Instance2"
  }
}

# EC2 Instance in the Private Subnet
resource "aws_instance" "server_private" {
  ami                    = "ami-04cdc91e49cb06165"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.private_subnet.id
  vpc_security_group_ids = [aws_security_group.allow_web.id]
  key_name               = "gold"
  tags = {
    Name = "nginx-server-Private-Instance2"
  }
}