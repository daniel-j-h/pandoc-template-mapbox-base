#!/usr/bin/env bash
set -e

SOURCES=(
  "demo.md"
)

TEMPLATE="mapbox-base.html"

pandoc \
	--standalone \
	--smart \
	--highlight-style=haddock \
	--toc \
	--template=${TEMPLATE} \
	-f markdown \
	-t html5 \
	-o - \
	${SOURCES}
