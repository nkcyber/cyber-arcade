FROM treyyoder/quakejs:latest

# overwrite server config
COPY server.cfg /quakejs/base/baseq3/server.cfg
COPY server.cfg /quakejs/base/cpma/server.cfg

