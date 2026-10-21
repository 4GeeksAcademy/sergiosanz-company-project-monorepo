# Instrucciones para agentes

Estas instrucciones aplican a todo el repositorio.

## Contexto obligatorio

Antes de planificar o editar:

1. Lee [`memory-bank/business-context.md`](./memory-bank/business-context.md) y [`memory-bank/technical-context.md`](./memory-bank/technical-context.md).
2. Lee el `README` de la carpeta propietaria del cambio y las reglas de `.agents/rules/` que correspondan.
3. Contrasta el contexto con el código y la documentación local. El banco de memoria orienta; no sustituye a las fuentes del proyecto.

Si una decisión, una arquitectura o el estado del producto cambia, actualiza el archivo de memoria afectado en el mismo cambio.

## Flujo de trabajo

1. Identifica el resultado esperado y una comprobación concreta que pueda refutar la hipótesis de implementación.
2. Revisa `git status` y la rama actual. Conserva los cambios preexistentes y trabaja en una rama de feature; no desarrolles directamente sobre `main`.
3. Sigue la estructura existente: web pública en `uis/website/`, aplicación interna en `uis/backoffice/` y APIs en `services/`. Lee el README propietario antes de añadir archivos. No inventes una estructura paralela.
4. Haz el cambio mínimo que cumpla el objetivo y mantén separadas las herramientas de desarrollo (`.agents/`) del producto (`agents/` y `skills/`).
5. Ejecuta primero la prueba o comprobación más cercana al cambio. Después ejecuta las comprobaciones adicionales que exija la carpeta o el proyecto. Si no existe una prueba aplicable, indícalo; no declares una verificación que no se ejecutó.
6. Antes de un commit, revisa el diff completo, comprueba que no haya secretos ni datos sanitarios identificables y ejecuta `git diff --check` junto con la skill `.agents/skills/precommit-validation/SKILL.md`.
7. No hagas commit ni push salvo que el usuario lo haya pedido o autorizado. Cuando la tarea pida una PR, publica la rama y abre una PR hacia la rama base indicada; nunca hagas push directo a `main`.

## Límites

- No inventes decisiones de producto, requisitos legales ni capacidades que el código no implemente.
- Trata HIPAA y UK GDPR como obligaciones distintas; ante una decisión de cumplimiento no documentada, pide revisión humana competente.
- No añadas datos reales de pacientes a código, fixtures, logs, documentación ni commits.
