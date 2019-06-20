# Git, Secrets and You!

A short beer-and-learn presentation on secret storage.

<!-- toc -->

- [Developing](#developing)
  * [Requirements](#requirements)
  * [Process](#process)
  * [Notes and considerations](#notes-and-considerations)
- [License](#license)

<!-- tocstop -->

## Developing

### Requirements

The following tools are needed to work on this presentation:

- `docker`
- `make`

### Process

1. Modify [`index.html`](index.html) to fit style needs
2. Modify [`content.md`](content.md) with necessary content in Markdown format
3. Run `make test` once to start a local HTTP daemon

### Notes and considerations

A local HTTP daemon is needed to allow for inclusion of files by files (in our case, `content.md` indirectly by `index.html`). Browsing locally won't work due to security considerations of modern browsers.

- `CONTAINER_NAME` and `CONTAINER_PORT` can be set as environment variables and used for this daemon. Sane defaults are preset.
- On Linux, `make open` will open the webpage. On OS X, `open localhost:$(CONTAINER_PORT)` will do the job
- `make clean` will clean up the container
- The repository is mounted to the container: any changes written locally will persist to the daemon

## License

 * [Apache License, Version 2.0](./LICENSE-APACHE)
 * [MIT License](./LICENSE-MIT)
