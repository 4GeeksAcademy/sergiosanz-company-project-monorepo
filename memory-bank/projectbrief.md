# Project brief: HealthCore

## Fuentes de verdad

- [`healthcore-BRIEFING.es.md`](../healthcore-BRIEFING.es.md) contiene el encargo específico del hito y los requisitos de la web pública.
- [`CONTEXT.es.md`](../CONTEXT.es.md) y [`CONTEXT.md`](../CONTEXT.md) contienen el contexto amplio de la empresa.
- Si este resumen difiere de esos documentos, prevalece el briefing específico para el hito de web y el contexto de empresa para los datos generales.

## Empresa y problema

HealthCore es una empresa de atención sanitaria ambulatoria fundada en 2011 en Austin, con 12 clínicas en EE.UU. y el Reino Unido, unos 200 empleados e ingresos anuales aproximados de 28 millones de dólares. Su ventaja es la accesibilidad: citas el mismo día, horarios extendidos y atención bilingüe en sus sedes de EE.UU.

HealthCore Digital construye la infraestructura para los equipos clínicos y operativos. En el hito de web, Priya Nair (Experiencia del Paciente) necesita reemplazar una presencia web de marcador de posición, poco creíble y sin SSL, y reducir el tiempo de recepción dedicado a recopilar datos básicos por teléfono (unos 20 minutos por llamada).

## Objetivo del hito actual

Entregar una web pública profesional en inglés y español que presente HealthCore, sus servicios y las ubicaciones de EE.UU., y permita enviar una consulta estructurada para que recepción contacte al paciente. El formulario es de consulta, **no reserva una cita**; su envío es simulado y no debe transmitir ni almacenar la información.

El contenido, los nombres de clínicas, teléfonos, servicios, campos, validaciones y textos deben seguir exactamente el briefing. No inventes contenido. Las clínicas del Reino Unido son un mercado independiente y no se muestran en las ubicaciones de esta web. Incluye la nota de asociaciones para proveedores indicada en el briefing.

## Restricciones de dominio

- Mantén la experiencia disponible en inglés y español, incluyendo etiquetas, errores, placeholders y confirmaciones.
- No presentes sugerencias de IA como decisiones clínicas, de cobertura o legales autónomas.
- No afirmes cumplimiento HIPAA o UK GDPR sin evidencia y revisión competente.
- Usa únicamente datos sintéticos en ejemplos y pruebas; no introduzcas datos identificables de pacientes.

El hito de configuración de agentes no solicita crear aplicaciones nuevas. Consulta `progress.md` para el estado actual y los próximos pasos.