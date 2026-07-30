FROM rocker/rstudio:latest

ENV PASSWORD=asdf
ENV ROOT=true

RUN sed -i 's|http://archive.ubuntu.com/ubuntu|https://archive.ubuntu.com/ubuntu|g' /etc/apt/sources.list.d/*.sources \
    && sed -i 's|http://security.ubuntu.com/ubuntu|https://security.ubuntu.com/ubuntu|g' /etc/apt/sources.list.d/*.sources

RUN echo "rstudio ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/90-rstudio \
    && chmod 0440 /etc/sudoers.d/90-rstudio

RUN R -e "install.packages('pak')""
