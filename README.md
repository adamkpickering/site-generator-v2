# site-generator-v2

This is a very simple static site generator that uses
makepp (make's cousin that handles recursion sanely).
This lets you automate the building of your site
as much or as little as you want, and in a modular fashion.


## Installation

Simply run:

    ./install.sh


## To Do

- generate a site map (I'm thinking it should look similar to the output of `tree`)
- improve the CSS
- move the CSS to a separate file
- incorporate script that scans for broken links
- add support for pictures
- improve documentation
- incorporate a dev server that monitors .md files for changes
  and automatically reloads the page
- find an HTML beautifier that supports HTML5 and change meta charset tag
  on top.html to shorter version


## How it Works

The source code for the website resides in `src/`.
Every directory must have at least two files:

- index.md: The main content of the page.
  Converted to HTML when the site is compiled.

- Makeppfile: The makefile. You must explicitly add each subdirectory
  you want included in the compilation to the variable `SUBDIRS`.

Optionally, each directory may have subdirectories.
The same requirements apply to those.

The result of compilation is a structure of directories
with only an `index.html` file and any subdirectories.
In the future, pictures may be added.

You can see an example site in `src/`.
