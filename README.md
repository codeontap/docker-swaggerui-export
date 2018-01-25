# SwaggerUI Export

This Docker image is used to generate a static SwaggerUI which contains the swagger specification file as part of the hosted file collection.

After modifying the swaggerUI constructor all files are zipped and exported to

```text
    /app/outdir/apidoc.zip
```

# Usage 

```bash
docker run --rm \
    -v "<SwaggerSpecFileDir>:/app/indir" \
    -v "<DocOutput>:/app/outdir" \
    -e SWAGGER_JSON=/app/indir/<SwaggerSpecFile> \
    codeontap/swaggerui-export
```