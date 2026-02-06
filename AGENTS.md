# Documentation Guidelines

This project follows strict documentation guidelines to ensure code is maintainable and understandable for both humans and LLMs.

## Philosophy
- **Essentialism:** Only write necessary comments.
- **Value-Driven:** Focus on non-obvious details.
- **Onboarding-Friendly:** Teach the reader.
- **Source of Truth:** Ensure docs match current code.

## Rules
- Use standard JSDoc/TSDoc format (`/** ... */`).
- Avoid line comments (`//`) unless inside function bodies for specific instructions.
- **NO OBVIOUS COMMENTS:** Do not say "Returns user" for `getUser`. Say "Retrieves cached user, fallback to DB".

## Avoid
- Redundant typing info.
- "To Do" comments (unless asked).
- Ghost comments (commented-out code).
- Verbose getters/setters descriptions.
