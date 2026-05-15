FROM eclipse-temurin:21

WORKDIR /server

COPY . .

RUN chmod +x start.sh

# Render will override PORT dynamically
ENV PORT=25565

EXPOSE 25565

CMD ["bash", "start.sh"]
