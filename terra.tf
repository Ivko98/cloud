provider "scaleway" {
  region = "fr-par"
  zone   = "fr-par-1"
}

resource "scaleway_instance_ip" "ip" {
}

resource "scaleway_instance_server" "test" {
  name  = "test"
  ip_id = scaleway_instance_ip.ip.id
  image = "9eabe6fa-c260-4041-bc83-b0e4fd5bd4c3"
  type  = "DEV1-S"
  state = "started"
  enable_ipv6 = true
}
