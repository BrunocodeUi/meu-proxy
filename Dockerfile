FROM serjs/go-socks5-proxy:latest

EXPOSE 3128

CMD ["sh", "-c", "echo 'HTTP Proxy iniciado na porta 3128' && /app/socks5 -user=adminzpts -pass=gzZcBReay2D91XuF40hN -port=3128 -http || tail -f /dev/null"]