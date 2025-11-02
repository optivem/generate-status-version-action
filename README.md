# Generate Status Version Action

[![Test Action](https://github.com/optivem/generate-status-version-action/actions/workflows/test.yml/badge.svg)](https://github.com/optivem/generate-status-version-action/actions/workflows/test.yml)
[![Release](https://github.com/optivem/generate-status-version-action/actions/workflows/release.yml/badge.svg)](https://github.com/optivem/generate-status-version-action/actions/workflows/release.yml)

A GitHub Action that generates a version string by appending environment and status to a base version. This is useful for creating unique version identifiers for deployments across different environments.

## Usage

```yaml
- name: Generate Status Version
  id: version
  uses: optivem/generate-status-version-action@v1
  with:
    version: 'v1.0.4-rc'
    environment: 'staging'
    status: 'deployed'

- name: Use generated version
  run: echo "Generated version: ${{ steps.version.outputs.version }}"
```

## Inputs

| Input | Description | Required | Example |
|-------|-------------|----------|---------|
| `version` | Base version to build from | Yes | `v1.0.4-rc` |
| `environment` | Environment name | Yes | `qa`, `staging`, `prod` |
| `status` | Status indicator | Yes | `deployed`, `passed`, `failed` |

## Outputs

| Output | Description | Example |
|--------|-------------|---------|
| `version` | Generated version string | `v1.0.4-rc-staging-deployed` |

## Examples

### Basic Usage

```yaml
steps:
  - uses: optivem/generate-status-version-action@v1
    with:
      version: 'v2.1.0'
      environment: 'production'
      status: 'deployed'
```

### CI/CD Pipeline Integration

```yaml
name: Deploy Application
on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      
      - name: Generate deployment version
        id: version
        uses: optivem/generate-status-version-action@v1
        with:
          version: ${{ github.ref_name }}
          environment: 'production'
          status: 'deployed'
      
      - name: Tag release
        run: |
          git tag ${{ steps.version.outputs.version }}
          git push origin ${{ steps.version.outputs.version }}
```

### Multiple Environment Deployment

```yaml
strategy:
  matrix:
    environment: [qa, staging, production]
    
steps:
  - name: Generate version for ${{ matrix.environment }}
    id: version
    uses: optivem/generate-status-version-action@v1
    with:
      version: ${{ github.sha }}
      environment: ${{ matrix.environment }}
      status: 'deployed'
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
