FROM pihole/pihole:latest
RUN apt update -y && apt install -y unbound
COPY pi-hole.conf /etc/unbound/unbound.conf.d/pi-hole.conf
COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ./entrypoint.sh
