# Narbacular Drop (2005) Tools

Some tools for working with the files and formats from Narbacular Drop (2005).

The Python tools require the [Kaitai Struct Python Runtime](https://github.com/kaitai-io/kaitai_struct_python_runtime).

## Directory

- [`csg`](/csg/): Stefan Hajnoczi's CMF compiler modified for Narbacular Drop.
(note: currently only compiles for Windows)
- [`formats`](/formats/): Kaitai Struct definitions for Narbacular Drop files.
- [`levels`](/levels/): The original levels converted for use with TrenchBroom.
- [`Narbacular Drop`](/Narbacular Drop/): TrenchBroom configuration for
Narbacular Drop. To use, place this folder in your TrenchBroom games directory.
- [`sprites`](/sprites/): Editor sprites for use with TrenchBroom.
- [`tools`](/tools/): Various Python tools for working with Narbacular Drop.
- [`wads`](/wads/): WAD files for use with TrenchBroom.

## Notes

- The "CMF" level format was directly taken from Stefan Hajnoczi's ".MAP Files"
article from which is hosted [here](https://github.com/stefanha/map-files/).
- The "ORE" archive format used to store the game's assets seems to have been
created specifically for this engine.

## License

MIT License

Copyright (c) 2024 erysdren (it/its)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
