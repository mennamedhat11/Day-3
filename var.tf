variable env {
  type        = string
}

variable vpc_cidr {
  type        = string
}

variable ami {
  type        = string
}
variable subnet_count_cidr {
  type        = list(string)
}

variable instance_type {
  type        = list(string)
}

variable azs {
  type        = list(string)
}


variable from_port   {
  type        = number
}

variable to_port     {
  type        = number
}


variable ip_protocol    {
  type        = string
}
