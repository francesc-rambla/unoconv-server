FROM frambla/docker-node-unoconv:latest

WORKDIR /app
COPY . .

ENV HOSTNAME 0.0.0.0
ENV PORT 4000
ENV LANG es_ES.UTF-8

RUN yarn && yarn cache clean

EXPOSE 4000

CMD ["start"]

ENTRYPOINT ["./unoconv-server"]
