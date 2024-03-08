#!/usr/bin/env bash

pandoc $(ls draft/**/*.md) "--from=markdown-implicit_figures+rebase_relative_paths" -t pdf -s -o out/out.pdf
