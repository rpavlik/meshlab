# Copyright 2019 Collabora, Ltd.
# SPDX-License-Identifier: BSL-1.0

### Generated file! Edit the templates in src/templates then re-run ./make-cmake.py

set(SOURCES edit_topo.cpp edit_topo_factory.cpp edit_topodialog.cpp)

set(HEADERS edit_topo.h edit_topo_factory.h edit_topodialog.h
            edit_topomeshbuilder.h)

set(RESOURCES edit_topo.qrc)

set(UI edit_topodialog.ui)

add_library(edit_topo MODULE ${SOURCES} ${HEADERS} ${RESOURCES} ${UI})

target_include_directories(edit_topo PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(edit_topo PUBLIC common)

set_property(TARGET edit_topo PROPERTY RUNTIME_OUTPUT_DIRECTORY
                                       ${MESHLAB_PLUGIN_OUTPUT_DIR})

set_property(TARGET edit_topo PROPERTY LIBRARY_OUTPUT_DIRECTORY
                                       ${MESHLAB_PLUGIN_OUTPUT_DIR})

install(TARGETS edit_topo DESTINATION ${MESHLAB_PLUGIN_INSTALL_DIR} COMPONENT
                Plugins)
