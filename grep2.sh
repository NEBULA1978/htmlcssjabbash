#!/bin/bash

# Filtrar líneas que contienen la palabra "HTML5" y guardarlas en un archivo
grep 'HTML5' html6.html > html5_lines.txt

# Filtrar líneas que comienzan con un espacio en blanco y guardarlas en un archivo
grep '^ ' html6.html > indented_lines.txt

# Filtrar líneas que contienen la palabra "Estructura" y guardarlas en un archivo
grep 'Estructura' html6.html > estructura_lines.txt

# Filtrar líneas que contienen la palabra "CSS3" y guardarlas en un archivo
grep 'CSS3' html6.html > css3_lines.txt

# Filtrar líneas que tienen un número de versión (por ejemplo, "1.7.2") y guardarlas en un archivo
grep -Eo '[0-9]+\.[0-9]+\.[0-9]+' html6.html > version_numbers.txt
