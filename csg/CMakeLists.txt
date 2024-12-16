project(csg LANGUAGES CXX)

add_executable(csg
	${PROJECT_SOURCE_DIR}/brush.cpp
	${PROJECT_SOURCE_DIR}/csg.cpp
	${PROJECT_SOURCE_DIR}/entity.cpp
	${PROJECT_SOURCE_DIR}/face.cpp
	${PROJECT_SOURCE_DIR}/map.cpp
	${PROJECT_SOURCE_DIR}/poly.cpp
	${PROJECT_SOURCE_DIR}/property.cpp
	${PROJECT_SOURCE_DIR}/texture.cpp
	${PROJECT_SOURCE_DIR}/WAD3.cpp
)

set_property(TARGET csg PROPERTY CXX_STANDARD 98)
