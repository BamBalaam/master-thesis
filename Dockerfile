FROM dxjoke/tectonic-docker:latest

ARG FLAVOUR

COPY ./$FLAVOUR /usr/src/tex
