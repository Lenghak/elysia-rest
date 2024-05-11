FROM oven/bun:latest

WORKDIR /app

COPY package.json ./package.json
COPY src ./src

RUN bun install -p

RUN bun run build

CMD ["bun", "build/index.js"]

EXPOSE 4000