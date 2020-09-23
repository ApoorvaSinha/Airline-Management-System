<%@ page import="java.util.*,com.airline.models.*" language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="resources/css/jpaStyles.css" />
<title>Passengers List</title>
</head>
<body>
	<h1>List of Passengers</h1>
	<table>
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Date of Birth</th>
			<th>Gender</th>
			
		</tr>
		<%
			List<Passenger> pList = (List<Passenger>) request.getAttribute("passengers_list");

			for (Integer i = 0; i < pList.size(); i++) {
		%>
		<tr>
			<td><%=pList.get(i).getId() %></td>
			<td><%=pList.get(i).getFirstName() %></td>
			<td><%=pList.get(i).getLastName() %></td>
			<td><%=pList.get(i).getDob() %></td>
			<td><%=pList.get(i).getGender() %></td>
			
			
			</tr>
			
			<tr>
				<td colspan="5">
					<%
						if(pList.get(i).getFlights().size()>0){
							List<Flight> fList = (List<Flight>)pList.get(i).getFlights();
							
							for(Integer k=0;k<fList.size();k++){
						
					%>
						<%= k+1 %>) <%= fList.get(k).getFlightOrigin() %> to <%= fList.get(k).getFlightDestination()  %> @ <%= fList.get(k).getFlightTime() %> <br />
					<%
							}
					%>
					
					<%
						} else{
					%>
						No Flights Tickets Yet
					<%
						}
					%>
				</td>
			</tr>
			
		<%
			}
		%>
	</table>
</body>
</html>