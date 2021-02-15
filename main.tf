# If vpc_id = "create" use module to create new VPC
resource "digitalocean_vpc" "create" {
  count    = var.vpc_id == "create" ? 1 : 0
  name     = "${var.name}-vpc"
  region   = var.region
  ip_range = var.ip_range
}

# If vpc_id = default, use default vpc in region
data "digitalocean_vpc" "default" {
  count  = var.vpc_id == "default" ? 1 : 0
  region = var.region
}

data "digitalocean_vpc" "provided" {
  id    = var.vpc_id
  count = var.vpc_id != "default" && var.vpc_id != "create" ? 1 : 0
}
