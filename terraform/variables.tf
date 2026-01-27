variable proxmox_api_url {
  type = string
}

variable proxmox_api_token_id {
  type = string
}

variable proxmox_api_token {
  type = string
}

#   variable "vm_configs" {
#     type = map(object({
#       vm_id       = number
#       target_node = string
#       name        = string
#       memory      = number
#       vm_state    = string
#       onboot      = bool
#       startup     = string
#       ipconfig    = string
#       cores       = number
#       bridge      = string
#       network_tag = number
#     }))
#     default = {
#       "master-node1" = {
#         vm_id       = 3000
#         target_node = "pve1"
#         name        = "test"
#         memory      = 4096
#         vm_state    = "stopped"
#         onboot      = false
#         startup     = "order=1"
#         ipconfig    = "ip=192.168.4.100/24,gw=192.168.4.1"
#         cores       = 2
#         bridge      = "vmbr0"
#         network_tag = 0
#       },
#     }
#   }