# Contributing Guidelines

Thank you for contributing to RaptorDB! To maintain code quality and repository cleanliness, please adhere to these guidelines.

## Development Setup

### Prerequisites
- **Go**: Version 1.23 or higher
- **golangci-lint**: [Installation Guide](https://golangci-lint.run/welcome/install/)
- **pre-commit**: [Installation Guide](https://pre-commit.com/#install)

### Setup Hooks
After cloning the repository, install the git hooks by running:
```bash
pre-commit install
```
This ensures linting, formatting, and file-checks run automatically on every commit.

---

## Git Workflow & Branching

- Create a feature or chore branch from the latest `main` branch.
- Use descriptive branch prefixes matching your change type:
  - `feat/` for new features
  - `fix/` for bug fixes
  - `docs/` for documentation
  - `chore/` for build setups/dependency updates
  - `perf/` for performance improvements
  - `refactor/` for code refactoring
  - `test/` for testing additions/fixes

---

## Commit Message Guidelines

We enforce the **Conventional Commits** specification. Commit messages must follow this structure:

```text
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

### Commit Types
- **feat**: A new feature
- **fix**: A bug fix
- **docs**: Documentation only changes
- **style**: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
- **refactor**: A code change that neither fixes a bug nor adds a feature
- **perf**: A code change that improves performance
- **test**: Adding missing tests or correcting existing tests
- **build**: Changes that affect the build system or external dependencies (example scopes: make, docker, go-deps)
- **ci**: Changes to our CI configuration files and scripts (example scopes: github-actions)
- **chore**: Other changes that don't modify src or test files

### Example Commit Messages
```text
feat(storage): implement page serialization and header parsing
```
```text
fix(parser): resolve syntax error when parsing multi-join statements
```
```text
chore(deps): update dependency golang.org/x/sys
```

---

## Code Verification
Before submitting a Pull Request, verify your changes compile, are formatted correctly, and pass the linters:

```bash
# Format code
make fmt

# Run linters
make lint

# Run all unit tests
make test

# Verify successful compilation
make build
```
