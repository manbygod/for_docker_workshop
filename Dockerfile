FROM ubuntu
MAINTAINER The AI Project <manbygod@gmail.com>

# ENV LC_ALL en_US.UTF-8
# Locale Setting for English and Hangul


COPY ./start.sh /
COPY ./install.sh /

RUN chmod 755 /install.sh
RUN chmod 755 /start.sh
RUN /install.sh

# ENTRYPOINT ["/xx/sshd","sshd"]
CMD /start.sh
