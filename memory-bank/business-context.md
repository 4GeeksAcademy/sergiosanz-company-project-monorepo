# Contexto de negocio: HealthCore

## Fuente de verdad

El briefing completo está en [`CONTEXT.md`](../CONTEXT.md) y [`CONTEXT.es.md`](../CONTEXT.es.md). Consulta esos documentos cuando necesites detalle; este resumen mantiene el contexto operativo a mano para los agentes.

## Empresa y objetivo

HealthCore es una empresa de atención sanitaria ambulatoria fundada en 2011 en Austin. Opera 12 clínicas en Estados Unidos y el Reino Unido, emplea aproximadamente a 200 personas y factura alrededor de 28 millones de dólares al año. HealthCore Digital, liderada por el CTO James Osei, construye sistemas para que la empresa opere de forma segura, eficiente y centrada en el paciente.

La red abarca dos jurisdicciones, con sistemas clínicos y operativos fragmentados. El trabajo de ingeniería debe mejorar la coordinación y la visibilidad sin tratar los datos sanitarios como datos ordinarios.

## Problemas prioritarios

- **Operaciones clínicas:** dos sistemas EHR que no comparten historias; documentación administrativa que ocupa unos 35 minutos diarios por clínico.
- **Acceso del paciente:** no existe reserva online unificada y la tasa de inasistencia ronda el 22%.
- **Facturación:** la tasa de rechazo de reclamaciones en EE.UU. es del 14%; la facturación del Reino Unido se gestiona por separado.
- **Cumplimiento:** aplican HIPAA en EE.UU. y UK GDPR en el Reino Unido; las pistas de auditoría están fragmentadas.
- **Personas:** la contratación clínica tarda una media de 47 días y la formación CME se sigue manualmente.
- **Dirección:** los informes tienen formatos distintos y llegan con retraso, dificultando una visión operativa unificada.

## Invariantes de producto

- Protege la privacidad y seguridad de pacientes y plantilla; usa solo datos sintéticos o debidamente anonimizados en desarrollo, ejemplos y pruebas.
- No presentes una sugerencia de IA como diagnóstico, decisión clínica, determinación de cobertura o asesoramiento legal autónomo.
- No afirmes que una solución cumple HIPAA o UK GDPR sin evidencia y revisión apropiadas.
- Conserva la distinción entre las operaciones de EE.UU. y Reino Unido cuando una funcionalidad dependa de jurisdicción.
