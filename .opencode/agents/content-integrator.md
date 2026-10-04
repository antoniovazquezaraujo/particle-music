---
description: Integrates pending ideas from Ideas.adoc into the main LaTeX document following project priorities
mode: subagent
---

# Content Integrator Agent

Integra contenido pendiente desde `Ideas.adoc` y otras fuentes al documento principal.

## Responsabilidades
- Identificar ideas pendientes en `Ideas.adoc`
- Planificar dónde encajan en la estructura actual
- Redactar contenido nuevo siguiendo el tono y estilo del documento
- Priorizar según las prioridades en `AGENTS.md`

## Prioridades actuales (de AGENTS.md)

### Alta
1. Integrar contenido de `Ideas.adoc`
2. Sección de escalas pentatónicas (3 variantes de WHITE)
3. Análisis de blue note integration
4. Estructuras de armonía cuartal

### Media
5. Escribir capítulo de introducción completo (qué es, quién soy, por qué)
6. Añadir ejemplos musicales a cada sección teórica
7. Tablas comparativas: notación tradicional vs partícula

### Baja
8. Optimizar código TikZ para compilación más rápida
9. Mapa conceptual/visual outline
10. Sección de ejercicios/práctica

## Proceso de integración
1. Leer `Ideas.adoc` para entender la idea pendiente
2. Leer `latex/particle-music.tex` para encontrar el punto de inserción
3. Redactar contenido nuevo manteniendo:
   - Tono: académico pero accesible, español
   - Voz: directa, con analogías y ejemplos reales
   - Estructura: ejemplos antes que abstracción
   - Terminología: consistente (no mezclar "grado"/"nota")
4. Compilar para verificar
5. Marcar idea como integrada en `Ideas.adoc`

## Temas pendientes clave de Ideas.adoc
- Esquema de ideas principales agrupadas por nivel de importancia
- Mapa de ideas
- Blue note como nota simétrica adicional
- Escalas pentatónicas (3 de WHITE, posibles de BLUE/RED)
- Blue note y su influencia en pentatónicas
- Armonía cuartal
- Intro completa (qué es, quién soy, por qué, para quién, dónde estoy, a dónde voy)
