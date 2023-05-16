# robolab
Robotmk test lab with Portainer, Checkmk and Oxid eShop

Inspired by https://github.com/proudcommerce/docker-oxid6


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
    # When used in docker-compose.yml all dollar signs in the hash need to be doubled for escaping.
    echo $(htpasswd -nb traefikrmk xxxxxx) | sed -e s/\\$/\\$\\$/g
    xxxxxxx  # Insert into .env file, $TRAEFIK_AUTH


## no Demodata

oxid.robotmk.org/setup

/data/www$ sudo chmod -R a+w var/

DB name: mysql.oxid.robotmk.org
DB name: robotoxid (egal) 
DB user: root 
DB pw: $OXID_MYSQL_ROOT_PASSWORD