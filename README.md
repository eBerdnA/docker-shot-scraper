Docker image for running [Taking a screenshot - shot-scraper](https://shot-scraper.datasette.io/en/stable/screenshots.html).

# Build

Build the image locally.

```
docker build -t shotscraper .
```

# Run

Mount the local directory `/shotscraper` inside the container as `/save`, capture a screenshot of https://datasette.io/, and save it as `datasette.png`. The container is automatically removed after running the command because of using `--rm`.
```
docker run --rm -v /shotscraper:/save shotscraper shot-scraper https://datasette.io/ -o /save/datasette.png
```

See documentation of `shot-scraper` for every other command line option available.