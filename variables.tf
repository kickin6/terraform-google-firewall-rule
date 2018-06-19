/* Required */
variable network {
  description = "The network this rule applies to."
  type        = "string"
  default     = "default"
}

/* One Required */
variable network_project {
  description = "Name of the project for the network. Useful for shared VPC. Default is var.project."
  type        = "string"
  default     = ""
}

variable project {
  description = "The project to deploy to, if not set the default provider project is used."
  type        = "string"
  default     = ""
}

/* allow block */
variable ports {
  description = "List of ports and/or ranges to allow."
  type        = "list"
  default     = []
}

variable protocol {
  description = "The name of the protocol to allow."
  type        = "string"
}

/* Optional */
variable name {
  description = "Firewall rule name."
  type        = "string"
  default     = ""
}

variable priority {
  description = "Rule priority. Lower numbers are given more precedence."
  type        = "string"
  default     = "1000"
}

variable source_ranges {
  description = "Ingress CIDR ranges. List of strings."
  type        = "list"
  default     = ["0.0.0.0/0"]
}

variable source_tags {
  description = "Source network tags. List of strings."
  type        = "list"
  default     = []
}

variable target_tags {
  description = "Destination network tags. List of strings."
  type        = "list"
  default     = []
}
