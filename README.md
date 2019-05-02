grid
----

**G**o **R**un **I**n **D**ocker

**grid** can help you run simple Go cli applications without even installing Go
language and run things like `go get`. The only thing you need is a
[docker](https://docs.docker.com/install/).

**grid** runs package as a non-root user in an isolated container.

To use it, provide a link to the main package.

Usage example:
```
./grid github.com/OWASP/Amass/cmd/amass -h
```
