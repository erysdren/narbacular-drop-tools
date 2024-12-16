cmake_minimum_required(VERSION 3.15)
project(narbacular-drop-tools LANGUAGES CXX)

add_executable(csg
	${PROJECT_SOURCE_DIR}/csg/brush.cpp
	${PROJECT_SOURCE_DIR}/csg/csg.cpp
	${PROJECT_SOURCE_DIR}/csg/entity.cpp
	${PROJECT_SOURCE_DIR}/csg/face.cpp
	${PROJECT_SOURCE_DIR}/csg/map.cpp
	${PROJECT_SOURCE_DIR}/csg/poly.cpp
	${PROJECT_SOURCE_DIR}/csg/property.cpp
	${PROJECT_SOURCE_DIR}/csg/texture.cpp
	${PROJECT_SOURCE_DIR}/csg/WAD3.cpp
)

set_property(TARGET csg PROPERTY CXX_STANDARD 98)
