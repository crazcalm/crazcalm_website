# HTML

## Podman Development steps:
1. `cd html`
2. `podman run --name some-nginx -p 8080:80 --rm -v $(pwd):/usr/share/nginx/html:ro -d nginx`
3. Site is hosted on [http://localhost:8080/](http://localhost:8080/)

### Stop Podman Container
`podman stop some-nginx`
