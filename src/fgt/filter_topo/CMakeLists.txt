# Copyright 2019 Collabora, Ltd.
# SPDX-License-Identifier: BSL-1.0

### Generated file! Edit the templates in src/templates then re-run ./make-cmake.py

set(SOURCES filter_topo.cpp)

set(HEADERS filter_topo.h)

add_library(filter_topo MODULE ${SOURCES} ${HEADERS})

target_include_directories(filter_topo PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(filter_topo PUBLIC common)

set_property(TARGET filter_topo PROPERTY RUNTIME_OUTPUT_DIRECTORY
                                         ${MESHLAB_PLUGIN_OUTPUT_DIR})

set_property(TARGET filter_topo PROPERTY LIBRARY_OUTPUT_DIRECTORY
                                         ${MESHLAB_PLUGIN_OUTPUT_DIR})

install(TARGETS filter_topo DESTINATION ${MESHLAB_PLUGIN_INSTALL_DIR} COMPONENT
                Plugins)
