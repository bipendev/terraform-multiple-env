

variable "environment" {
    type = string
}

variable "project" {
    default = "roboshop"
}

variable "ami_id" {
    type    = string
    default = "ami-09c813fb71547fc4f"
    
}

variable "instance_type" {
    type    = string
    default = "t3.micro" 
}

# variable "ec2-tags" {
#     type    = map
#     default = {
#         Name    = "terraform-demo"
#         Terraform = "true"
#         Project = "roboshop"
#         Environment = "dev"   
#     }
# }

# variable "sg_name" {
#     type    = string
#     default = "allow-all"
#     description = "Security group name attached to theec2 instance"

# }


variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}


variable "egress_from_port" {
    default = 0
}



variable "egress_to_port" {
    default = 0
}

variable "protocal" {
    type = string
    default = "-1"
}