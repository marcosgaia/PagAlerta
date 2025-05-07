# Dockerfile para PagAlerta

# Usa a imagem oficial do n8n
FROM n8nio/n8n

# Define as variáveis de ambiente
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=senha123
ENV N8N_HOST=pagalerta.up.railway.app
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://pagalerta.up.railway.app

# Exponha a porta do n8n
EXPOSE 5678

# Comando para iniciar o n8n
CMD ["n8n"]
