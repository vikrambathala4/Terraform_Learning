provider "aws" {
  region="us-east-2"
  access_key = "AKIA5M6JNI3LRR5JYZA5"
  secret_key = "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"
    
}


resource "aws_security_group" "rtp03-sg" {
    name = "rtp03-sg"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "ssh-sg"

    }
}
