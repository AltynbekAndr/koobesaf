
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main2.css"/>
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
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<hr>

<div class="container">
     <div class="moicontainer">
       <a href="http://localhost:8080/photoupload" data-toggle="modal" data-target="#myModal2"><img src="resources/images/myicon.png"></a>
       <a href="http://localhost:8080/photoupload" data-toggle="modal" data-target="#myModal2">загрузить фото</a>

     </div>

    <div class="moicontainer2">
      <ul>
        <li><a href=""><img src="resources/images/myicon.png"></a><br><a href="" data-toggle="modal" data-target="#myModal"><h2>imya usera</h2></a></li>
      </ul>
       <ul>
        <li><a href=""><img src="resources/images/myicon.png"></a><br><a href="" data-toggle="modal" data-target="#myModal"><h2>imya usera</h2></a></li>
      </ul>
       <ul>
        <li><a href=""><img src="resources/images/myicon.png"></a><br><a href="" data-toggle="modal" data-target="#myModal"><h2>imya usera</h2></a></li>
      </ul>
       <ul>
        <li><a href=""><img src="resources/images/myicon.png"></a><br><a href="" data-toggle="modal" data-target="#myModal"><h2>imya usera</h2></a></li>
      </ul>
       <ul>
        <li><a href=""><img src="resources/images/myicon.png"></a><br><a href="" data-toggle="modal" data-target="#myModal"><h2>imya usera</h2></a></li>
      </ul>
       <ul>
        <li><a href=""><img src="resources/images/myicon.png"></a><br><a href="" data-toggle="modal" data-target="#myModal"><h2>imya usera</h2></a></li>
      </ul>
       <ul>
        <li><a href=""><img src="resources/images/myicon.png"></a><br><a href="" data-toggle="modal" data-target="#myModal"><h2>imya usera</h2></a></li>
      </ul>
       <ul>
        <li><a href=""><img src="resources/images/myicon.png"></a><br><a href="" data-toggle="modal" data-target="#myModal"><h2>imya usera</h2></a></li>
      </ul>
       <ul>
        <li><a href=""><img src="resources/images/myicon.png"></a><br><a href="" data-toggle="modal" data-target="#myModal"><h2>imya usera</h2></a></li>
      </ul>
       <ul>
        <li><a href=""><img src="resources/images/myicon.png"></a><br><a href="" data-toggle="modal" data-target="#myModal"><h2>imya usera</h2></a></li>
      </ul>
       <ul>
        <li><a href=""><img src="resources/images/myicon.png"></a><br><a href="" data-toggle="modal" data-target="#myModal"><h2>imya usera</h2></a></li>
      </ul>
       <ul>
        <li><a href=""><img src="resources/images/myicon.png"></a><br><a href="" data-toggle="modal" data-target="#myModal"><h2>imya usera</h2></a></li>
      </ul>


     </div>



     <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mymodallabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                 <button class="close" data-dismiss="modal" aria-label="close"><span aria-hidden="true">&times;</span></button>
                 <h4 class="modal-title" id="mymodallabel">USER</h4>
               </div>
            <div class="modal-body">
              <div class="mymodalbody">
              <p class="usermail">tushkanchik@bk.ru</p>
              <p class="usersms"></p>

              <p class="usermail2"></p>
              <p class="usersms2"></p>
              </div>

                 <textarea class="chattextarea" name="textarea" maxlength="2000">text</textarea>

            </div>
            <div class="modal-footer">
                 <button class="btn btn-default" type="button" data-dismiss="modal">CLOSE</button>
                 <button class="btn btn-primary" type="button">SEND</button>
            </div>
            </div>
          </div>
     </div>
     <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="mymodallabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal" aria-label="close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="mymodallabel2">Photo Upload</h4>
                </div>
                <div class="modal-body">
                   <input type="file" name="file" class="file"><br/>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">CLOSE</button>
                    <button class="btn btn-primary" type="button">SEND</button>
                </div>
            </div>
        </div>
    </div>

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
<% String s = (String) session.getAttribute("email");%>
<script type="text/javascript">
    function a(){

        $.ajax({
            method:'POST',
            url: 'http://localhost:8080/sms',
            contentType:'application/json',
            success: function() {
               $('.usermail').html("tushkanchik@bk.ru");

            }
        });
        }
    $('.btn-primary').click(
            function(){
                var s = $('.chattextarea').val();
                var s2 = $('.usermail').html();
                $.ajax({
                    type: "POST",
                    url: "http://localhost:8080/smms2",
                    data: JSON.stringify({ sms: s,email:s2}),
                    contentType: 'application/json',
                    success: function(data) {
                        if(data!=null){
                        $('.mymodalbody').append("<p class='usermail2'><%= s%></p>");
                        $('.mymodalbody').append("<p class='usersms2'>"+data.sms+"</p>");
                    }}
                });
            }
    );
</script>
<script type="text/javascript">
    a();
    setInterval(function() {
        $.ajax({
            method:'POST',
            url: 'http://localhost:8080/smms',
            contentType:'application/json',
            success: function(data) {
                if(data!=null){
                $('.mymodalbody').append("<p class='usermail'>tushkanchik@bk.ru</p>");
                $('.mymodalbody').append("<p class='usersms'>"+data.sms+"</p>");
                }

            }
        });}, 5000)
</script>
</body>
</html>
