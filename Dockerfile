FROM kalilinux/kali-rolling

EXPOSE 22

#RUN apt-get install -y apt-transport-https
#RUN echo "parseword" | passwd --stdin $USER
RUN apt-get update -y && apt-get install ssh -y
RUN apt-get autoremove -y && \
rm -rf /var/lib/apt/lists/*
COPY run.sh ./run.sh
RUN chmod +x ./run.sh
#RUN apt-get install kali-linux-full -y

CMD ./run.sh
