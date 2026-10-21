# Instrucciones para agentes

Estas instrucciones aplican a todo el repositorio.

## Contexto obligatorio

Al inicio de cada sesión, antes de planificar o editar, lee los tres archivos del banco de memoria:

- [`memory-bank/projectbrief.md`](./memory-bank/projectbrief.md): negocio, objetivo del proyecto y problema.
- [`memory-bank/techContext.md`](./memory-bank/techContext.md): stack, decisiones técnicas y restricciones.
- [`memory-bank/progress.md`](./memory-bank/progress.md): estado actual y próximos pasos.

Después, lee el `README` de la carpeta propietaria del cambio y las reglas de `.agents/rules/` que correspondan. Contrasta la memoria con el código y el briefing específico; la memoria no sustituye a las fuentes del proyecto. Actualiza `progress.md` cuando cambie el estado o los próximos pasos.

## Flujo obligatorio antes de cada commit

Sigue estos pasos en orden antes de cada commit:

1. Ejecuta `git status` y confirma rama y cambios preexistentes; consérvalos y trabaja en una rama de feature, nunca directamente en `main`.
2. Revisa el diff completo y la lista de archivos staged; confirma que cada archivo pertenece a la tarea y a su carpeta propietaria.
3. Ejecuta las pruebas y comprobaciones relevantes del área, `git diff --check` y la skill `.agents/skills/precommit-validation/SKILL.md`. Si no existe una prueba aplicable, deja constancia y no afirmes que pasó.
4. Comprueba que el diff no contiene secretos ni datos identificables de pacientes, y actualiza `progress.md` y el contexto afectado si cambió el estado del proyecto.
5. Solo entonces crea el commit si el desarrollador lo pidió o autorizó explícitamente. No hagas push directo a `main`; si la tarea pide una PR, publica una rama de feature y abre la PR.

## Rutas protegidas

No modifiques las siguientes rutas sin confirmación explícita del desarrollador para esa modificación:

- Briefings y contexto fuente: `healthcore-BRIEFING.es.md`, `CONTEXT.md` y `CONTEXT.es.md`.
- Datos fuente: `data/raw/**`.
- Infraestructura y despliegue: `infra/**` y `.github/workflows/**`.
- Metadatos internos de Git: `.git/**`.
- Cualquier archivo que contenga credenciales, tokens, claves privadas u otros secretos.

Si una tarea parece requerir cambios protegidos pero no los autoriza de forma explícita, detente y pregunta antes de editar.

## Ubicación del código de producto

Este hito no pide crear aplicaciones nuevas. Cuando una tarea futura las solicite, usa `uis/website/` para la web pública, `uis/backoffice/` para la app interna independiente y `services/` para APIs/backend. Lee el README de cada carpeta antes de añadir código; no inventes un árbol paralelo.

Mantén separadas las herramientas de desarrollo (`.agents/`) del producto (`agents/` y `skills/`).

## Límites

- No inventes decisiones de producto, requisitos legales ni capacidades que el código no implemente.
- Trata HIPAA y UK GDPR como obligaciones distintas; ante una decisión de cumplimiento no documentada, pide revisión humana competente.
- No añadas datos reales de pacientes a código, fixtures, logs, documentación ni commits.
