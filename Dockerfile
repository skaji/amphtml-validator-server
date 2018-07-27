FROM node:8.11.3-alpine
RUN mkdir -p /app
WORKDIR /app
ADD . /app
RUN yarn install --flat --production=true && yarn test
ENTRYPOINT ["yarn", "server"]
CMD ["--host", "0.0.0.0", "--port", "8080"]
EXPOSE 8080