variable "region" {
    type = string
    default = "ap-northeast-2"
}

variable "cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "keyname" {
    type = string
    default = "sjh"
}

variable "subnets" {
  type = list
  default = ["Public-A","Public-C","WAS-A","WAS-C","DB-A","DB-C"]
}

# variable "test" {
#     type = 
# }