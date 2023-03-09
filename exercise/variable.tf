variable "filename" {
         default = "/home/ubuntu/devops_training-/exercise/test-devops.java"

}

variable "content"{
   default = " this is auto generate code"
}


variable "aws_ec2_object" {
  type = object ({
      name = string 
      instance = number 
      keys = list(string) 
      ami = string 
 })
  default = {
    name = "test-ec2-devops"
    instance = 4
    keys = ["key1.pem","key2.pem"]
    ami = "ubuntuad23434"
 }   
}
