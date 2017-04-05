
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ошибка</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css"/>


</head>
<body>
<div class="container">
  <div class="row">
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#responsive-menu">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>

          </button>
          <h1 class="navbar-brand logo">koobesaf</h1>
        </div>
        <div class="collapse navbar-collapse" id="responsive-menu">
          <ul class="nav navbar-nav">
            <li><a href="http://localhost:8080">MAIN</a></li>
            <li><a href="#">PEOPLE</a></li>

            <form action="http://localhost:8080/signin" method="post" class="form-inline navbar-form navbar-right">
              <div class="form-group">
                <label for="exampleinputemail" class="sr-only">Email</label>
                <input name ="email" type="email" class="form-control" id="exampleinputemail" placeholder="email">
              </div>
              <div class="form-group">
                <label for="exampleinputpassword" class="sr-only">Password</label>
                <input name ="password" type="password" class="form-control" id="exampleinputpassword" placeholder="password">
              </div>
              <button type="submit" class="btn btn-default">Sign in</button>
            </form>

          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<hr>
<div class="container">
  <form action="http://localhost:8080/autorization" method="post">
    <h2 id="registration">registration</h2>
    <h2>name</h2>
    <input type="text" size="10" maxlength="20" name="name">
    <h2>last name</h2>
    <input type="text" size="10" maxlength="20" name="lname">
    <h2>email</h2>
    <input type="text" size="10" maxlength="20" name="email">
    <h2>password</h2>
    <input type="password" size="10" maxlength="20" name="password1">
    <h2>password</h2>
    <input type="password" size="10" maxlength="20" name="password2">

    <input type="submit" value="registration">
  </form>
 <h1>введенные данные не правильны</h1>
</div>

<div class="container">
  <div class="footer">
    <p>koobecaf</p>
    <p>© 2017 «TM»</p>
  </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.0.0.min.js">
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js">
</script>
</body>
</html>
