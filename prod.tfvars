env = "prod"
vpc_cidr="15.0.0.0/16"
instance_type = [ "t2.micro","t2.micro","t2.micro" ,"t2.micro" ,"t2.micro" ,"t2.micro" ]
subnet_count_cidr = ["15.0.1.0/24" , "15.0.3.0/24","15.0.5.0/24" ,  "15.0.2.0/24" , "15.0.4.0/24" , "15.0.6.0/24"]
azs= ["us-east-1a" , "us-east-1b", "us-east-1c"]
ami = "ami-0b6d9d3d33ba97d99"
from_port         = 443
ip_protocol       = "tcp"
to_port           = 443
y