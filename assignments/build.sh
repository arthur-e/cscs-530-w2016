#!/usr/bin/bash

# Intended use:
#   . build.sh draft.md docx
#   . build.sh draft.md pdf

pandoc \
-f markdown+raw_tex+table_captions+implicit_figures \
-N -R \
--smart \
--bibliography="/home/arthur/library.bib" \
--csl="/home/arthur/Sync/Documents/Metadata/springer-socpsych-brackets.csl" \
--filter pandoc-fignos \
-o "/home/arthur/Desktop/proposal_draft.$2" $1
