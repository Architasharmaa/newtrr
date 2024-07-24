variable "treat_redirect_as_failure" {
  description = "Whether to treat HTTP redirects as failures"
  type        = bool
  default     = true
}
variable "validation_string"{
    description ="success"
   
}
variable "operator"{
  description = "string"
}
variable "apikey" {
  type = string 
}