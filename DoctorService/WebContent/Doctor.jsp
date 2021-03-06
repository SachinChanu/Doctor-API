<!-- IT17125062_Chanuka M.L.S.
 -->
 <%@page import="com.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Management</title>

<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/Doctor.js"></script>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
    $(document).ready(function(){
      var date_input=$('input[name="expDate"]');
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm-yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
</script>
<script language="javascript" type="text/javascript">
function pulsar(e,obj) {
  tecla = (document.all) ? e.keyCode : e.which;
  //alert(tecla);
  if (tecla!="8" && tecla!="0"){
  	obj.value += String.fromCharCode(tecla).toUpperCase();
  	return false;
  }else{
  	return true;
  }
}
</script>

</head>
<body background="images/back.jpg">

<div class="container">
	<div class="row">
	
		<div class="col-6">
			<h1><b>Dcotor Management</b></h1>
			<br>
			<form id="doctorForm" name="doctorForm" method="post" action="Doctor.jsp">

				<b>Full Name:</b>
				<input id="name" name="name" type="text" placeholder="Enter Full Name" class="form-control form-control-sm">
				<br>
				 
				<b>Department:</b>
				<input id="dep" name="dep" type="text" onkeypress="return pulsar(event,this)" placeholder="Enter Department Name" class="form-control form-control-sm">
				<br>
				
				<b>Address:</b>
				<input id="address" name="address" type="text" placeholder="Address" class="form-control form-control-sm">
				<br>
				 
				<b>Phone Number:</b>
				<input id="number" name="number" type="text" placeholder="Enter Number" class="form-control form-control-sm">
				<br>
				
				<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
				<a href="Doctor.jsp" class="btn1 btn danger" onclick="" type ="button" style="text-align: center">Clear</a>
				<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
			</form>
			
			<div id="alertSuccess" class="alert alert-success"></div>
			<div id="alertError" class="alert alert-danger"></div>
			<br>
			
		</div>
		
		<div class="col-10">
			<div id="divItemsGrid">
				<%
					Doctor payObj = new Doctor();
							out.print(payObj.readDoctor());
				%>
		</div>
		<br>
						
		</div>
	</div>
</div>
</body>
</html>
