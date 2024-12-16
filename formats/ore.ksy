meta:
  id: ore
  file-extension: ore
  endian: le
  bit-endian: le

seq:
  - id: header_size
    type: s4
  - id: num_directories
    type: s4
  - id: directories
    type: directory
    repeat: expr
    repeat-expr: num_directories
  - id: num_loose_files
    type: s4
  - id: loose_files
    type: loose_file
    repeat: expr
    repeat-expr: num_loose_files

types:

  file:
    seq:
      - id: name
        type: strz
        encoding: ascii
      - id: offset
        type: s4
      - id: size
        type: s4
    instances:
      data:
        pos: _parent._parent.offset + offset + 8
        size: size

  file_list:
    seq:
      - id: signature
        type: s8
        valid: 8
      - id: num_files
        type: s4
      - id: files
        type: file
        repeat: expr
        repeat-expr: num_files

  directory:
    seq:
      - id: name
        type: strz
        encoding: ascii
      - id: offset
        type: s4
    instances:
      file_list:
        type: file_list
        pos: offset

  loose_file:
    seq:
      - id: name
        type: strz
        encoding: ascii
      - id: offset
        type: s4
      - id: size
        type: s4
    instances:
      data:
        pos: _root.header_size + offset
        size: size
