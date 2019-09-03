# API Documentation Pipeline

This is a Docker image that will take an OpenAPI (v3) YAML document
and produce a static [Slate](https://github.com/slatedocs/slate) site
suitable for publication on GitHub Pages or wherever.  The
[widdershins](https://github.com/Mermade/widdershins) library is
responsible for converting the YAML/JSON into something Slate can use.



## To Build

``` shell
$ docker build -t api-doc-pipeline .
```

## To Use

Assuming the API YAML specification file is `/projects/api/api.yaml`:

``` shell
$ docker run -v /projects/api:/work/source --rm api-doc-pipeline
```

The resulting HTML, JS, CSS, &c. will be available in /projects/api
alongside the original source.

The filename `api.yaml` is hardcoded.

## License

MIT License

Copyright (c) 2019 Bunny Lushington

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

