
# Documentation

This repo contains the official documentation for Hackspace Manchester. 

All members can push edits or new documentation to this repo and it will automatically build and will be available at https://docs.hacman.org.uk

This uses Github Actions and MKDocs

## Build Process

### Automated Build

For most folks they only want to add pages or images via Github so are not interested in how the main page is built.
However for those interested the documentation pages are built into a site using mkdocs and the mkdocs material theme using a ci script
[.github/workflows/ci.yml](.github/workflows/ci.yml)

## Manual Build

If you want to experiment manually building the documentation for experimenting with plugins etc. There's a script in the root directory called **build.py** which can be used with python 3.8 / mkdocs / mkdocs material / any other plugins required.

There's also a **virtenv** directory that can be used to setup a virtual python environment.
