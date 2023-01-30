# pull official base image
FROM python:3.10.9-slim-bullseye

# these were identified as dependencies for the shot-scraper package
RUN apt-get update && apt-get install -y netcat libglib2.0-0 libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libxcomposite1 libxdamage1 libxrandr2  libgbm1 libxkbcommon0 libpango-1.0-0 libcairo2 libasound2 libxfixes3

# install dependencies
RUN pip install --upgrade pip

RUN pip install shot-scraper
RUN shot-scraper install