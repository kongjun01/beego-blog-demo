{{define "navbar"}}

<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">我的博客</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li {{if .IsHome}}class="active"{{end}}><a href="/">首页</a></li>
        <li {{if .IsCategory}}class="active"{{end}}><a href="/category">分类</a></li>
        <li {{if .IsMyTitle}}class="active"{{end}}><a href="/topic">我的文章</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

  <div class="pull-right">
    <ul class="nav navbar-nav">
      {{if .IsLogin}}
      <li><a href="/layout">退出</a></li>
      {{else}}
      <li><a href="/login">管理员登录</a></li>
      {{end}}

    </ul>
  </div>

{{end}}