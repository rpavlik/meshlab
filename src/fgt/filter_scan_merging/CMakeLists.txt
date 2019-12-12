# Copyright 2019 Collabora, Ltd.
# SPDX-License-Identifier: BSL-1.0

### Generated file! Edit the templates in src/templates then re-run ./make-cmake.py

set(SOURCES filter_scan_merging.cpp)

set(HEADERS filter_scan_merging.h)

add_library(filter_scan_merging MODULE ${SOURCES} ${HEADERS})

target_include_directories(filter_scan_merging
                           PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(filter_scan_merging PUBLIC common)

set_property(TARGET filter_scan_merging PROPERTY RUNTIME_OUTPUT_DIRECTORY
                                                 ${MESHLAB_PLUGIN_OUTPUT_DIR})

set_property(TARGET filter_scan_merging PROPERTY LIBRARY_OUTPUT_DIRECTORY
                                                 ${MESHLAB_PLUGIN_OUTPUT_DIR})

install(TARGETS filter_scan_merging DESTINATION ${MESHLAB_PLUGIN_INSTALL_DIR}
                COMPONENT Plugins)
