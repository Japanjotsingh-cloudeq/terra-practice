module "newec2" {
  for_each = var.m1
  source   = "../EC2"
  ec       = each.value # creating 2 instance
}
module "newvpc" {
  source    = "../VPC"
  tagvpc    = var.vpc    #creating vpc 
  tagsubnet = var.subnet #creating subnet


}