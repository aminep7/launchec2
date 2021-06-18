variable "region" {
    default = "us-east-1"
    type = string
    }

variable "instance_type" {
    default = "c5.12xlarge"
    type = string
    }
variable "instance_count" {
    default = 4
    type = string
    }
variable "ami" {
    default = "ami-0aeeebd8d2ab47354"
    type = string
    }
variable "sg" {
    type = list(string)
    description = "(optional) describe your variable"
    default = [ "sg-0894ccfed96838ab5" ]
    }
variable "key_name" {
    default = "tax-qat-stresstest-keypair"
    type = string
    }
variable "subnet" {
    default = "subnet-07b08da91a50da253"
    type = string
    }