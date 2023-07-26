module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"

  cluster_name = "myapp-eks-cluster"
  cluster_version = "1.17"
  subnets = module.vpc.private_subnets
  tags = {
    enviroment = "development"
    application = "myapp"
  }
  worker_groups = [
    {
      instance_type = "t2.micro"
      name = "worker-group-1"
      asg_desired_capacity = 3
    },
    {
      instance_type = "t2.micro"
      name = "worker-group-2"
      asg_desired_capacity = 2
    }
  ]
}