resource "aws_security_group" "monitoring_sg" {
  name        = "monitoring-sg"
  description = "Allow monitoring traffic"
  vpc_id      = aws_vpc.ai_devops_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 9090
    to_port     = 9090
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "monitoring_node" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 (region specific)
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.monitoring_sg.id]

  tags = {
    Name = "AI-Monitoring-Control-Plane"
  }
}
