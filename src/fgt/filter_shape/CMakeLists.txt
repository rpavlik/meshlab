# Copyright 2019 Collabora, Ltd.
# SPDX-License-Identifier: BSL-1.0

### Generated file! Edit the templates in src/templates then re-run ./make-cmake.py

set(SOURCES filter_shape.cpp)

set(HEADERS archimedean.h extrude.h filter_shape.h knot.h platonic.h)

add_library(filter_shape MODULE ${SOURCES} ${HEADERS})

target_include_directories(filter_shape PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(filter_shape PUBLIC common)

set_property(TARGET filter_shape PROPERTY RUNTIME_OUTPUT_DIRECTORY
                                          ${MESHLAB_PLUGIN_OUTPUT_DIR})

set_property(TARGET filter_shape PROPERTY LIBRARY_OUTPUT_DIRECTORY
                                          ${MESHLAB_PLUGIN_OUTPUT_DIR})

install(TARGETS filter_shape DESTINATION ${MESHLAB_PLUGIN_INSTALL_DIR}
                COMPONENT Plugins)
