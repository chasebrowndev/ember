# Contributing to Ember

Thanks for considering contributing! Please read this first.

## Scope

Ember is a **terminal emulator**. Not a command runner, not a dashboard, not a workflow orchestrator.

### We accept:
- Bug fixes
- Performance improvements
- UI refinements (in the terminal aesthetic)
- New color themes
- Configuration options
- Documentation improvements
- Keyboard shortcut additions

### We don't accept:
- New major features (plugins, multi-pane splits, file browser, scripting engine)
- Breaking changes to the config format
- Dependencies beyond pywebview
- Anything that bloats the codebase or scope

If you have a feature idea, **open an issue first** to discuss whether it fits the project philosophy.

## Process

1. Fork the repo
2. Create a branch: `git checkout -b feature/my-feature`
3. Keep commits clean and minimal
4. Test locally with `./ember`
5. Submit a PR with a clear description

## Code Style

- Python: PEP 8, keep it simple
- JavaScript/HTML: Minimal, readable, no frameworks
- Comments: Only where logic is non-obvious

## Testing

Before submitting:
- Test on your system
- Verify config file loading/saving works
- Check that commands execute properly
- Ensure no console errors (check browser dev tools)

## Philosophy

Keep it focused. Keep it fast. Keep it small.
