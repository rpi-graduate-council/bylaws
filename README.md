# Union Governing Document

This repository contains the LaTeX source for a Union governing document.

## Getting Started

Clone the repository with its submodules:

```sh
git clone --recurse-submodules <repo-url>
```

If you already cloned the repository without submodules, run:

```sh
git submodule update --init --recursive
```

When updating an existing checkout, use:

```sh
git pull --recurse-submodules
git submodule update --init --recursive
```

The `union-docs-common` directory is a submodule, so it is pinned to the version expected by this repository.

## Building

Install a LaTeX distribution with `latexmk` and LuaLaTeX, then run:

```sh
latexmk <document>.tex
```

Each top-level `.tex` file compiles to a matching PDF in `build/`. Generated PDFs and temporary files are ignored by Git.

`latexmk` automatically runs LaTeX as many times as needed for generated content such as the table of contents.

The root `.latexmkrc` loads the shared build settings from `union-docs-common/.latexmkrc`.

In VS Code, install LaTeX Workshop and use the normal build button. The root file should use LaTeX Workshop's built-in `latexmk (lualatex)` recipe, so no repository VS Code settings are needed.

To remove temporary build files while keeping the PDF for a specific root, run:

```sh
latexmk -c <document>.tex
```

To remove the PDF and temporary build files for a specific root, run:

```sh
latexmk -C <document>.tex
```
