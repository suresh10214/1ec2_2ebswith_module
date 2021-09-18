#Deploy Networking Resources

module "vpc" {
  source   = "./vpc"
  vpc_cidr = "10.12.0.0/16"
}

module "ec2" {
  source   = "./ec2/"
  my_ami   = "ami-0d1bf5b68307103c2"
  my_count = 1
  my_disk  = ["8", "50"]
  ebs_disk = ["1","2"]
  attach = ["/dev/sdf","/dev/sdg"]
}
