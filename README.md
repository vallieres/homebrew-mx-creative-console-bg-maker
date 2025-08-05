# Homebrew MX Creative Console Background Maker

A Homebrew tap for installing the MX Creative Console Background Maker - a
command-line tool that splits images into a 3x3 grid for the Logitech MX
Creative Console.

## About the Tool

MX Creative Console Background Maker (`ccbm`) processes images to create custom
backgrounds for the Logitech MX Creative Console by:

- Resizing images to 378x378px while maintaining aspect ratio
- Intelligently resizing based on the largest dimension
- Cropping from the center to preserve image focus
- Splitting into 9 equal tiles with proper spacing
- Supporting JPEG and PNG input formats
- Outputting individual tiles as PNG files

## Installation

First, add this tap to your Homebrew:

```bash
brew tap vallieres/mx-creative-console-bg-maker
```

Then install the formula:

```bash
brew install mx-creative-console-bg-maker
```

## Usage

After installation, you can use the tool with:

```bash
ccbm <image_path>
```

The tool will create 9 PNG files in the same directory as the input image, named
with the format `originalname_1.png` through `originalname_9.png`.

## Updating

To update to the latest version:

```bash
brew update
brew upgrade mx-creative-console-bg-maker
```

## Uninstalling

To remove the formula:

```bash
brew uninstall mx-creative-console-bg-maker
```

To remove the tap:

```bash
brew untap vallieres/mx-creative-console-bg-maker
```

## Issues

If you encounter any issues, please report them on the
[main project repository](https://github.com/vallieres/mx-creative-console-bg-maker/issues).

## Contributing

Contributions are welcome! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for
guidelines.
