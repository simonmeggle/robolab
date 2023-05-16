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




## Configure Traefik

https://doc.traefik.io/traefik/middlewares/http/basicauth/

    apt install apache2-utils
    echo $(htpasswd -nb traefikrmk XctA4J9iXctA4J9iXctA4J9i122) | sed -e s/\\$/\\$\\$/g




## TODO

- Traefik
- 