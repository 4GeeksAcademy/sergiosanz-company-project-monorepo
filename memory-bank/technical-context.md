# Contexto técnico del monorepo

## Estado actual

- Este repositorio es un monorepo de proyecto HealthCore; la guía general está en [`README.es.md`](../README.es.md) y [`README.md`](../README.md).
- `uis/website/` contiene la web pública y el formulario de consulta como HTML y JavaScript estáticos. No hay configuración de build frontend en la raíz.
- `services/` contiene la guía de carpeta, pero todavía no una API implementada. Su README recomienda una API FastAPI centralizada; es una dirección prevista, no código existente.
- `packages/shared/` contiene tipos TypeScript básicos y metadata de paquete. No hay `package.json` en la raíz ni runner de workspace configurado.
- No se encontró un comando global de tests; usa las comprobaciones documentadas por la carpeta o por cada futura aplicación/servicio.

## Mapa de propiedad

| Contenido | Ubicación |
| --- | --- |
| Web pública | `uis/website/` |
| Aplicación interna | `uis/backoffice/` |
| API y workers | `services/` |
| Agentes que forman parte del producto | `agents/` |
| Skills reutilizables del producto | `skills/` |
| Configuración para agentes de desarrollo | `.agents/rules/` y `.agents/skills/` |
| Tipos y código reutilizable entre apps | `packages/` |
| Datos y pipelines | `data/` |

Las carpetas de producto `agents/` y `skills/` no son intercambiables con `.agents/`, que contiene reglas y skills para herramientas de desarrollo. No crees árboles paralelos. Antes de añadir una app, API o skill de producto, lee el README de su carpeta propietaria; cada app o servicio debe documentar su propósito y cómo ejecutarse.

## Convenciones y límites

- Mantén los cambios dentro de la carpeta propietaria y respeta sus instrucciones locales.
- No asumas dependencias, comandos de build, tests o infraestructura que no estén presentes en el repositorio.
- Los tipos compartidos pertenecen a `packages/` solo cuando exista consumo real desde más de una parte del monorepo.
- Si cambia el estado técnico descrito aquí, actualiza este archivo junto con el cambio que lo produjo.
