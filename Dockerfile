FROM alpine:3.23 AS build
RUN apk add --no-cache build-base
WORKDIR /app
COPY Makefile ./
COPY src ./src
COPY tests ./tests
RUN make test

FROM alpine:3.23
WORKDIR /app
COPY --from=build /app/build/c-stakeholder /usr/local/bin/c-stakeholder
ENTRYPOINT ["c-stakeholder"]
