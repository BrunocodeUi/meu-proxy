FROM 3proxy/3proxy:latest

COPY 3proxy.cfg /etc/3proxy/3proxy.cfg

EXPOSE 1080 3128

# Versão de debug (mantém o container vivo para ver erro)
CMD ["sh", "-c", "3proxy /etc/3proxy/3proxy.cfg || echo 'ERRO AO INICIAR 3PROXY' && tail -f /dev/null"]