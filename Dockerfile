# Menggunakan base image Node.js versi 14
FROM node:14-alpine

# Menentukan working directory
WORKDIR /app

# Menyalin (copy) semua files di host dir ke working dir
COPY . .

# Menggunakan Environment Variables
ENV NODE_ENV=production \
    DB_HOST=item-db

# Memasang (install) dependencies dan build aplikasi
RUN npm install --production --unsafe-perm && \
    npm run build

# Mengekspos port yang akan digunakan
EXPOSE 8080

# Menjalankan aplikasi
CMD ["npm", "start"]

