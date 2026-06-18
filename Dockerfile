FROM serjs/go-socks5-proxy:latest

EXPOSE 1080

# Mantém o container vivo caso dê erro
CMD ["sh", "-c", "echo 'Proxy iniciado na porta 1080' && /app/socks5 -user=meuusuario -pass=suaSenhaForte123 -port=1080 || tail -f /dev/null"]