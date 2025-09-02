# Use a imagem oficial do Nginx como base
FROM nginx:1.25-alpine

# Copie o arquivo da sua aplicação (index.html) para o diretório raiz do Nginx
# Isso vai substituir o index.html padrão do Nginx pelo nosso.
COPY index.html /usr/share/nginx/html/

# Exponha a porta 80 para permitir o tráfego de entrada
EXPOSE 80

# Comando para iniciar o Nginx quando o container for executado
CMD ["nginx", "-g", "daemon off;"]