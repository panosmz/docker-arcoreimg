FROM ubuntu

ARG arcoreimg_url=https://github.com/google-ar/arcore-android-sdk/raw/master/tools/arcoreimg/linux/arcoreimg
ENV ARCOREIMG_URL=$arcoreimg_url

WORKDIR /opt/arcoreimg/bin

ADD ${ARCOREIMG_URL} arcoreimg

RUN useradd -ms /bin/bash arcoreimg && \
    chown arcoreimg /opt/arcoreimg/bin -R && \
    chmod +x ./arcoreimg

USER arcoreimg

ENV PATH "$PATH:/opt/arcoreimg/bin"

WORKDIR /arcoreimg
    
ENTRYPOINT ["arcoreimg"]
CMD ["--help"]