<header>
  <a class="header-left" href="{{indexUrl}}">
    <div class="logo">
      {{demo}}
    </div>
    <div class="slogen">
      {% if slogen != "" %}
      <span class="divider">|</span> {{slogen}}
      {% endif %}

    </div>
  </a>
  <label for="tm" class="nav-icon"></label>
  <div class="header-right">
    <div class="lang {% if lang == 'zh_CN' %} lang-en {% endif %} {% if lang == 'en' %} lang-zh {% endif %}">
      <a class="lang-zh-a" href="{{langUrl.zh}}">{{langName.zh}}</a>
      <span class="divider">|</span>
      <a class="lang-en-a" href="{{langUrl.en}}">{{langName.en}}</a>
      <span class="divider">|</span>
      <a class="lang-jp-a" href="{{langUrl.jp}}">{{langName.jp}}</a>
      <span class="divider">|</span>
      <a class="lang-ko-a" href="{{langUrl.ko}}">{{langName.ko}}</a>
    </div>
  </div>
</header>
