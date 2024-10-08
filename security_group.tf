// Security Group
resource "aws_security_group" "public" {
    name = "public"
    description = "Allow traffic to pass from the public subnet to the internet"
    vpc_id = "${aws_vpc.default.id}"
    
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["${var.everywhere_cidr_block}"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["${var.everywhere_cidr_block}"]
    }
    // for ping
    ingress {
        from_port = -1
        to_port = -1
        protocol = "icmp"
        cidr_blocks = ["${var.everywhere_cidr_block}"]
    }
egress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["${var.everywhere_cidr_block}"]
    }
    egress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["${var.everywhere_cidr_block}"]
    }
    // for ping
    egress {
        from_port = -1
        to_port = -1
        protocol = "icmp"
        cidr_blocks = ["${var.everywhere_cidr_block}"]
    }
    
    tags = {
        Name = "public"
    }
}