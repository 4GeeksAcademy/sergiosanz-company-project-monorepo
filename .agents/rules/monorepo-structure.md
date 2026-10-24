# Regla: estructura del monorepo

**Ámbito de aplicación:** siempre activa en todo el monorepo.

Aplica especialmente al crear o mover aplicaciones, APIs, agentes, skills, datos compartidos o documentación transversal.

- La web pública va en `uis/website/`; la aplicación interna va en `uis/backoffice/`; las APIs y workers van en `services/`.
- Lee el README de la carpeta propietaria antes de añadir archivos y cumple su estructura/documentación local.
- Si se solicita una app futura, la web pública debe servir desde `/` y mantener marca y copy del `healthcore-BRIEFING.es.md`; las ubicaciones públicas de ese briefing son solo las clínicas de EE.UU. El backoffice es una app separada, con layout propio y entrada `/` en su propio despliegue. Las APIs/backend viven en `services/`.
- Este hito de infraestructura no solicita crear apps. No añadas una app, scaffold ni frontend/backend alternativo sin una tarea que lo pida.
- No crees árboles alternativos para apps o servicios ni coloques código de producto en la raíz.
- `agents/` y `skills/` contienen capacidades del producto. `.agents/rules/` y `.agents/skills/` configuran agentes de desarrollo; no mezcles sus propósitos.
- `packages/` es para código compartido por consumidores reales. No extraigas abstracciones compartidas por anticipado.
- Distingue el estado implementado de los planes de los README; no documentes como existente una API, automatización o integración que aún no esté en código.
