FROM alpine:edge

USER root
WORKDIR /root
ENV PS1='\[\e[35;1;5m\]toolbox \[\e[0m\]\u \[\e[90m\]\w \[\e[0m\]> '

RUN apk --no-cache add --update \
            atop \
            bash \
            bash-completion \
            bridge-utils \
            ca-certificates \
            coreutils \
            curl \
            bind-tools \
            docker-cli \
            file \
            gettext \
            git \
            grep \
            hdparm \
            helm \
            htop \
            iftop \
            iperf \
            iproute2 \
            kubectl \
            ltrace \
            ncdu \
            ncurses \
            ncurses-terminfo \
            net-tools \
            nmap \
            pciutils \
            psmisc \
            pv \
            python3 \
            screen \
            shadow \
            speedtest-cli \
            strace \
            sysstat \
            tar \
            tcpdump \
            tmux \
            tree \
            vim \
            xz \
            zip

CMD ["bash"]
