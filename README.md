# MiniPicoLisp
[MiniPicoLisp] is a reduced 32-bit [PicoLisp] especially suitable for embedded
systems. It is a minimal version, without support for databases, UTF-8,
bignums, IPC, networking and other system-dependent functions.
A kind of "pure" PicoLisp (not "pure Lisp"!).

For more details on the implementation, see [MiniPicoLisp Code in ROM].

## Building

To build requires GNU Make and the GNU C compiler.
Just `cd src` and then `make`. That will produce a `bin/minipicolisp`,
which can be called by the `mpil` wrapper script.
Alternatively, if you have Nix, just run `$ nix-build`.


## Changes from Upstream

This repository was forked from [8l's repo] and tracks the
[upstream tarball] from picolisp.com with a few changes:

- Rename `bin/picolisp` to `bin/minipicolisp` to make clear the
  difference from standard PicoLisp.
- Rename `pil` to `mpil` for the same reason.
- Added [Nix] development environment (enter using `$ nix-shell`).
- Added Nix package (build using `$ nix-build`).

[MiniPicoLisp]: https://picolisp.com/wiki/?embedded
[PicoLisp]: https://picolisp.com
[MiniPicoLisp Code in ROM]: https://picolisp.com/wiki/?miniCodeROM
[8l's repo]: https://www.github.com/8l/miniPicoLisp
[upstream tarball]: https://software-lab.de/miniPicoLisp.tgz
