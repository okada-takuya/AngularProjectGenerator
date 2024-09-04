FROM node:latest AS base

WORKDIR /workspace

RUN npm install -g @angular/cli@${ANGULAR_VERSION}
