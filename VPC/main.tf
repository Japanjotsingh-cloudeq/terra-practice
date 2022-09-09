resource "aws_vpc" "main_1" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = var.tagvpc
  }
}
resource "aws_subnet" "main_2" {
  vpc_id     = aws_vpc.main_1.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = var.tagsubnet
  }
}
# resource "aws_network_interface" "main_3" {
#   subnet_id   = aws_subnet.main_2.id
#   private_ips = ["10.0.0.140"]

#   tags = {
#     Name = " japanjot-primary_network_interface"
#   }
# }
# resource "aws_instance" "connected" {
#   ami           = "ami-005e54dee72cc1d00" # us-west-2
#   instance_type = "t2.micro"

#   network_interface {
#     network_interface_id = aws_network_interface.main_3.id
#     device_index = 0
#   }
#   tags = {
#     "name" = " japanjot-vpc-ec2"
#   }
# }