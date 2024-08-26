FROM evershop/evershop:latest

RUN npm run user:create -- --email "fakemail@yopmail.com" --password "fakepass" --name "fakename"

EXPOSE 80
CMD ["npm", "run", "start"]