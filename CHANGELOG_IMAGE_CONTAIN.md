# Cambios aplicados en fix/image-contain

Se añadieron utilidades CSS y un demo para mostrar imágenes completas sin recortarlas.

Archivos añadidos:
- assets/css/image-utils.css  — utilidades con .img-frame, .img-contain, .bg-contain
- demo/image-contain-demo.html — página de ejemplo para comprobar comportamiento
- tools/generate-2x.sh — script opcional para generar versiones @2x (ImageMagick)
- tools/to-webp.sh — script opcional para convertir a WebP (cwebp)

Instrucciones rápidas:
- Coloca tus imágenes en la carpeta `images/`.
- Abre `demo/image-contain-demo.html` en el navegador (desde el repo) para ver el resultado.
- Si quieres que procese las imágenes (generar @2x o WebP) dímelo y lo ejecuto/acomodo.
