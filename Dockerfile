# Dockerfile para PagAlerta

# Usa a imagem oficial do n8n
FROM n8nio/n8n:latest

# Define as variáveis de ambiente
ENV N8N_BASIC_AUTH_ACTIVE=true \
    N8N_BASIC_AUTH_USER=${N8N_BASIC_AUTH_USER} \
    N8N_BASIC_AUTH_PASSWORD=${N8N_BASIC_AUTH_PASSWORD} \
    N8N_HOST=${N8N_HOST} \
    N8N_PORT=${N8N_PORT} \
    WEBHOOK_URL=${WEBHOOK_URL} \
    N8N_ENCRYPTION_KEY=${N8N_ENCRYPTION_KEY} \
    N8N_DATABASE_FILE=/data/database.sqlite

# Exponha a porta do n8n
EXPOSE 5678

# Cria um diretório para os dados do n8n
VOLUME ["/data"]

# Define o ponto de entrada padrão
CMD ["n8n"]
