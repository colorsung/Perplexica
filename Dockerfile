FROM node:18-alpine

WORKDIR /app

# 安装依赖
COPY package*.json ./
RUN npm install --production

# 复制 Perplexica 服务代码
COPY . .

# 创建数据目录
RUN mkdir -p /data
VOLUME /data

# 暴露 Perplexica 服务端口
EXPOSE 3000

# 启动 Perplexica 服务
CMD ["npm", "start"] 