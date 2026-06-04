#!/bin/bash
# Genera versiones @2x para PNG/JPG/JPEG en images/
# Requiere ImageMagick (convert)
set -e
cd "$(dirname "$0")/.." || exit 1
mkdir -p images
shopt -s nullglob || true
for f in images/*.{png,jpg,jpeg}; do
  [ -f "$f" ] || continue
  ext="${f##*.}"
  base="${f%.*}"
  out="${base}@2x.${ext}"
  echo "Generando $out ..."
  convert "$f" -resize 200% "$out"
done

echo "Listo. Revisa images/*@2x.*"
