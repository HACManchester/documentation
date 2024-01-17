
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
### Prerequisites
1. Python 3.6+
2. Pip
3. markupsafe 2.0.1

### Installation
1. Fork this repo and clone it to your local machine
2. Install `mkdocs` and `mkdocs-material` using pip
3. Run `mkdocs serve` from the root folder to start a local server in http://127.0.0.1:8000/

Note: If you are using Windows, you may need to run `python -m mkdocs serve` instead.

### Contributing
1. Edit the files in the `docs` folder
2. Commit your changes and push them to your fork
3. Create a pull request to merge your changes into the main repo
4. Once your PR is merged, the site will be automatically updated
