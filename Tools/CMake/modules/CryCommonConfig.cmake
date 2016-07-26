
find_package(boost REQUIRED)
find_package(yasli REQUIRED)

add_library(CryCommon INTERFACE IMPORTED)

set (CRYENGINE_SOURCE_DIR "${CMAKE_CURRENT_LIST_DIR}/../../..")

set_property(TARGET CryCommon PROPERTY INTERFACE_INCLUDE_DIRECTORIES
	"${CRYENGINE_SOURCE_DIR}/Code/CryEngine/CryCommon"
)

set_property(TARGET CryCommon PROPERTY INTERFACE_LINK_LIBRARIES boost yasli)