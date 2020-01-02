provider "aws" {
    access_key = ""
    secret_key = ""
    region = "us-east"
}

variable "adhockey" {
     type = map
     default = {
             "image_id" = "ami-00068cd7555f543d5"
		}
}
variable "newvar" {

     type = list
     default = ["t2.micro"]
}

resource "aws_instance" "my" {
     ami = "${var.adhockey["image_id"]}"
     instance_type = "${var.newvar[0]}"
     key_name = "newec2key"
}
 
resource "aws_key_pair"  "newec2key" {
     key_name = "newec2key"
     public_key = "${file("newec2key.pub")}"

}

