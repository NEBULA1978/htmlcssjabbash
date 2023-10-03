#!/bin/bash

# Filtrar líneas que contienen la palabra "JavaScript" y guardarlas en un archivo
grep 'JavaScript' html6.html > javascript_lines.txt

# Filtrar líneas que contienen una etiqueta de encabezado <h1> y guardarlas en un archivo
grep '<h1>.*</h1>' html6.html > h1_headers.txt

# Filtrar líneas que contienen números de teléfono (formato: (123) 456-7890) y guardarlas en un archivo
grep -o '\([0-9]\{3\}\) [0-9]\{3\}-[0-9]\{4\}' html6.html > phone_numbers.txt

# Filtrar líneas que contienen direcciones de correo electrónico y guardarlas en un archivo
grep -E -o '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b' html6.html > email_addresses.txt

# Filtrar líneas que contienen URLs y guardarlas en un archivo
grep -E -o 'https?://[^[:space:]]+' html6.html > urls.txt
