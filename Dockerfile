FROM evershop/evershop:latest

RUN npm run user:create -- --email "fakemail@yopmail.com" --password "fakepass" --name "fakename"

CMD ["npm", "run", "start"]