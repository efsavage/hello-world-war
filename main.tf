provider "aws" {
        region = "ap-south-1"
}

#Creating vpc, CIDR with tags
resource "aws_vpc" "web" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "web"
  }
}

#Creating public subnets to vpc
resource "aws_subnet" "web-public1" {
  vpc_id                        = aws_vpc.web.id
  cidr_block                    = "10.0.0.0/25"
  map_public_ip_on_launch       = "true"
  availability_zone             = "ap-south-1a"

  tags = {
    Name = "web-public1"
  }
}

#Creating private subnets to vpc
resource "aws_subnet" "web-private1" {
  vpc_id                        = aws_vpc.web.id
  cidr_block                    = "10.0.0.128/26"
  map_public_ip_on_launch       = "false"
  availability_zone             = "ap-south-1b"

  tags = {
    Name = "web-private1"
  }
}

#creating IGW to VPC
resource "aws_internet_gateway" "web-gw" {
  vpc_id = aws_vpc.web.id

  tags = {
    Name = "web"
  }
}

#creating Eip
resource "aws_eip" "myeip" {
  vpc      = true
}

#creating NAT for Private subnet
resource "aws_nat_gateway" "MyNAT" {
  allocation_id = aws_eip.myeip.id
  subnet_id     = aws_subnet.web-public1.id

  tags = {
    Name = "MyNAT"
  }
}
#creating routing table
resource "aws_route_table" "web-public1" {
  vpc_id = aws_vpc.web.id
 route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.web-gw.id
  }

 tags = {
    Name = "web-public1"
  }
}

#creating routing table
resource "aws_route_table" "web-private1" {
  vpc_id = aws_vpc.web.id
 route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.MyNAT.id
  }

 tags = {
    Name = "web-private1"
  }
}


#create route associations with public
resource "aws_route_table_association" "web-public1" {
  subnet_id      = aws_subnet.web-public1.id
  route_table_id = aws_route_table.web-public1.id
}

#create route associations with private
resource "aws_route_table_association" "web-private1" {
  subnet_id      = aws_subnet.web-private1.id
  route_table_id = aws_route_table.web-private1.id
}

#creating EC2
resource "aws_instance" "server1" {
  ami                           = "ami-0be0a52ed3f231c12"
  instance_type                 = "t2.micro"
  subnet_id                     = aws_subnet.web-public1.id
  associate_public_ip_address   = true
  key_name                      = "demokey"

  tags = {
    Name = "server1"
  }
}
