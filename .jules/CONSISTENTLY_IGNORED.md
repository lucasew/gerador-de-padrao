## IGNORE: Encapsulating global state into classes for simple scripts

**- Pattern:** Wrapping scattered global functions into a single class (e.g., `AppController`) attached to `window`.
**- Justification:** Over-engineers a simple, single-file static HTML application where global functions suffice.
**- Files Affected:** `index.html`

## IGNORE: Introducing heavy Node.js tooling to zero-dependency static projects

**- Pattern:** Adding `package.json`, `npm install`, ESLint, Prettier, and complex CI/CD workflows for linting/formatting.
**- Justification:** Overcomplicates a zero-dependency static HTML project with heavy Node.js infrastructure and build steps.
**- Files Affected:** `package.json`, `package-lock.json`, `.eslintrc.json`, `.prettierrc`, `.github/workflows/autorelease.yml`, `mise.toml`

## IGNORE: Ineffective or overly permissive Client-Side DoS loop limits

**- Pattern:** Addressing unbounded loops by setting arbitrary high maximums (e.g., 5000) or abruptly aborting execution without clamping (e.g., returning an error at 2000).
**- Justification:** Limits like 5000 are still too high and can cause browser freezing. Aborting execution completely instead of clamping provides a poor user experience.
**- Files Affected:** `index.html`, `.jules/sentinel.md`
