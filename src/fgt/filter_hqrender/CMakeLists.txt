# Copyright 2019 Collabora, Ltd.
# SPDX-License-Identifier: BSL-1.0

### Generated file! Edit the templates in src/templates then re-run ./make-cmake.py

set(SOURCES RibFileStack.cpp filter_hqrender.cpp parser_rib.cpp
            utilities_hqrender.cpp)

set(HEADERS
    RibFileStack.h
    export_rib.h
    filter_hqrender.h
    render_template/cameraRotation/Shaders/MOSAICfunctions.h
    render_template/default/Shaders/MOSAICfunctions.h
    render_template/lightRotation/Shaders/MOSAICfunctions.h
    render_template/meshRotation/Shaders/MOSAICfunctions.h
    render_template/meshScale/Shaders/MOSAICfunctions.h
    render_template/museum/Shaders/MOSAICfunctions.h
    render_template/onlyMesh/Shaders/MOSAICfunctions.h
    render_template/room/Shaders/MOSAICfunctions.h
    render_template/topView/Shaders/MOSAICfunctions.h
    render_template/topViewLight/Shaders/MOSAICfunctions.h
    ribProcedure.h
    utilities_hqrender.h)

add_library(filter_hqrender MODULE ${SOURCES} ${HEADERS})

target_include_directories(filter_hqrender PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(filter_hqrender PUBLIC common)

set_property(TARGET filter_hqrender PROPERTY RUNTIME_OUTPUT_DIRECTORY
                                             ${MESHLAB_PLUGIN_OUTPUT_DIR})

set_property(TARGET filter_hqrender PROPERTY LIBRARY_OUTPUT_DIRECTORY
                                             ${MESHLAB_PLUGIN_OUTPUT_DIR})

install(TARGETS filter_hqrender DESTINATION ${MESHLAB_PLUGIN_INSTALL_DIR}
                COMPONENT Plugins)
