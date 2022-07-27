variable "my_list" {
  type      = list(string)
  default   = ["1", "2", "3"]
}

variable "my_set" {
  type      = set(number)
  default   = [1, 2, 3, 4, 5]
}

variable "my_tuple" {
  type      = tuple([string, number, string, number])
  default   = ["1", 2, "3", 5]
}

variable "users" {
  type = map(object({
    role = string
  }))
  default = {
    "chinmay" = {
      role = "hero"
    }
    "joseph"={
        role = "admin"
    }

  }
}

output "userbyrole" {
 value = { for name, user in var.users : user.role => name}
}


output "forlist" {
  value = [for i in var.my_list: parseint(i, 10)]
}

output "fortupple" {
  value = [for i in var.my_tuple: tonumber(i)]
}

output "filteredlist" {
  value = [for i in var.my_tuple: tonumber(i) if tonumber(i) > 2]
}