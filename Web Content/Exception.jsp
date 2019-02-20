<%@ page import="javax.swing.*, dao.UserDAO"%>
<jsp:useBean id="u" class="dbtb.dbtbUser"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<!DOCTYPE html>
<html>
	<link rel="stylesheet" href="User_fail.css">
<body>
	<jsp:include page="log.html"></jsp:include>
	
	<br/><br/>
	<div class="wrap" >	
		<div class="alert2" background="black">
		 <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
		   <br/>
		  <h4 id="msg">Message:</h4>
		  <p id="txt"><strong>Null Entries Please Try Again!</strong></p> 
		  <br/><br/><br/><br/> 
		</div>		
		<jsp:include page="log.jsp"></jsp:include>
	</div>	
</body>
	<script>
		var close = document.getElementsByClassName("closebtn");
		var i;
		
		for (i = 0; i < close.length; i++) {
		    close[i].onclick = function(){
		        var div = this.parentElement;
		        div.style.opacity = "0";
		        setTimeout(function(){ div.style.display = "none";}, 600);
		    }
		}
	</script>
	
</html>
