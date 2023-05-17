# robolab

Robolab is a Docker based playground to develop end2end tests in an isolated, predictable environment. 

It provides: 
- Portainer (portainer.mydomain.tld)
- Traefik HTTP Proxy (traefik.mydomain.tld)
- Oxid eShop Community Edition (oxid.mydomain.tld) 
    - https://www.oxid-esales.com/
    - Setup by https://github.com/proudcommerce/docker-oxid6
- Checkmk (cmk.mydomain.tld)
- Mailhog (mailhog.mydomain.tld)


## Prerequisites

- Linux VM with an external IP
- Subdomains for each service
- Docker, Docker compose (https://docs.docker.com/engine/install/debian/)

## Configuration

`.env.example` must be renamed to `.env` and filled with individual data. 

- `TRAEFIK_*_DOMAIN` is the subdomain per service
- `TRAEFIK_AUTH` is the user/pw combination as HTTP basic auth string (https://doc.traefik.io/traefik/middlewares/http/basicauth/). Generate with
  - `apt install apache2-utils`
  - `echo $(htpasswd -nb traefikuser xxxxxx)`     
  - (When the string is used in docker-compose.yml *directly*, all dollar signs in the hash need to be doubled for escaping: `| sed -e s/\\$/\\$\\$/g`)

## Building 

After the `.env` file is set, the Oxid container image must be built with: 

    docker-compose build


## Start 

    docker-compose up