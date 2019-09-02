<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Registration Page</title>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<script type="text/javascript">

.selector-for-some-widget {
	  box-sizing: content-box;
	}

</script>
</head>
<body>
	<form action="UserServletR" method="post">
		<table border="2" align="center">
			<tr>
				<td>NAME</td>
				<td><input type="text" name="name"></td>
			</tr>

			<tr>
				<td>CONTACT</td>
				<td><input type="text" name="no"></td>
			</tr>

			<tr>
				<td>EMAILID</td>
				<td><input type="text" name="email"></td>
			</tr>

			<tr>
				<td>PASSWORD</td>
				<td><input type="password" name="pass"></td>
			</tr>

			<tr>
				<td>CONFIRM PASSWORD</td>
				<td><input type="password" name="confirm"></td>
			</tr>

			<tr>
				<td><center>
						<input type="Submit" Value="Save">
					</center></td>
				<td><center>
						<input type="Submit" Value="Reset">
					</center></td>
			</tr>


		</table>

	</form>
	 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>