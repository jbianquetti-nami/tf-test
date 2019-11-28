resource "random_password" "password-owner" {
  length      = 16
  min_lower   = 3
  min_upper   = 3
  min_special = 3
  min_numeric = 3
}

resource "random_password" "password-user" {
  length      = 16
  min_lower   = 3
  min_upper   = 3
  min_special = 3
  min_numeric = 3
}



output "user_pass" {
  description = "random_password.password-user.result"
  value       = random_password.password-user.result
}

output "owner_pass" {
  description = "random_password.password-owner.result"
  value       = random_password.password-owner.result
}
