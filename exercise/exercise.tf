resource "local_file" "devops" {
      filename = "/home/ubuntu/devops_training-/exercise/test-devops.java"
      content = "this is java files"
}

resource "local_file" "devops_files"{
     filename = var.filename
     content = var.content 
}

output "aws-output"{
  value = var.aws_ec2_object.instance
}
