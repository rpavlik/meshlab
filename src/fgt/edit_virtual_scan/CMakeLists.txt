# Copyright 2019 Collabora, Ltd.
# SPDX-License-Identifier: BSL-1.0

### Generated file! Edit the templates in src/templates then re-run ./make-cmake.py

set(SOURCES edit_virtual_scan_factory.cpp edit_virtual_scan_plugin.cpp
            edit_vs_widget.cpp)

set(HEADERS
    edit_virtual_scan_factory.h
    edit_virtual_scan_plugin.h
    edit_vs_widget.h
    my_gl_widget.h
    vs/povs_generator.h
    vs/resources.h
    vs/sampler.h
    vs/simple_renderer.h
    vs/stages.h
    vs/utils.h)

set(RESOURCES edit_virtual_scan.qrc)

add_library(edit_virtual_scan MODULE ${SOURCES} ${HEADERS} ${RESOURCES})

target_include_directories(edit_virtual_scan
                           PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(edit_virtual_scan PUBLIC common)

set_property(TARGET edit_virtual_scan PROPERTY RUNTIME_OUTPUT_DIRECTORY
                                               ${MESHLAB_PLUGIN_OUTPUT_DIR})

set_property(TARGET edit_virtual_scan PROPERTY LIBRARY_OUTPUT_DIRECTORY
                                               ${MESHLAB_PLUGIN_OUTPUT_DIR})

install(TARGETS edit_virtual_scan DESTINATION ${MESHLAB_PLUGIN_INSTALL_DIR}
                COMPONENT Plugins)
