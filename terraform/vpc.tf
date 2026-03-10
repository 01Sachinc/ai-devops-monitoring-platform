resource "aws_vpc" "ai_devops_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  
  tags = {
    Name = "ai-devops-monitoring-vpc"
    Project = "AI-Powered-DevOps"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.ai_devops_vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "automation-public-subnet"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.ai_devops_vpc.id
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.ai_devops_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}
