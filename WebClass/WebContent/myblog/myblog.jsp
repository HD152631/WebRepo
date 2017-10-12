<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO"%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome to my blog!</title>

<!-- Bootstrap core CSS -->
<link href="/WebClass/myblog/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/WebClass/css/one-page-wonder.css" rel="stylesheet">
</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="index.html">My blog</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="index.html">Home <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="school.html">My
							school</a></li>
					<li class="nav-item"><a class="nav-link" href="favorite.html">My
							favorite</a></li>
					<li class="nav-item"><a class="nav-link" href="dream.html">My
							dream</a></li>
				</ul>
				<%
	UserVO user = (UserVO)session.getAttribute("user");
	if(user==null){
	%>
				<form class="form-inline my-2 my-lg-0" id="loginForm" method="post"
					action="/WebClass/bloglogin">

					<input class="form-control mr-sm-2" type="text" placeholder="ID"
						aria-label="ID" id="id" name="id" required
						<%if(request.getParameter("id")==null){ %>
				           value=""
				        <%}
				        else{%>
				        value="<%=request.getParameter("id") %>"
				        <%} %>
				        >
						<input
						class="form-control mr-sm-2" type="password" placeholder="PW"
						aria-label="PW" id="pw" name="pwd" required>
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
				</form>
				<form>
					<button class="btn btn-outline-success my-2 my-sm-0" type="button"
						onclick="location.href='../myblog/signup.html'">Sign up</button>
				</form>
				<% } else { %>

				<ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	            <li class="nav-item dropdown"><a
	               class="nav-item nav-link dropdown-toggle mr-md-2" href="#"
		               id="bd-versions" data-toggle="dropdown" aria-haspopup="true"
	               aria-expanded="false"> <%=user.getName()%> 님
	            </a>
	               <div class="dropdown-menu dropdown-menu-right"
	                  aria-labelledby="bd-versions">
		                  <form action="/WebClass/bloglogout" method="post">
		                     <button type="submit" class="dropdown-item">Sign out</button>
		                  </form>
		                  <div class="dropdown-divider"></div>
		                  <button type="button" class="dropdown-item">Action1</button>
		                  <button type="button" class="dropdown-item">Action2</button>
		
		               </div>
		            </li>
		         </ul>
         
				<% } %>
			</div>

		</div>
		</div>
	</nav>

	<header class="masthead">
		<div class="overlay">
			<div class="container">
				<h1 class="display-1 text-white">Welcome to my blog!</h1>
				<h2 class="display-6 text-white">Korea digital media Highschool
					Jeong Hye-chan</h2>
			</div>
		</div>
	</header>

	<section>
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 order-2">
					<div class="p-5">
						<img class="img-fluid rounded-circle"
							src="/WebClass/myblog/image/school.jpg" alt="">
					</div>
				</div>
				<div class="col-md-6 order-1">
					<div class="p-5">
						<h2 class="display-4">About my school..</h2>
						<p>My school is Korea digital media Highschool, my school is
							something special. We 
asses. So, I want to introduce my school!
							Come on!</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section>
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6">
					<div class="p-5">
						<img class="img-fluid rounded-circle"
							src="/WebClass/myblog/image/slamdunk.jpg" alt="">
					</div>
				</div>
				<div class="col-md-6">
					<div class="p-5">
						<h2 class="display-4">About my favorite...</h2>
						<p>My favorite sports is basketball. I play basketball every
							dinner time. And I have many favorite things. If you want to know
							about these things, Come on and Look my blog!!</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section>
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 order-2">
					<div class="p-5">
						<img class="img-fluid rounded-circle"
							src="/WebClass/myblog/image/airplane.jpg" alt="">
					</div>
				</div>
				<div class="col-md-6 order-1">
					<div class="p-5">
						<h2 class="display-4">About my dream...</h2>
						<p>My dream is Aerospace engineer. This carrer is about
							airplane or space engineering. Many people maybe don't know this
							carrer. I want to introduce about this carrer as my dream. If you
							want to knoe about this carrer, Come on and Look my blog!!</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">
				Jeong Hye-chan's blog &copy; Telephone : 010-4046-3460 <br>
				Kakao Talk ID : summer200005@naver.com <br> Class: 2-6 Number:
				31
			</p>
			<br>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Modal -->
   <div class="modal" id="myModal">
      <div class="modal-dialog" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title">Login</h5>
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">
               <p>Modal body text goes here.</p>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-secondary"
                  data-dismiss="modal">Close</button>
            </div>
         </div>
      </div>
   </div>
   
	<!-- Bootstrap core JavaScript -->
	<script src="/WebClass/myblog/vendor/jquery/jquery.min.js"></script>
	<script src="/WebClass/myblog/vendor/popper/popper.min.js"></script>
	<script src="/WebClass/myblog/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script>
	<%   
	   if ("error".equals(request.getAttribute("msg"))) {
	   
	   %>
	   
	   var myModal = $('#myModal');
	   myModal.find('.modal-title').text('Sign in Error');
	   myModal.find('.modal-body').text('Wrong Identification');
	   myModal.modal();
	   
	   <%
	   }
	  %>
	</script>
</body>

</html>