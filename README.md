* API Documentation Pipeline

This is a Docker image that will take an OpenAPI (v3) YAML document
and produce a static [Slate](https://github.com/slatedocs/slate) site
suitable for publication on GitHub Pages or wherever.

** To Build

``` shell
$ docker build -t api-doc .
```

** To Use

Assuming the API YAML specification file is in /projects/api:

``` shell
$ docker run -v /projects/api:/work/source --rm api-doc
```

The resulting HTML, JS, CSS, &c. will be available in /projects/api
alongside the original source.

