#!/bin/bash
# Convierte imágenes en images/ a WebP (calidad configurable)
# Requiere cwebp (libwebp)
set -e
QUALITY=80
cd "$(dirname "$0")/.." || exit 1
mkdir -p images
shopt -s nullglob || true
for f in images/*.{png,jpg,jpeg}; do
  [ -f "$f" ] || continue
  out="${f%.*}.webp"
  echo "Convirtiendo $f -> $out ..."
  cwebp -q "$QUALITY" "$f" -o "$out"
done

echo "Listo. Revisa images/*.webp"
