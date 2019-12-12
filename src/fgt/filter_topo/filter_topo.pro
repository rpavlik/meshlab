include (../../shared.pri)

HEADERS       += filter_topo.h \
				../edit_topo/edit_topomeshbuilder.h
INCLUDEPATH *= ../edit_topo/
SOURCES       += filter_topo.cpp  
				
				
TARGET        = filter_topo
