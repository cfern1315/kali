FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install kali-linux-full -y
RUN echo "parseword" | passwd --stdin $USER
RUN apt-get update -y && apt-get install ssh -y
RUN apt-get autoremove -y && \
rm -rf /var/lib/apt/lists/*

CMD service ssh start && update-rc.d -f ssh remove && update-rc.d -f ssh defaults
