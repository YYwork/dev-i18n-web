{% extends '../_layout.tpl' %}
{% block  title%}{{title}}{% endblock %}

{% block nav %}
  {% set active = {navActive: "index"} %}
  {% include '../_nav.tpl' with active %}
{% endblock %}

{% block main %}
  {% include './loading.tpl' %}
{% endblock %}