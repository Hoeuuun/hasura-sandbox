#! /bin/bash
docker -d run -p 5432:5432 postgres:11.1
docker run -p 8080:8080 \
       -e HASURA_GRAPHQL_DATABASE_URL=postgres://postgres:@host.docker.internal:5432/postgres \
       -e HASURA_GRAPHQL_ENABLE_CONSOLE=true \
#       -e HASURA_GRAPHQL_ADMIN_SECRET=myadminsecretkey \
       hasura/graphql-engine:latest
