# Pi-Hole and Unbound docker compose

### Requirements

Create .env file in the same folder as the Dockerfile

```
PIHOLE_PASSWORD=<pass>
PIHOLE_TIMEZONE=<timezone>
PIHOLE_IP_ADDRESS=<ip-address>
```

### How to run

Build image

```docker-compose build```

Run image

```docker-compose up -d```

### Troubleshooting

#### Error:

Error starting userland proxy: listen tcp4 0.0.0.0:53: bind: address already in use

#### Fix:

```
sudo systemctl disable systemd-resolved
sudo systemctl stop systemd-resolved
```
