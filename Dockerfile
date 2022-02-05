FROM archlinux:latest

RUN pacman -Sy --noconfirm ansible

COPY . .

CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
