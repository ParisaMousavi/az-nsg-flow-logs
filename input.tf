
variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "additional_tags" {
  default = {}
  type    = map(string)
}

variable "network_watcher_name" {
  type = string
}

variable "network_security_group_id" {
  type = string
}

variable "storage_account_id" {
  type = string
}