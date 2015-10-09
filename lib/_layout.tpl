<!DOCTYPE html>
<html lang="{{lang}}">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="keywords" content="{{keywords}}" />
  <meta name="description" content="{{description}}" />
  <title>{% block title %} {% endblock %}</title>
  {% block head_css %}
  <link rel="stylesheet" type="text/css" href="../static/css/index.css" /> {% endblock %} {% block head_js %}
  <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <script src="http://cdn.bootcss.com/selectivizr/1.0.2/selectivizr-min.js"></script>
  <![endif]-->
  {% endblock %} {% block ga %} {% endblock %}
</head>

<body>
  {% block body %} {% block hidden %} {% endblock %} {% block header %} {% include './_header.tpl' %} {% endblock %} {% block nav %}{% endblock %}
  <div class="nav-aside-main">
    {% block main %} {% endblock %} {% block footer %} {% include './_footer.tpl' %} {% endblock %}
  </div>
  {% block body_css %} {% endblock %} {% block body_js %} {% endblock %} {% endblock %}
</body>

</html>
