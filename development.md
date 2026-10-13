# Development

## VSCode

For those interested in using git / Visual Studio Code instead of github
you can double click on the **hacman_docs.code-workspace** file to open

I'd recommend the following extensions

  * https://github.com/yzhang-gh/vscode-markdown

you can get a side by site markdown preview window by typing "preview" into the command palette
As well as a couple of tasks for serving with livereload


## Virtual Python Environment

If you want to test out / see what the site looks like while editing
You can setup a virtual python enviroment to get everything working

```sh
# First to Create a python virtual env
python -m venv .venv

# To acitvate the environment via powershell (Windows)
.\.venv\Scripts\Activate.ps1

# To acitvate the environment via Linux
source .venv/bin/activate

# To install all the requirements into the virtual env
pip install -r requirements.txt

# To serve the site locally on 127.0.0.1:8000
python build.py serve

# Leave the python virtual environment when finished
deactivate
```

### Manual Build

The above steps include calling a script called **build.py**  
Typically the actual live build makes use of tox, but this script is just handy for perfoming manual builds or serving with cleanup

To have the site built locally and visible on [http://127.0.0.1:8000] on your own machine
You can ether run

  * build.py serve
  * mkdocs serve --livereload

### Github Actions Build

The live build is normally performed automatically.  
This is handled via github action scripts under `.github/workflows`  
This is typically automatic as soon as a new commit is pushed

## Plugins

The plugins in use include

  * [Material Theme for mkdocs](https://squidfunk.github.io/mkdocs-material/)
  * [MkdocsTagPlugin - Support for Tags](https://github.com/srymh/MkdocsTagPlugin)
  * [Mkdocs Emailprotect - Additional protection for email address's against bots](https://github.com/rkoe/mkdocs-emailprotect)
  * [mkdocs-git-revision-date-localized-plugin](https://github.com/timvink/mkdocs-git-revision-date-localized-plugin)

There is a full list of plugins here

  * [Mkdocs Plugins](https://github.com/mkdocs/mkdocs/wiki/MkDocs-Plugins)


## TODO

### Tab Navigation

Consider if we should enable Tab Navigation

  * https://squidfunk.github.io/mkdocs-material/setup/setting-up-navigation/#navigation-tabs

This puts the top level menu across the top

### Other Plugins

Look into any other plugins that might be of use

### Colors

The material theme has some options for the colors, should we use more of a yellow theme?

https://squidfunk.github.io/mkdocs-material/setup/changing-the-colors/

```
  palette:
    primary: 'Teal'
    accent: 'Amber'
```

### Icons

I'm not sure if to use the hackspace icons, if so maybe make the background transparent

```
  favicon: assets/favicon.png
  logo: assets/logo-new-1.png
```


### Other

  * sortable tables enabled - https://squidfunk.github.io/mkdocs-material/reference/data-tables/#sortable-tables
  * look at enabling tasklist - https://squidfunk.github.io/mkdocs-material/reference/lists/#tasklist


### Markdown extensions

Need to document the use of these

  * https://squidfunk.github.io/mkdocs-material/reference/admonitions/
