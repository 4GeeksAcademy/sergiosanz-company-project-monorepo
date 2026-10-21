# Estado y próximos pasos

## Estado actual

- El hito de sitio público tiene una implementación estática inicial en `uis/website/`, con landing page, formulario y validación en navegador. Su conformidad total con cada requisito del briefing debe comprobarse antes de darla por aceptada.
- El hito de infraestructura de agentes está en la rama `feat/ai-driven-engineering-setup` y su PR está abierta para revisión. Esta actualización alinea el banco de memoria con los nombres y criterios del encargo.
- No hay API ejecutable en `services/` ni un comando global de tests en la raíz.

## Próximos pasos

1. Revisar y completar los cambios de infraestructura de agentes en la PR; actualizar este estado al resolverse.
2. Mantener este archivo al día cuando cambien los hitos, las decisiones técnicas o el estado de revisión.
3. Para trabajo de aplicación futuro, confirmar primero el alcance y seguir `techContext.md` y los README de las carpetas propietarias. No crear aplicaciones nuevas como parte del hito de infraestructura.

## Verificación pendiente

- Ejecutar una revisión de aceptación de la web contra `healthcore-BRIEFING.es.md`; no se declara completa solo por existir una implementación.
- Los tests de cada app/servicio deben documentarse donde se incorporen; hoy no existe una suite global.