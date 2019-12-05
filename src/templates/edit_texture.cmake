{% extends "plugin_with_trackball.cmake" %}

{% block linking %}
{{ super() }}
target_link_libraries({{name}} PRIVATE OpenGL::GLU)
{% endblock %}
