variable "admin_username" {
  description = "Login for administrator access"
  type = string
  default = "qerdo"
}
variable "admin_password" {
  description = "Password for administrator access"
  type = string
  default = "iht3%anZmXfasqXKWU&U4^4#Go$yGq*iwtHnsfJDtkgSQ@s3RPhnK2r$^MyJc6m@"
}
variable "location" {
  description = "Default location of all elements"
  type = string
  default = "northeurope"
}
variable "resource_group_name" {
  description = "Default group for everything made by Terraform"
  type = string
  default = "Terraform"
}
variable "tags" {
  description = "Default group for everything made by Terraform"
  type = map(string)
  default = {
    MANAGED = "by Terraform"
  }
}
variable "access_key" {
  description = "Access key for TF State"
  type = string
  default = "PZuxF4ufI1QN+W04KY6gioLJbwOroBRp8/Mn4xhZP4dmQTIddzGd+zKBcqZ/HcmDS2V08PaluklRhdlkeqJQ8Q=="
}
