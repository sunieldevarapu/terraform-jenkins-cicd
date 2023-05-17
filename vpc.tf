resource "aws_vpc" "startup_vpc" {
    cidr_block = "10.2.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
}