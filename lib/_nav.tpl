<input type="checkbox" id="tm" class="tm">
<nav class="header-nav">
  <div class="nav-main">
    <ul>
      <li {% if active.navActive=='index' %} class="active" {% endif %}><a href="{{navsUrl.index}}">{{ navs.index }}</a></li>
      <li class="nav-item">
        <a>
          <label for="tm-children2">{{ navs.mall }} <span class="caret"></span></label>
        </a>
        <input type="checkbox" class="tm-children" id="tm-children2">
        <div class="nav-items">
          <ol>
            <li>
              <a target="_blank" href="{{mall.tmall.url}}">{{mall.tmall.name}}</a>
            </li>
            <li>
              <a target="_blank" href="{{mall.jd.url}}">{{mall.jd.name}}</a>
            </li>
          </ol>
        </div>
      </li>
      <li {% if active.navActive=='aboutus' %} class="active" {% endif %}><a href="{{navsUrl.company}}">{{ navs.company }}</a></li>
      <li {% if active.navActive=='culture' %} class="active" {% endif %}><a href="{{navsUrl.culture}}">{{ navs.culture }}</a></li>
      <li {% if active.navActive=='news' %} class="active" {% endif %}><a href="{{navsUrl.news}}">{{ navs.news }}</a></li>
      <li><a target="_blank" href="{{navsUrl.forum}}">{{ navs.forum }}</a></li>
      <li {% if active.navActive=='contactus' %} class="active" {% endif %}><a href="{{navsUrl.contactus}}">{{ navs.contactus }}</a></li>
    </ul>
  </div>
  <div class="nav-hide">
    <label for="tm"><span class="arrow arrow-left"></span>{{navPackUp}}</label>
  </div>
</nav>
