# crazcalm_website

## Development Environment

### Depenencies
- [Java](https://linoxide.com/ubuntu-how-to/install-java-ubuntu-20-04/)
	- pre-commit hook
- [podman](https://podman.io/getting-started/installation)
	- Containerization
	- Local development


### Pre-Commit
[pre-commit](https://pre-commit.com/) is a framework for managing and maintaining multi-language pre-commit hooks.

#### Dependencies:
- https://github.com/Lucas-C/pre-commit-hooks-java
   - Needs java interpreter in the $PATH

#### Install:
`pre-commit install`


### Running the app
- `cargo run` and then check http://localhost:3030/

#### Run with logging
- `RUST_LOG=trace cargo run`

### Running app in Container
#### Create an image of the app
Build the release binary and then put that binary in a container.
```
cargo build --release
podman build -t website .
```

The above command assumes that you are at the root directory for this project. The `-t website` tags the build with the name website.

#### View images
- podman image ls

You should see and entry for `localhost/website`.

#### Destroy the image
- podman image rm website

#### Create/run the container
- `podman run -it --rm --name website -p 8081:8080 localhost/website`

The above command runs a container, names the container `website`, exposes the container's 8080 port to the host machine's 8081 port, and `--rm` will destroy the container after it has been stopped.

**Note**: The logs are being printed to screen. If you want to keep them, then pipe/tee them someplace else.

#### Stop the container
- podman stop website
