meta:
  id: cmf
  file-extension: cmf
  endian: le
  bit-endian: le

seq:
  - id: magic
    contents: "CMF"
  - id: version
    type: s1
  - id: thing_width
    type: u4
    if: version > 2
  - id: thing_height
    type: u4
    if: version > 2
  - id: thing_data
    size: thing_width * thing_height * 4
    if: version > 2
  - id: num_wads
    type: u4
  - id: num_entities
    type: u4
  - id: num_textures
    type: u4
  - id: wads
    type: strz
    encoding: ascii
    repeat: expr
    repeat-expr: num_wads
  - id: textures
    type: strz
    encoding: ascii
    repeat: expr
    repeat-expr: num_textures
  - id: entities
    type: entity
    repeat: expr
    repeat-expr: num_entities

types:

  property:
    seq:
      - id: name
        type: strz
        encoding: ascii
      - id: value
        type: strz
        encoding: ascii

  vec2:
    seq:
      - id: x
        type: f8
      - id: y
        type: f8

  vec3:
    seq:
      - id: x
        type: f8
      - id: y
        type: f8
      - id: z
        type: f8

  vec4:
    seq:
      - id: x
        type: f8
      - id: y
        type: f8
      - id: z
        type: f8
      - id: w
        type: f8

  vertex:
    seq:
      - id: origin
        type: vec3
      - id: uv
        type: vec2

  polygon:
    seq:
      - id: texture
        type: u4
      - id: plane
        type: vec4
      - id: num_vertices
        type: u4
      - id: vertices
        type: vertex
        repeat: expr
        repeat-expr: num_vertices

  entity:
    seq:
      - id: classname
        type: strz
        encoding: ascii
      - id: num_properties
        type: u4
      - id: properties
        type: property
        repeat: expr
        repeat-expr: num_properties
      - id: num_polygons
        type: u4
      - id: polygons
        type: polygon
        repeat: expr
        repeat-expr: num_polygons
