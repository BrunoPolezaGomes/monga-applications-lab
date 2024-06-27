## "RG-" automatico no main.tf
variable "resource_group_name" {
    type = map(string)
  default = {
    "name"          = "ENVMG"
    "location"      = "brazilsouth"
    "storage"       = "mgappstorage"
 }
}

variable "VirtualMachine" {
  type = map(string)
  default = {
    ## User
    "admin_username"        = "monga"
    "admin_password"        = "Pa$$w0rd"

    ## OS Config
    "VM_Name"               = "MGAPP-LAB01"
    "size"                  = "Standard_B1ms"
    "storage_account_type"  = "Standard_LRS"

    ## Source Image Reference
    "publisher"             = "Canonical"
    "offer"                 = "UbuntuServer"
    "sku"                   = "20.04-LTS"
    "version"               = "latest"
  }
}

variable "tags" {
  type        = map(string)
  default = {
    env         = "env-monga",
    rg          = "RG-ENVMG",
    dept        = "dev",
    costcenter  = "int-application"
  }
}


#############################################
#############################################
###              VM SIZES                 ###
#############################################
### D2as_v4   | CPU 02 | RAM 08 ($ 78.11) ###
### B2ms      | CPU 02 | RAM 04 ($ 66.43) ###
#############################################
### B4ms      | CPU 04 | RAM 16 ($132.86) ###
#############################################
### E4_v5     | CPU 04 | RAM 32 ($205.86) ###
### DS3_v2    | CPU 04 | RAM 14 ($250.39) ###
#############################################
### D8s_v5    | CPU 08 | RAM 32 ($312.44) ###
#############################################
#############################################


