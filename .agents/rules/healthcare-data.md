# Regla: datos sanitarios y privacidad

**Alcance:** aplicar a código, pruebas, documentación, logs, datasets y decisiones que puedan afectar a pacientes, empleados o datos sanitarios.

- No incluyas PHI/PII real, credenciales, tokens ni secretos en el repositorio, prompts, fixtures, capturas, ejemplos o logs. Usa datos sintéticos; anonimiza solo cuando esté autorizado y sea suficiente.
- Minimiza los datos recogidos, mostrados, almacenados y enviados a servicios externos. No añadas telemetría de datos personales sin una justificación y revisión explícitas.
- HIPAA (EE.UU.) y UK GDPR (Reino Unido) son marcos distintos. No asumas que una decisión válida en una jurisdicción lo es en la otra.
- No declares cumplimiento legal, seguridad clínica o anonimización como garantizados por una implementación sin evidencia y revisión competentes.
- Las salidas de IA relacionadas con atención, codificación o cobertura requieren supervisión humana; no las conviertas en decisiones autónomas.
- Si una solicitud requiere datos reales, una transferencia transfronteriza o una decisión de cumplimiento no documentada, detente y solicita aprobación/revisión antes de implementarla.
