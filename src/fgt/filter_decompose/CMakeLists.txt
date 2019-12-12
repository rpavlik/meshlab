# Copyright 2019 Collabora, Ltd.
# SPDX-License-Identifier: BSL-1.0

### Generated file! Edit the templates in src/templates then re-run ./make-cmake.py

set(SOURCES filter_decomposer.cpp ${EXTERNAL_DIR}/maxflow-v2.21.src/adjacency_list/maxflow.cpp ${EXTERNAL_DIR}/maxflow-v2.21.src/adjacency_list/graph.cpp ${VCGDIR}/wrap/ply/plylib.cpp)

set(HEADERS filter_decomposer.h graph_builder.h)

add_library(filter_decompose MODULE ${SOURCES} ${HEADERS})

target_include_directories(filter_decompose PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(filter_decompose PUBLIC common)

target_include_directories(filter_decompose PRIVATE ${EXTERNAL_DIR}/maxflow-v2.21.src)

set_property(TARGET filter_decompose PROPERTY RUNTIME_OUTPUT_DIRECTORY
                                              ${MESHLAB_PLUGIN_OUTPUT_DIR})

set_property(TARGET filter_decompose PROPERTY LIBRARY_OUTPUT_DIRECTORY
                                              ${MESHLAB_PLUGIN_OUTPUT_DIR})

install(TARGETS filter_decompose DESTINATION ${MESHLAB_PLUGIN_INSTALL_DIR}
                COMPONENT Plugins)
