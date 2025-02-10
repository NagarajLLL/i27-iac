variable "vpc_name" {
  description = "Name of the vpc"
  type = string
}
  
variable "subnets" {
  description = "The list of subnets to be created"
  type = list(object({
    name = string
    ip_cidr_range = string
    subnet_region = string
  }))
}

# Variable of compute Instances
variable "instances" {
  description = "Enter the details of vm"
  type = map(object({
    instance_type = string
    zone = string
    subnet = string 
    disk_size = number
  }))
}
