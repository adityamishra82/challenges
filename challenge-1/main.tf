
module "three-tier-vpc" {
    source      = "./module/vpc"

    ENVIRONMENT = var.ENVIRONMENT
    AWS_REGION  = var.AWS_REGION
}

module "three-tier-webserver" {
    source      = "./module/webserver"
    ENVIRONMENT = var.ENVIRONMENT
    AWS_REGION  = var.AWS_REGION
    vpc_private_subnet1 = module.three-tier-vpc.private_subnet1_id
    vpc_private_subnet2 = module.three-tier-vpc.private_subnet2_id
    vpc_id = module.three-tier-vpc.my_vpc_id
    vpc_public_subnet1 = module.three-tier-vpc.public_subnet1_id
    vpc_public_subnet2 = module.three-tier-vpc.public_subnet2_id

}


output "load_balancer_output" {
  description = "Load Balancer"
  value       = module.three-tier-webserver.load_balancer_output
}