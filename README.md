Documentation
=============

This repo contains the official documentation for Hackspace Manchester. All members can push edits or new documentation to this repo in a form of PR (Pull Requests), and it will automatically build and will be available at https://docs.hacman.org.uk This uses GitHub Actions and MKDocs

The syntax in use is markdown, for editing pages it is suggested to use an online markdown editor such as https://stackedit.io/app#

Getting Started
---------------

### Making Changes - Github

The simplest way to make changes is to

1.	Fork the repo
2.	Edit the files using the github web interface directly
3.	Raise a pull request

This is the least techy way to edit the documentation.

### Making Changes - Mkdocs

If you want to get a better preview of what the changes will look like when rendered on the actual site:

1.	Fork this repo and clone it to your local machine
2.	Edit the .md files within the `docs` directory, (for best results something like vscode with markdown preview)
3.	Install python 3.6+
4.	Install dependencies

	```sh
	pip install -r requirements.txt
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

#### Alternative using tox

[tox](tox.wiki) is a python-specific thing that's a bit like docker.

You can set up a dev environment and run a mkdocs development server using:

```sh
pip install tox
tox serve
```

### Contributing

1.	After making and saving any changes
2.	Commit your changes and push them to your fork
3.	Create a pull request to merge your changes into the main repo
4.	Once your PR is merged, the site will be automatically updated as part of the github workflow
