resource "digitalocean_droplet" "web-1" {
  image  = "ubuntu-18-04-x64"
  name   = "web-1"
  region = "nyc2"
  size   = "s-1vcpu-1gb"
}

resource "digitalocean_droplet" "web-2" {
  image  = "ubuntu-18-04-x64"
  name   = "web-2"
  region = "nyc2"
  size   = "s-1vcpu-1gb"
}