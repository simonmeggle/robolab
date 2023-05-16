# robolab
Robotmk test lab with Portainer, Checkmk and Oxid eShop

## Preparation 

gCloud VM 
SSH keypair login 
external IP 
install docker engine (https://docs.docker.com/engine/install/debian/)
install docker-compose

    sudo usermod -aG docker $USER

Create DNS records and point to IP: 
- traefik.robotmk.org
- portainer.robotmk.org
- oxid.robotmk.org



## TODO

- Traefik
- 