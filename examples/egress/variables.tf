variable project {}

variable network {
  default = "default"
}

variable protocol {
  default = "tcp"
}

variable ports {
  type    = "list"
  default = []
}

variable priority {
  default = "1000"
}

variable target_service_accounts {
  type    = "list"
  default = []
}

variable target_tags {
  type    = "list"
  default = []
}

variable destination_ranges {
  type    = "list"
  default = ["0.0.0.0/0"]
}
