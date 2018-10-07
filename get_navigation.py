#!/usr/bin/env python3
# Returns HTML that allows the user to navigate
# to each subdirectory's index.html.

import os

template = '<li><a href="{link}">{title}</a></li>'

for curdir, dirs, files in os.walk('.'):
    subdirs = list(filter(lambda dir: not dir.startswith('.'), dirs))
    break

output = []
output.append('<h3>Navigation<h3>')
output.append('<ul id="navigation">')

for dir in subdirs:
    link = './{}/'.format(dir)
    with open(os.path.join(link, 'index.md'), 'r') as fd:
        title = fd.readline()[2:].strip()
    output.append(template.format(link=link, title=title))

output.append('</ul>')

print(*output, sep='\n', end='\n')
