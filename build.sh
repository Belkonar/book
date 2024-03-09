#!/usr/bin/env bash

mkdir -p out

# the sort probs isn't needed but hey
items=$(ls draft/**/*.md | sort)

pandoc $items --metadata-file ./metadata.yaml "--from=markdown-implicit_figures+rebase_relative_paths" -t pdf -s -o out/book.pdf
pandoc $items --metadata-file ./metadata.yaml "--from=markdown-implicit_figures+rebase_relative_paths" -t epub -s -o out/book.epub
