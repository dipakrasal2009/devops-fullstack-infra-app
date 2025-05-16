resource "aws_instance" "bastion" {
  count         = 2
  ami           = "ami-0cda377a1b884a1bc"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public[0].id
  key_name      = "mykey1"
  tags          = { Name = "Bastion-${count.index}" }
}

resource "aws_instance" "service" {
  count         = 3
  ami           = "ami-0cda377a1b884a1bc"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private[0].id
  key_name      = "mykey1"
  root_block_device {
    volume_size = 8
  }
  tags = { Name = "Service-${count.index}" }
}

