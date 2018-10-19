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
The site consists of directories, where each
directory corresponds to a web page.
Every directory must have at least two files:

- `index.md`: The main content of the page.
  Converted to an `index.html` file when the site is compiled,
  and sandwiched between `templates/top.html` and `templates/bottom.html`.

- `Makeppfile`: The makefile. You must explicitly add each subdirectory
  you want included in the compilation to the variable `SUBDIRS`.
  `src/Makeppfile` does many things automatically, and can
  usually be used without any changes other than to the `SUBDIRS` variable.

Optionally, each directory may have subdirectories.
The same requirements as mentioned above apply to those.
Subdirectories appear in the `Navigation` secion
at the bottom of the page.

Theoretically the site will work with pictures,
which can be added in the directory of the page on which they appear.
This is, as of yet, untested.

You can see an example site in `src/`.
