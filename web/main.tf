provider "aws" { region = "eu-west-1" }

resource "aws_vpc" "my_vpc" {
    cidr_block = "10.0.1.0/24"

    tags { 
        Name = "my_vpctest"
            Group = "my_infratest"
    }
}
