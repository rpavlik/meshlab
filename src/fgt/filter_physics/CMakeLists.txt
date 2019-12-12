# Copyright 2019 Collabora, Ltd.
# SPDX-License-Identifier: BSL-1.0

### Generated file! Edit the templates in src/templates then re-run ./make-cmake.py

set(SOURCES
    DynamicMeshSubFilter.cpp
    GravitySubFilter.cpp
    MeshSubFilter.cpp
    ODEFacade.cpp
    RandomDropFilter.cpp
    RandomFillFilter.cpp
    filter_physics.cpp)

set(HEADERS
    DynamicMeshSubFilter.h
    GravitySubFilter.h
    MeshSubFilter.h
    ODEFacade.h
    PhysicsEngineFacade.h
    RandomDropFilter.h
    RandomFillFilter.h
    filter_physics.h)

add_library(filter_physics MODULE ${SOURCES} ${HEADERS})

target_include_directories(filter_physics PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(filter_physics PUBLIC common)

target_compile_definitions(filter_physics PRIVATE dSINGLE)
target_link_libraries(filter_physics PRIVATE ode)

set_property(TARGET filter_physics PROPERTY RUNTIME_OUTPUT_DIRECTORY
                                            ${MESHLAB_PLUGIN_OUTPUT_DIR})

set_property(TARGET filter_physics PROPERTY LIBRARY_OUTPUT_DIRECTORY
                                            ${MESHLAB_PLUGIN_OUTPUT_DIR})

install(TARGETS filter_physics DESTINATION ${MESHLAB_PLUGIN_INSTALL_DIR}
                COMPONENT Plugins)
