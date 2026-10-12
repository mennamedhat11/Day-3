resource "aws_instance" "EC2AWS1" {
  count = 3
  instance_type = var.instance_type[count.index]
  ami = var.ami
  subnet_id              = aws_subnet.public[count.index].id
  vpc_security_group_ids = [aws_security_group.SG.id]

  tags = {
   Name = "public"
  }
}


resource "aws_instance" "EC2AWS2" {
  count = 3
  instance_type = var.instance_type[count.index +3]
  ami = var.ami
  subnet_id              = aws_subnet.private[count.index].id
  vpc_security_group_ids = [aws_security_group.SG.id]

  tags = {
   Name = "private"
  }
}