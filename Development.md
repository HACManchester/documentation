# Development

## Plugins

The plugins in use include

  * [Material Theme for mkdocs](https://squidfunk.github.io/mkdocs-material/)
  * [MkdocsTagPlugin - Support for Tags](https://github.com/srymh/MkdocsTagPlugin)

There is a full list of plugins here

  * [Mkdocs Plugins](https://github.com/mkdocs/mkdocs/wiki/MkDocs-Plugins)

## Build System

For most folks they only want to add pages or images via Github so are not interested in how the main page is built.
However for those interested the documentation pages are built into a site using mkdocs and the mkdocs material theme using a ci script
[.github/workflows/ci.yml](.github/workflows/ci.yml)

This is typically automatic as soon as a new commit is pushed

### Manual Build

If you want to experiment manually building the documentation for experimenting with plugins etc.
There's a script in the root directory called **build.py** which can be used with python 3.8 / mkdocs / mkdocs material / any other plugins required.
There's also a **virtenv** directory that can be used to setup a virtual python environment.

To have the site built locally and visible on [http://127.0.0.1:8000] on your own machine
You can ether run

  * build.py serve
  * mkdocs serve --livereload

## TODO

### Tab Navigation

Consider if we should enable Tab Navigation

  * https://squidfunk.github.io/mkdocs-material/setup/setting-up-navigation/#navigation-tabs

This puts the top level menu across the top

### Other Plugins

Look into any other plugins that might be of use
