
# Documentation

This repo contains the official documentation for Hackspace Manchester. 
All members can push edits or new documentation to this repo in a form of PR (Pull Requests), and it will automatically build and will be available at https://docs.hacman.org.uk
This uses GitHub Actions and MKDocs

The syntax in use is markdown, for editing pages it is suggested to use an online markdown editor such as
https://stackedit.io/app#

## Tags

This repo now has support for tags within the documentation.
To add a tag to a page as an example

Add something like this to the top of the page to add a tag
**docs/Tools_Equipment/Wood_Working/Table_Saw_ts2500.md**
```
---
tags:
  - Equipment
---
```

Next if the Tag is a new tag we need to create a page for it
to show all pages that are a member of this tag
**docs/tags/Equipment.md**
```
---
pagetype: tagpage
---

# Tag: Equipment

Equipment related pages
```

## Getting Started

### Making Changes - Github

The simplest way to make changes is to

1. Fork the repo
2. Edit the files using the github web interface directly
3. Raise a pull request

This is the least techy way to edit the documentation.

### Making Changes - Mkdocs

If you want to get a better preview of what the changes will look like when rendered on the actual site:

1. Fork this repo and clone it to your local machine
2. Edit the .md files within the `docs` directory, (for best results something like vscode with markdown preview)
3. Install python 3.6+
4. Install the below packages

```sh
# These can be seen here - https://github.com/HACManchester/documentation/blob/master/.github/workflows/ci.yml
pip install mkdocs
pip install mkdocs-material
pip install git+https://github.com/srymh/MkdocsTagPlugin.git@ac1f02ba95527d11d84b5ec87f4e63851d57fc7d
pip install git+https://github.com/rkoe/mkdocs-emailprotect@ef91e3dda367bd6a3f65dda183559e1b929d6240
pip install mkdocs-git-revision-date-localized-plugin
```

Then we can use the build.py wrapper script
```sh
# This builds the documentation page then makes it visible under http://127.0.0.1:8000
build.py serve
# This just builds the page without previewing for production
build.py build
# Cleans the build directory
build.py clean
```

### Contributing

1. After making and saving any changes
2. Commit your changes and push them to your fork
3. Create a pull request to merge your changes into the main repo
4. Once your PR is merged, the site will be automatically updated as part of the github workflow
