variable "region" { type = "string" default = "us-east-1" }
variable "vpc" {
  type = "string"
  default = "vpc-e1b9b784"   // us-east-1
}
variable "subnet" {
  type = "string"
  default = "subnet-c5caafee"         // us-east-1
}
variable "cidrblocks" {
  type = "string"
  default = "172.31.0.0/16"
}

variable "bitbucketserver_ami" {
  type = "string"
  default = "ami-65a46e1f"
}
variable "jenkinsserver_ami" {
  type = "string"
  default = "ami-5a293a21"
}
variable "jenkinsslave_ami" {
  type = "string"
  default = "ami-4d35095b"
}
variable "bitbucket_home" {
  type = "string"
  default = "/home/ec2-user/atlassian/application-data/bitbucket"
}
variable "bitbucket_defaultInstallDir" {
  type = "string"
  default = "/home/ec2-user/atlassian/bitbucket/5.2"
}
variable "chefconfigDir" {
  type = "string"
  default = "../chefconfig"
}
variable "cookbooksDir" {
  type = "string"
  default = "../cookbooks"
}
variable "keypair" {
  type = "map"

  default = {
    key_name = "ec2_rsa"
    public_key = "../sshkeys/ec2_rsa.pub"
    private_key = "../sshkeys/ec2_rsa.pem"
  }
}
variable "jenkinspropsfile" {
  type = "string"
  default = "../cookbooks/jenkins/files/node/jenkins-conf.properties"
}
variable "jenkinsattribsfile" {
  type = "string"
  default = "../cookbooks/jenkins/attributes/default.rb"
}

variable "jenkinsservermap" {
  type = "map"

  default = {
    jenkins_elb = "please change"
    public_ip = "please change"
    private_ip = "please change"
    subnet = "please change"
    security_group = "please change"
  }
}
variable "bitbucketservermap" {
  type = "map"

  default = {
    bitbucket_elb = "please change"
    public_ip = "please change"
    private_ip = "please change"
  }
}

variable "jenkinsamimap" {
  type = "map"

  default = {
    us-east-1 = "ami-5a293a21"
    us-west-2 = "ami-0537f27d"
  }
}

variable "bitbucketamimap" {
  type = "map"

  default = {
    us-east-1 = "ami-9ba986e0"
    us-west-2 = "ami-1f8e4967"
  }
}
