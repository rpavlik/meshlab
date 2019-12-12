# Copyright 2019 Collabora, Ltd.
# SPDX-License-Identifier: BSL-1.0

### Generated file! Edit the templates in src/templates then re-run ./make-cmake.py

set(SOURCES filter_gears.cpp)

set(HEADERS filter_gears.h spur.h)

set(RESOURCES filter_gears.qrc)

add_library(filter_gears MODULE ${SOURCES} ${HEADERS} ${RESOURCES})

target_include_directories(filter_gears PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(filter_gears PUBLIC common)

set_property(TARGET filter_gears PROPERTY RUNTIME_OUTPUT_DIRECTORY
                                          ${MESHLAB_PLUGIN_OUTPUT_DIR})

set_property(TARGET filter_gears PROPERTY LIBRARY_OUTPUT_DIRECTORY
                                          ${MESHLAB_PLUGIN_OUTPUT_DIR})

install(TARGETS filter_gears DESTINATION ${MESHLAB_PLUGIN_INSTALL_DIR}
                COMPONENT Plugins)
