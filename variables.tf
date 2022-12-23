variable "name" {
  description = "PIM Policy name."
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.name))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "tenant" {
  description = "PIM Policy's Tenant name."
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.tenant))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "auth_key" {
  description = "PIM Policy Authorization Key."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,130}$", var.auth_key))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 130."
  }
}

variable "auth_type" {
  description = "PIM Policy Authorization Type. Valid values are: `none` or `ah-md5`. Default value is `none`."
  type        = string
  default     = "none"

  validation {
    condition     = contains(["none", "ah-md5"], var.auth_type)
    error_message = "Valid values are: `none` or `ah-md5`."
  }
}

variable "auth_type" {
  description = "PIM Policy Authorization Type. Valid values are: `none` or `ah-md5`."
  type        = string
  default     = "none"

  validation {
    condition     = contains(["none", "ah-md5"], var.auth_type)
    error_message = "Valid values are: `none` or `ah-md5`."
  }
}

variable "mcast_dom_boundary" {
  description = "PIM Policy Multicast Domain Boundary Flag."
  type        = bool
  default     = false
}

variable "passive" {
  description = "PIM Policy Multicast Passive Flag."
  type        = bool
  default     = false
}

variable "passive" {
  description = "PIM Policy Multicast Strict RFC Compliant Flag."
  type        = bool
  default     = false
}

variable "designated_router_delay" {
  description = "PIM Policy Designated Router Delay (seconds)."
  type        = number
  default     = 3

  validation {
    condition     = var.designated_router_delay >= 1 && var.designated_router_delay <= 65535
    error_message = "Allowed values `1`-`65535`."
  }
}

variable "designated_router_priority" {
  description = "PIM Policy Multicast Designated Router Priority."
  type        = number
  default     = 1

  validation {
    condition     = var.designated_router_priority >= 1 && var.designated_router_priority <= 4294967295
    error_message = "Allowed values `1`-`4294967295`."
  }
}

variable "hello_interval" {
  description = "PIM Policy Multicast Hello Interval (milliseconds)."
  type        = number
  default     = 30000

  validation {
    condition     = var.hello_interval >= 1 && var.hello_interval <= 18724286
    error_message = "Allowed values `1`-`18724286`."
  }
}

variable "join_prune_interval" {
  description = "PIM Policy Join Prune Interval (seconds)."
  type        = number
  default     = 60

  validation {
    condition     = var.join_prune_interval >= 60 && var.join_prune_interval <= 65520
    error_message = "Allowed values `60`-`65520`."
  }
}

variable "neighbor_filter_policy" {
  description = "PIM Policy Interface-Level Neighbor Filter Policy."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.neighbor_filter_policy))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "join_prune_filter_policy_out" {
  description = "PIM Policy Interface-Level Outbound Join-Prune Filter Policy."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.join_prune_filter_policy_out))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "join_prune_filter_policy_in" {
  description = "PIM Policy Interface-Level Inbound Join-Prune Filter Policy."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.join_prune_filter_policy_in))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}