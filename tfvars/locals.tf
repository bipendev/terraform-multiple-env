locals {
    comman_name = "${var.project}-${var.environment}"
    common_tags =  {
        Project = var.project
        Terraform = "true"  
    }
}