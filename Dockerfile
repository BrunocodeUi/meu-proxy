FROM 3proxy/3proxy:latest

COPY 3proxy.cfg /etc/3proxy/3proxy.cfg

EXPOSE 1080 3128

# Mantém o container vivo se der erro + mostra log
CMD ["sh", "-c", "cat /etc/3proxy/3proxy.cfg && 3proxy /etc/3proxy/3proxy.cfg || echo '=== ERRO NO 3PROXY ===' && tail -f /dev/null"]