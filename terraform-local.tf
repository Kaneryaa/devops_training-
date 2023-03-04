resource "local_file" "devops"{
     filename = "/home/ubuntu/terraform/devops.py"
     content = "i want to become devops engineers"
}

resource "random_string" "string"{
    length = 5
    special = true
    override_special= "D@!"
}

output "string" {
  value = random_string.string[*].result
}
