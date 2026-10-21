---
name: precommit-validation
description: "Use before committing repository changes to verify branch, staged scope, whitespace, and relevant tests."
argument-hint: "Optional base ref, for example origin/main"
---

# Validación previa al commit

## Objetivo

Aplicar una puerta de calidad repetible antes de confirmar cambios en este monorepo.

## Entradas

- Los archivos que se quieren incluir, ya preparados en el index de Git.
- La referencia base, opcional; por defecto `origin/main`.
- El comportamiento esperado y las comprobaciones relevantes del área modificada.

## Procedimiento

1. Lee `AGENTS.md`, el contexto técnico y las reglas aplicables. Para cada archivo, confirma que pertenece a la carpeta correcta y que se leyó su README propietario.
2. Ejecuta las pruebas o comprobaciones específicas existentes para el área modificada. Si no hay un comando aplicable, comprueba manualmente el resultado observable y deja constancia de que no existe una suite automatizada.
3. Prepara solo los archivos previstos y revisa todo el contenido staged con `git diff --cached`.
4. Ejecuta el validador incluido:

   ```bash
   bash .agents/skills/precommit-validation/scripts/check.sh origin/main
   ```

   Sustituye `origin/main` por una referencia base cuando corresponda.

5. Comprueba que el diff no contiene secretos, datos sanitarios identificables ni archivos ajenos a la tarea. No hagas commit si falla una comprobación o no se puede verificar un requisito; informa del bloqueo.

## Salida

Un resumen de los comandos ejecutados, sus resultados y cualquier requisito no verificado. La skill no crea commits ni hace push.

## Criterios de aceptación

- La rama actual no es `main` y la referencia base existe.
- Hay al menos un archivo staged y el diff staged/unstaged no presenta errores detectados por `git diff --check`.
- Las pruebas aplicables pasan; si el repo no define una prueba aplicable, esa ausencia y la comprobación manual quedan explícitas.
- El diff revisado se limita a la tarea y no contiene secretos ni datos sanitarios identificables.

Los dos primeros criterios son verificados automáticamente por [scripts/check.sh](./scripts/check.sh); los demás requieren revisar los resultados reales de las pruebas y el diff.
