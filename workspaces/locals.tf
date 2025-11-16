locals {
    #environment = lookup(var.environment, terraform.workspace) either way like below also we can write
    comman_name = "${var.project}-${terraform.workspace}"
    common_tags =  {
        Project = var.project
        Terraform = "true"  
    }
}