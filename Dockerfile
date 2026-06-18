FROM 3proxy/3proxy:latest

# Copia a configuração
COPY 3proxy.cfg /etc/3proxy/3proxy.cfg

# Expõe portas
EXPOSE 1080 3128

# Inicia com 3proxy
CMD ["3proxy", "/etc/3proxy/3proxy.cfg"]