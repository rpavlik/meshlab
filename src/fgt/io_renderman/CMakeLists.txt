# Copyright 2019 Collabora, Ltd.
# SPDX-License-Identifier: BSL-1.0

### Generated file! Edit the templates in src/templates then re-run ./make-cmake.py

set(SOURCES RibFileStack.cpp io_renderman.cpp parser_rib.cpp
            utilities_hqrender.cpp)

set(HEADERS RibFileStack.h export_rib.h io_renderman.h ribProcedure.h
            utilities_hqrender.h)

add_library(io_renderman MODULE ${SOURCES} ${HEADERS})

target_include_directories(io_renderman PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(io_renderman PUBLIC common)

set_property(TARGET io_renderman PROPERTY RUNTIME_OUTPUT_DIRECTORY
                                          ${MESHLAB_PLUGIN_OUTPUT_DIR})

set_property(TARGET io_renderman PROPERTY LIBRARY_OUTPUT_DIRECTORY
                                          ${MESHLAB_PLUGIN_OUTPUT_DIR})

install(TARGETS io_renderman DESTINATION ${MESHLAB_PLUGIN_INSTALL_DIR}
                COMPONENT Plugins)
