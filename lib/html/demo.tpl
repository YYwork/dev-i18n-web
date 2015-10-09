{% extends '../_layout.tpl' %}
{% block  title%}{{title}}{% endblock %}

{% block nav %}
  {% set active = {navActive: "index"} %}
  {% include '../_nav.tpl' with active %}
{% endblock %}

{% block main %}
  {% if lang == 'zh_CN' %}
    {% include './zh/demo.tpl' %}
  {% endif %}
  {% if lang == 'en' %}
    {% include './en/demo.tpl' %}
  {% endif %}
  {% if lang == 'ja' %}
    {% include './jp/demo.tpl' %}
  {% endif %}
  {% if lang == 'ko' %}
    {% include './ko/demo.tpl' %}
  {% endif %}
  {% if lang == 'zh-TW' %}
    {% include './tw/demo.tpl' %}
  {% endif %}
{% endblock %}