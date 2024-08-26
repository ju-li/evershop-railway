FROM evershop/evershop:latest

RUN npm run user:create -- --email "$ADMIN_EMAIL" --password "$ADMIN_PASSWORD" --name "$ADMIN_USERNAME"

CMD ["npm", "run", "start"]