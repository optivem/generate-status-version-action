# Contributing to Generate Status Version Action

Thank you for your interest in contributing to this GitHub Action! We welcome contributions from the community.

## Getting Started

1. Fork this repository
2. Clone your fork locally
3. Create a new branch for your feature or bug fix
4. Make your changes
5. Test your changes
6. Submit a pull request

## Development Setup

This action is built using:
- PowerShell Core (cross-platform)
- GitHub Actions composite action format
- YAML configuration

### Local Testing

To test the PowerShell script locally:

```powershell
.\Generate-StatusVersion.ps1 -BaseVersion "v1.0.0" -Environment "test" -Status "local"
```

### GitHub Actions Testing

The repository includes automated tests in `.github/workflows/test.yml` that will run on:
- Ubuntu (Linux)
- Windows
- Multiple input combinations

## Code Style

- Use clear, descriptive variable names
- Add comments for complex logic
- Follow PowerShell best practices
- Maintain backward compatibility when possible

## Submitting Changes

1. Ensure all tests pass
2. Update documentation if needed
3. Update CHANGELOG.md with your changes
4. Create a pull request with a clear description

### Pull Request Guidelines

- Use a clear and descriptive title
- Include a detailed description of your changes
- Reference any related issues
- Ensure tests pass
- Update documentation as needed

## Reporting Issues

When reporting issues, please include:
- GitHub Actions runner OS (ubuntu-latest, windows-latest, etc.)
- Input values used
- Expected vs actual output
- Full error messages if any

## Feature Requests

We welcome feature requests! Please:
- Check if the feature already exists
- Describe the use case clearly
- Provide examples of how it would be used

## Questions?

Feel free to open an issue for questions about contributing or using this action.

Thank you for contributing! 🎉