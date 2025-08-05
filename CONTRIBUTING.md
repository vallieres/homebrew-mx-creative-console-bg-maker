# Contributing to homebrew-mx-creative-console-bg-maker

Thank you for your interest in contributing to this Homebrew tap! Here are some
guidelines to help you get started.

## How to Contribute

### Reporting Issues

If you encounter a problem with the formula:

1. Check if the issue already exists in the
   [Issues](https://github.com/vallieres/homebrew-mx-creative-console-bg-maker/issues)
   section
1. If not, create a new issue with:
   - Clear description of the problem
   - Steps to reproduce
   - Your system information (macOS version, Homebrew version)
   - Error messages or logs

### Submitting Changes

1. Fork the repository
1. Create a feature branch: `git checkout -b feature-name`
1. Make your changes
1. Test the formula locally:
   ```bash
   brew install --build-from-source ./Formula/mx-creative-console-bg-maker.rb
   ```
1. Commit your changes with a clear commit message
1. Push to your fork and submit a pull request

## Formula Guidelines

### Testing Formula Changes

Before submitting changes to the formula:

1. **Install from source:**

   ```bash
   brew install --build-from-source ./Formula/mx-creative-console-bg-maker.rb
   ```

1. **Test the installation:**

   ```bash
   brew test mx-creative-console-bg-maker
   ```

1. **Verify functionality:**

   ```bash
   mx-creative-console-bg-maker --version
   ```

### Formula Best Practices

- Follow [Homebrew's Formula Cookbook](https://docs.brew.sh/Formula-Cookbook)
- Update the `sha256` hash when changing the version
- Test on multiple macOS versions when possible
- Keep dependencies minimal
- Include meaningful test commands

### Version Updates

When updating the formula version:

1. Update the `url` with the new version tag
1. Calculate and update the `sha256` hash:
   ```bash
   shasum -a 256 /path/to/downloaded/tarball
   ```
1. Test the installation thoroughly
1. Update any version-specific installation steps if needed

## Code of Conduct

Please be respectful and constructive in all interactions. This project follows
the [Contributor Covenant](https://www.contributor-covenant.org/) code of
conduct.

## Questions?

If you have questions about contributing, feel free to:

- Open an issue for discussion
- Contact the maintainer

Thank you for contributing!
