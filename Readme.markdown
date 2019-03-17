# phi-kbd KiCAD library

zk-phi's keyboard library for KiCAD.

## Installation

- symbols

  Use the symbol library editor to add `phi-kbd.lib`.

- footprints

  Use footprint library manager, found in the footprint editor > settings to add `phi-kbd.pretty`.

- 3d previews

  Load a footprint then open footprint property > 3D configurations > configure path, and you'll find a directory pathed as `${KISYS3DMOD}`. `cd` to the directory and symlink `phi-kbd.3dshapes`.

  ```shell
  cd /path/to/packages3d
  ln -s /path/to/phi-kbd-library/phi-kbd.3dshapes
  ```

## Note

Footprints start with `_` are NOT officially supported, but created with a texteditor.

## License

Some parts of this library are based on following libraries:

- kbd by foostan (licensed under the MIT license)
- SMKJP_kicad_components by hsgw (licensed under the CC-BY-SA 4.0 license)

This library is distributed under the CC-BY-SA 4.0.
