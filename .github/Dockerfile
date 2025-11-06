FROM python:3.9-slim

RUN apt-get update && apt-get install -y --no-install-recommends git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . /app

RUN chmod +x .github/scripts/entrypoint.sh \
             .github/scripts/update_readme.sh

ENTRYPOINT [".github/scripts/entrypoint.sh"]
