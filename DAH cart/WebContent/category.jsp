<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    isELIgnored="false" pageEncoding="ISO-8859-1"%>
      <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
		<!-- BOOTSTRAP -->
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="bootstrap/js/bootstrap.bundle.min.js"></script>  
        <script src="bootstrap/jquery/jquery-3.2.1.min.js"></script>  
        <script src="bootstrap/jquery/popper.min.js"></script>  
        <script src="bootstrap/jquery/bootstrap.min.js"></script>  
        <!-- BOOTSTRAP -->
		
</head>
<body>

<!-- FORM START -->
<form method="get">
<div class="container" style="padding-top:80px;">
<div class="row">

<div class="col">	
<div class="display-4" style="padding-bottom:30px;">Add Category</div>
	<div class="card mx-auto" style="width:25rem;">
	  <div class="card-body">
    	<h5 class="card-title text-center">Category</h5>
		
		  		<div class="form-group">
   					<label for="categoryName">Category Name</label>
    				<input type="text" class="form-control" name="categoryName" placeholder="Enter category name">
			    </div>
				<button type="submit" formaction="AddCategory" class="btn btn-primary">Add Category</button>
	
	 </div>
	</div>
</div>
</form>
<!-- FORM END -->

<div class="col">
</div>

<div class="col">
</div>


<!-- FORM START -->
<form method="post">
<div class="col">
<div class="display-4" style="padding-bottom:30px;">Manage Category</div>
<table class="table table-bordered table-hover table-striped">
 
  <thead>
    <tr>
      <th scope="col">Category Id</th>
      <th scope="col">Category Name</th>
      <th scope="col">Task</th>
    </tr>
  </thead>
  
  <tbody>
  <c:forEach items="${categories}"  var="category" > 
    <tr>
      <td>${category.id}</td>
      <td>${category.name }</td>
      <td>
      	<input type="submit" formaction="DeleteCategory?id=${category.id}" class="btn btn-primary btn-sm" value="Delete" >
      </td>
    </tr>
   </c:forEach>
  </tbody>

</table>

</div>

</div>
</div>
</form>
<!-- FROM END -->

<div style="padding-left:70px; padding-top:50px;" >
<button type="button" class="btn  btn-secondary" onClick="window.location.href='admin.jsp'">Back</button>
</div>

</body>
</html>