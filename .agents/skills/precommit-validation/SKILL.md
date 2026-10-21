---
name: precommit-validation
description: "Use before committing repository changes to verify branch, staged scope, whitespace, and relevant tests."
argument-hint: "Optional base ref, for example origin/main"
---

# Validación previa al commit

## Objetivo

Determinar y dejar evidencia de si los cambios staged están listos para un commit en este monorepo. Esta skill no crea commits ni hace push.

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

Registra en la respuesta final los comandos ejecutados y su código de salida, la lista de archivos revisados, el resultado de la revisión de secretos/datos sensibles y cualquier comprobación no aplicable o pendiente.

## Criterios de aceptación

- El comando `bash .agents/skills/precommit-validation/scripts/check.sh <base-ref>` termina con código `0` y muestra `PASS`. El script comprueba que la rama no sea `main`, que la referencia base exista, que haya archivos staged y que `git diff --check` no encuentre errores.
- Cada prueba o comprobación automatizada aplicable termina con código `0`. Si no existe una prueba aplicable, el informe dice explícitamente que no hay comando configurado y enumera la comprobación alternativa realizada.
- La salida de `git diff --cached --name-status` se revisa y contiene únicamente archivos previstos para la tarea; el informe registra esa lista.
- Se revisa el contenido completo de `git diff --cached`; el informe confirma que no contiene secretos, credenciales ni datos identificables de pacientes, o detalla el bloqueo encontrado.

El primer criterio es automatizado por [scripts/check.sh](./scripts/check.sh). Los restantes se verifican con los códigos de salida de las pruebas y la revisión documentada del diff; si no se puede completar cualquiera, no se debe recomendar el commit.
