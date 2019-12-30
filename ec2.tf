provider "aws" {
    access_key = ""
    secret_key = " "
    region = "us-east-1"
}
resource "aws_instance" "mylinux" {
     ami = "ami-00068cd7555f543d5"
     instance_type = "t2.micro"
     key_name = "terraform_ec2_key"
}
 
resource "aws_key_pair"  "terraform_ec2_key" {
     key_name = "terraform_ec2_key"
     public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAcDP3HpKPc2RQJX5FrZPozUbWEqXs7u2B1Lht2LRzior4KT4nnOgtAjb1mt8trLbsj4G3lIaO4tR5gbT1t9HFoQksOcYqdDjeKibm81ePlCg4LphlxYrp8zOwAjXVTR9L5Oq2ltnfDtTEo1eIlw5sDTqJWBVi6lxQrZNyB3AGz5j94JlMYyG6v0BbIxblrRDrQ23RdKpRpV2lr0SxltqE2ywf6jkGMjb+h1OBvbqgQevnfdhY0NQSgaA43TPh1ayz1sgBbGThMBVG7ZZYA9hGkpXZWw65nYjG/E1saNxuRhOcn9TdeMW9dC4PJAhiMhqNEx2LDBVWw5jWhmkkZ2Rwn root@ip-172-31-89-190.ec2.internal"
}

