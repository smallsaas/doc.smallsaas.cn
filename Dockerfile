# syntax=docker/dockerfile:experimental
# build-sage
FROM daocloud.io/library/node:12 as build

WORKDIR /usr/src
RUN git clone --depth 1 https://gitee.com/smallsaas/docs.smallsaas.cn web

WORKDIR /usr/src/web

RUN npm config set registry https://registry.npm.taobao.org
RUN --mount=type=cache,id=node_modules_cache,target=/usr/src/node_modules,rw npm install

RUN --mount=type=cache,id=node_modules_cache,target=/usr/src/node_modules,rw npm run build

# final-stage
FROM daocloud.io/library/nginx:latest
COPY --from=build /usr/src/web/dist /usr/share/nginx/html