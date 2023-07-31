# EKS-terraform

* This a simple project as a hands-on creating EKS cluster using Terraform
* This project contains two files for configuration:
*  * 1- VPC.tf:
     * This file will create a VPC using VPC module and provision some resources in this VPC like nat gateway, public subnet, and private subnet
*  * 2- eks-cluster.tf:
     * This file will use eks module to provision all eks cluster resources  like cluster name and instances type

* Note: there is also a file (terraform.tfvars) for assigning variables which will be needed in the two previous files 
