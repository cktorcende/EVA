<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EVA: Admin Help</title>
</head>

<body>
	<div>
		<h4>Request Account for Login</h4>
		<form name= "ReqAcc">
		<select>
			<option></option>
			<option>Patient</option>
			<option>Nurse</option>
			<option>Doctor</option>
		</select></br>
		<input type="text" placeholder="account name"/></br>
		<input type="text" placeholder="Date Started"/></br>
		<input type="text" placeholder="Given Code"/></br>
		<input type="submit"/></br>
		<input type="reset"/></br>
		</form>
		<form name="Chapass">
			<h4>Request for the change of password</h4>
			<input type="email" placeholder="emailname@example.com" size=30></br>
			<input type="submit"/></br>
			<input type="reset"/></br>
		</form>
	</div>
</body>
</html>