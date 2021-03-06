# syntax=docker/dockerfile:experimental
# build-sage
FROM daocloud.io/library/node:12 as build

WORKDIR /usr/src
RUN git clone --depth 1 https://gitee.com/smallsaas/docs.smallsaas.cn web

ADD ./package.json ./package.json
ADD ./.umirc.ts ./.umirc.ts
ADD ./tsconfig.json ./tsconfig.json

WORKDIR /usr/src/web

RUN npm config set registry https://registry.npm.taobao.org
RUN --mount=type=cache,id=node_modules_cache,target=/usr/src/node_modules,rw npm install


ADD ./docs ./docs

RUN --mount=type=cache,id=node_modules_cache,target=/usr/src/node_modules,rw npm run build

# final-stage
FROM daocloud.io/library/nginx:latest
COPY --from=build /usr/src/web/dist /usr/share/nginx/html