# OCaml Exercises

This repo contains my attempts at some basic OCaml exercises from the [OCaml documentation](https://ocaml.org/exercises).

It's also my first experience using OCaml, so below is some simple information for me to remember how to do the basics.

## Usage

```sh
# To run the main executable
dune exec ocaml-exercises
dune build
# The `-w` flag can also be used to watch either

# To run inline tests
dune test # Or dune runtest
```

## Environment Setup

The project environment was initially setup with an opam switch and dune.

```sh
opam switch list-available # To find the latest OCaml compiler version
opam switch create . 5.3.0 # Use the latest available compiler unless we care otherwise
opam install ocaml-lsp-server odoc ocamlformat utop # The basics

dune init proj ocaml-exercises .

# How do I know what dependencies to install if e.g. I cloned this repo?

# For inline test support
opam install ppx_inline_test
```
