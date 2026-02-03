variable "proxmox_api_url" {
  type      = string
  sensitive = true
}

variable "proxmox_api_token_id" {
  type      = string
  sensitive = true
}

variable "proxmox_api_token" {
  type      = string
  sensitive = true
}

variable "vm_configs" {
  type = map(object({
    vm_id       = number
    target_node = string
    name        = string
    memory      = number
    vm_state    = string
    onboot      = bool
    startup     = string
    ipconfig    = string
    cores       = number
    bridge      = string
    network_tag = number
  }))
  default = {
    "n8n" = {
      vm_id       = 3000
      target_node = "pve1"
      name        = "n8n"
      memory      = 4096
      vm_state    = "stopped"
      onboot      = false
      startup     = "order=1"
      ipconfig    = "ip=192.168.4.100/24,gw=192.168.4.1"
      cores       = 2
      bridge      = "vmbr0"
      network_tag = 0
    },
    "k3s-master" = {
      vm_id       = 4000
      target_node = "pve1"
      name        = "k3s-master"
      memory      = 4096
      vm_state    = "stopped"
      onboot      = false
      startup     = "order=1"
      ipconfig    = "ip=192.168.4.101/24,gw=192.168.4.1"
      cores       = 2
      bridge      = "vmbr0"
      network_tag = 0
    },
    "k3s-worker" = {
      vm_id       = 4001
      target_node = "pve1"
      name        = "k3s-worker"
      memory      = 4096
      vm_state    = "stopped"
      onboot      = false
      startup     = "order=1"
      ipconfig    = "ip=192.168.4.102/24,gw=192.168.4.1"
      cores       = 2
      bridge      = "vmbr0"
      network_tag = 0
    },
    "ansible-worker" = {
      vm_id       = 4002
      target_node = "pve1"
      name        = "worker-station"
      memory      = 2048
      vm_state    = "stopped"
      onboot      = false
      startup     = "order=1"
      ipconfig    = "ip=192.168.4.103/24,gw=192.168.4.1"
      cores       = 2
      bridge      = "vmbr0"
      network_tag = 0
    },
  }
}