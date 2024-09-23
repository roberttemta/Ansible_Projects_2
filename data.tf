#data for amazon linux AMI

data "aws_ami" "amazon-2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }
  owners = ["amazon"]
}

# ubuntu AMI
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-18.04*"]
  }
  owners = ["099720109477"] # Canonical account ID
}
/*
data "aws_ami" "amazon-2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }
  owners = ["amazon"]
}




# debian AMI
data "aws_ami" "debian" {
  most_recent = true

  filter {
    name   = "name"
    #values = ["debian-*-hvm-*"]
    values = ["ami-0248a5a860febde32"]
  }
  owners = ["136693071363"] # Debian account ID
  #owners = ["379101102735"] # Debian account ID
}
*/