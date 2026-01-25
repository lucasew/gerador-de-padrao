## 2026-01-25 - Client-Side DoS Protection and Input Sanitization
**Vulnerability:** The application allowed an unbounded number of image repetitions via the `repeticoes` parameter, leading to browser freezing (DoS). Additionally, the `imagem` parameter lacked protocol validation.
**Learning:** User inputs from URL parameters must always be validated before being used in resource-intensive loops or sensitive sinks.
**Prevention:** Enforce strict upper bounds on numeric inputs and sanitize URL schemes.
