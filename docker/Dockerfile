FROM zeroth-bot-sim:v0

WORKDIR /root

# COPY sources.list /etc/apt/sources.list

# RUN mkdir /root/.pip
# COPY pip.conf /root/.pip/pip.conf

RUN apt update

# on vnc client use <your docker ip>:5901
RUN apt update && apt install -y \
    xorg \
    x11vnc \
    xfce4 \
    xvfb
# RUN apt install -y wget zlib1g-dev libssl-dev libncurses5-dev libsqlite3-dev libreadline-dev libtk8.6 libgdm-dev libdb4o-cil-dev libpcap-dev
# RUN wget https://mirrors.huaweicloud.com/python/3.8.19/Python-3.8.19.tar.xz && tar -xvf Python-3.8.19.tar.xz

# WORKDIR  /root/Python-3.8.19
# RUN ./configure --prefix=/usr/local && make && make install

# WORKDIR /usr/local/bin/
# RUN ln -s pip3 pip

# WORKDIR  /app/sim/
# RUN make install-dev

# RUN wget https://developer.nvidia.com/isaac-gym-preview-4
# # RUN tar -xvf 
# RUN make install-third-party-external

RUN export MODEL_DIR=sim/resources/stompymicro
# RUN apt install g++
# RUN python3 sim/train.py --task=stompymicro --num_envs=4

EXPOSE 4000
EXPOSE 5901

CMD ["tail","-f", "/dev/null"]
# CMD ["/usr/bin/Xvfb", ":1", "-screen", "0", "1280x1024x24", "-nolisten", "tcp", "-auth", "/var/run/xauth"] && \
#     ["/usr/bin/vncserver", "-display", ":1", "-geometry", "1280x1024"]