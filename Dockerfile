FROM kalilinux/kali-rolling

EXPOSE 22

RUN apt-get install -y apt-transport-https
#RUN echo "parseword" | passwd --stdin $USER
RUN apt-get update -y && apt-get install ssh -y
RUN apt-get autoremove -y && \
rm -rf /var/lib/apt/lists/*
#RUN apt-get install kali-linux-full -y

CMD service ssh start && update-rc.d -f ssh remove && update-rc.d -f ssh defaults
