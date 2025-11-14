resource "aws_instance" "terraform" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = merge(
    local.common_tags,
    {
      Name = "${local.comman_name}-tfvars-multi-env"
    }
  )
}

resource "aws_security_group" "allow_all" {
  name   = "${local.comman_name}-tfvars-multi-env"
  
  egress {
    from_port       = var.egress_from_port # from all
    to_port         = var.egress_to_port
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }


  ingress {
    from_port       = var.ingress_from_port # from all
    to_port         = var.ingress_to_port
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags = merge(
    local.common_tags,
    {
      Name = "${local.comman_name}-tfvars-multi-env"
    }
  )
}
