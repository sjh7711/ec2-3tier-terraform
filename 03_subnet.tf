resource "aws_subnet" "subnet" {
  count = 6
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.${count.index}.0/24"
  availability_zone = "ap-northeast-2${count.index % 2 == 0 ? "a" : "c"}"

  tags = {
    Name = var.subnets[count.index]
  }
}

# resource "aws_subnet" "Public-a" {
#   vpc_id            = aws_vpc.vpc.id
#   cidr_block        = "10.0.0.0/24"
#   availability_zone = "ap-northeast-2a"

#   tags = {
#     Name = "Public-a"
#   }
# }

# resource "aws_subnet" "Public-c" {
#   vpc_id            = aws_vpc.vpc.id
#   cidr_block        = "10.0.1.0/24"
#   availability_zone = "ap-northeast-2c"

#   tags = {
#     Name = "Public-c"
#   }
# }
# # 반복문으로 만들 시 name 뒤에 [0], [1]... 이런식으로 붙게 됨.

# resource "aws_subnet" "WAS-a" {
#   vpc_id            = aws_vpc.vpc.id
#   cidr_block        = "10.0.2.0/24"
#   availability_zone = "ap-northeast-2a"

#   tags = {
#     Name = "WAS-a"
#   }
# }

# resource "aws_subnet" "WAS-c" {
#   vpc_id            = aws_vpc.vpc.id
#   cidr_block        = "10.0.3.0/24"
#   availability_zone = "ap-northeast-2c"

#   tags = {
#     Name = "WAS-c"
#   }
# }

# resource "aws_subnet" "DB" {
#   count = 2
#   vpc_id            = aws_vpc.vpc.id
#   cidr_block        = "10.0.${count.index + 4}.0/24"
#   availability_zone = "ap-northeast-2${count.index == 0 ? "a" : "c"}"

#   tags = {
#     Name = "DB-a"
#   }
# }

# resource "aws_subnet" "DB-c" {
#   vpc_id            = aws_vpc.vpc.id
#   cidr_block        = "10.0.5.0/24"
#   availability_zone = "ap-northeast-2c"

#   tags = {
#     Name = "DB-c"
#   }
# }
