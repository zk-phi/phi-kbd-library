# phi-kbd KiCAD library

zk-phi's keyboard library for KiCAD.

## Installation

- symbols

  Use the symbol library editor to add `phi-kbd.lib`.

- footprints

  Use footprint library manager, found in the footprint editor > settings, to add `phi-kbd.pretty`.

- 3d previews

  Load an arbitrary footprint and open footprint property > 3D configurations > configure path, then you'll find a directory pathed as `${KISYS3DMOD}`. Open a terminal and `cd` to the directory, then symlink `phi-kbd.3dshapes`.

  ```shell
  cd /path/to/packages3d
  ln -s /path/to/phi-kbd-library/phi-kbd.3dshapes
  ```

## Note

Footprints start with `_` are NOT recommended for some reasons.

- smaller pads than the datasheet spec (to workaround the design rules)
- not officially supported by KiCAD, but created with a texteditor

Some untested, WIP footprints are stored in the work branch.

## For developers:
### How to add 3d previews

I currently add 3d previews as follows:

- Model it with OpenSCAD
- Import to FreeCAD with OpenSCAD Workbench and export as `.STEP with colors`
  - Note that the directory name is exported to the .step file too
  - You should not use private informations for the path/to/*.scad models

## License

Some parts of this library are based on following libraries:

- `kbd` by @foostan (licensed under the MIT license)
- `SMKJP_kicad_components` by @hsgw (licensed under the CC-BY-SA 4.0 license)
- `KiCAD_FootPrint` by @Salicylic-acid3 (licensed under the MIT license)
- `qmk_hardware` by @qmk (licensed under the GPL 3.0 license)

This library is distributed under the GPL 3.0.
