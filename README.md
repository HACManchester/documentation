
# Documentation

This repo contains the official documentation for Hackspace Manchester. 
All members can push edits or new documentation to this repo and it will automatically build and will be available at https://docs.hacman.org.uk
This uses Github Actions and MKDocs

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
