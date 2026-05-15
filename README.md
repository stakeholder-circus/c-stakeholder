> [!WARNING]
> This repository is AI-assisted and manually reviewed. It is local-only in the next-20 deterministic sprint.

# c-stakeholder

C implementation of the stakeholder deterministic first tranche.

## Current tranche

- Full dedicated `classic-six + modern-core` generator families.
- Grouped fallback for later generator families.
- Deterministic normalized JSON with same-seed stability.
- `--list-values`, `--focus-family`, `--output-format`, `--seed`, and explicit `--experimental-provider` fail-fast.
- Full live-provider/runtime support remains deferred to the later provider wave.

## Commands

- `python3 scripts/validate_scaffold.py`
- `make compiler-proof`
- `make test`
- `./build/c-stakeholder --list-values`
- `./build/c-stakeholder --output-format json --focus-family code_analyzer --seed 123`
- `docker build -t c-stakeholder .`
