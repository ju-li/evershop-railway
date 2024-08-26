FROM evershop/evershop:latest

ARG ADMIN_USERNAME
ARG ADMIN_EMAIL
ARG ADMIN_PASSWORD

RUN echo ${ADMIN_USERNAME}
RUN echo ${ADMIN_EMAIL}
RUN echo ${ADMIN_PASSWORD}

RUN npm run user:create -- --email "${ADMIN_EMAIL}" --password "${ADMIN_PASSWORD}" --name "${ADMIN_USERNAME}"

EXPOSE 80
CMD ["npm", "run", "start"]