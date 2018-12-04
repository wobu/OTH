build

    docker build -f Web.Dockerfile -t oth_web .
    docker build -f PHP.Dockerfile -t oth_php .

start with

    docker-compose up