# syntax=docker/dockerfile:1
FROM bmaust/virome-base
COPY ./VIBRANT-install.sh /root/
RUN /bin/bash /root/VIBRANT-install.sh 
COPY ./VIBRANT-setup.sh /root/
CMD /bin/bash 
