resource "aws_subnet" "public" {
count = 3
vpc_id     = aws_vpc.vpc_dev.id
cidr_block = var.subnet_count_cidr[count.index]
availability_zone = var.azs[count.index]
 map_public_ip_on_launch = true
}

resource "aws_subnet" "private" {
count = 3
vpc_id     = aws_vpc.vpc_dev.id
cidr_block = var.subnet_count_cidr[count.index +3]
availability_zone = var.azs[count.index]
 map_public_ip_on_launch = false
}

