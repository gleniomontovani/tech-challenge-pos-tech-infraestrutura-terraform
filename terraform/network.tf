resource "aws_db_subnet_group" "subnet-app" {
  name       = "subnet-app-${var.projectName}"
  subnet_ids = ["${var.subnet01}", "${var.subnet02}", "${var.subnet03}"]
}