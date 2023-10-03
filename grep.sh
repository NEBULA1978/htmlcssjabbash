#!/bin/bash

# Extraer el título de la página (etiqueta <title>)
grep -o '<title>.*<\/title>' html6.html > titulo.txt

# Extraer los enlaces (etiquetas <a>)
grep -o '<a[^>]*>.*<\/a>' html6.html > enlaces.txt

# Extraer los nombres de las clases CSS (atributo class en etiquetas)
grep -o 'class="[^"]*"' html6.html > clases.css

# Extraer los atributos src de las etiquetas <img>
grep -o '<img[^>]*src="[^"]*"' html6.html > atributos_src.txt

# Extraer el título de la página (etiqueta <title>)
grep -o '<title>.*<\/title>' html6.html | awk -F '>' '{print $2}' | awk -F '<' '{print $1}' > titulo.txt

# Extraer los enlaces (etiquetas <a>)
grep -o '<a[^>]*>.*<\/a>' html6.html | awk -F '>' '{print $2}' | awk -F '<' '{print $1}' > enlaces.txt

# Extraer los nombres de las clases CSS (atributo class en etiquetas)
grep -o 'class="[^"]*"' html6.html | awk -F '"' '{print $2}' > clases.css

# Extraer los atributos src de las etiquetas <img>
grep -o '<img[^>]*src="[^"]*"' html6.html | awk -F '"' '{print $2}' > atributos_src.txt
