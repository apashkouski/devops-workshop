# data "digitalocean_image" "ubuntu_with_docker" {
#   slug = "docker-18-04"
# }

resource "digitalocean_ssh_key" "apashkouski" {
  name       = "apashkouski"
  public_key = "${file("files/apashkouski.pub")}"
}

resource "digitalocean_droplet" "web-1" {
  # image   = "${digitalocean_image.ubuntu_with_docker.slug}"
  image   = "docker-18-04"
  name    = "web-1"
  region  = "fra1"
  size    = "s-1vcpu-1gb"
  ssh_keys = ["${digitalocean_ssh_key.apashkouski.fingerprint}"]
}

resource "digitalocean_droplet" "web-2" {
  image   = "docker-18-04"
  name    = "web-2"
  region  = "fra1"
  size    = "s-1vcpu-1gb"
  ssh_keys = ["${digitalocean_ssh_key.apashkouski.fingerprint}"]
}
