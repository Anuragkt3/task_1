FROM rocker/r-ver:4.1.2
RUN install2.r shiny
COPY ./app /app
WORKDIR /app
EXPOSE 3838
CMD ["R", "-e", "shiny::runApp('/app')"]
