# Copyright 2019 Collabora, Ltd.
# SPDX-License-Identifier: BSL-1.0

### Generated file! Edit the templates in src/templates then re-run ./make-cmake.py

set(SOURCES filter_waffle.cpp)

set(HEADERS export_svg.h filter_waffle.h filter_waffle_functors.h)

add_library(filter_waffle MODULE ${SOURCES} ${HEADERS})

target_include_directories(filter_waffle PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(filter_waffle PUBLIC common)

set_property(TARGET filter_waffle PROPERTY RUNTIME_OUTPUT_DIRECTORY
                                           ${MESHLAB_PLUGIN_OUTPUT_DIR})

set_property(TARGET filter_waffle PROPERTY LIBRARY_OUTPUT_DIRECTORY
                                           ${MESHLAB_PLUGIN_OUTPUT_DIR})

install(TARGETS filter_waffle DESTINATION ${MESHLAB_PLUGIN_INSTALL_DIR}
                COMPONENT Plugins)
