# Contexto técnico

## Estado comprobado del repositorio

- La web pública existente está en `uis/website/` y usa HTML estático y JavaScript de navegador (`index.html`, `application.html`, `validation.js`).
- La web carga Tailwind CSS y fuentes desde CDN; no hay configuración de build frontend en la raíz.
- `services/` contiene instrucciones, pero todavía no una API ni workers implementados.
- `packages/shared/` contiene tipos TypeScript iniciales y metadata de paquete. No hay `package.json` en la raíz, runner de workspace ni comando global de tests.
- Los README de `uis/`, `services/` y `skills/` definen la propiedad de esas carpetas y deben leerse antes de añadir código allí.

## Ubicación del código de producto

Este mapa aplica cuando una tarea futura solicite código de producto; el hito actual de infraestructura no pide crear aplicaciones nuevas.

- **Web corporativa pública:** `uis/website/`, servida desde la ruta `/`, con marca y contenido alineados con `healthcore-BRIEFING.es.md`. El briefing define una web bilingüe y limita las ubicaciones públicas a las clínicas de EE.UU.
- **Aplicación interna:** `uis/backoffice/`, independiente del sitio público, con layout propio y entrada `/` dentro de su propio despliegue.
- **APIs y backend:** `services/`, sin crear un árbol paralelo.

## Decisiones técnicas vigentes

- Antes de añadir código, lee el README de la carpeta propietaria. Si el subdirectorio de la app todavía no tiene README, sigue las instrucciones de su carpeta padre y documenta objetivo y ejecución al crearla.
- La web actual es estática. El formulario solo simula el envío: no conectarlo a almacenamiento o servicios externos sin un requerimiento y revisión explícitos.
- No asumas dependencias, herramientas de build, infraestructura ni comandos de test que no existan en el repo.
- Actualiza este archivo y `progress.md` cuando cambie el stack implementado o una decisión técnica.