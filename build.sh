#!/usr/bin/env bash

mkdir -p out

pandoc $(ls draft/**/*.md | sort) -V documentclass=report --metadata-file ./metadata.yaml "--from=gfm-implicit_figures+rebase_relative_paths" -t pdf -s -o out/book.pdf
pandoc $(ls draft/**/*.md | sort) -V documentclass=report --metadata-file ./metadata.yaml "--from=gfm-implicit_figures+rebase_relative_paths" -t epub -s -o out/book.epub