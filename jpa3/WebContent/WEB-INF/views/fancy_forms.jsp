<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
    <head>
    <link rel="stylesheet" href="resources/css/simpleform_styles.css" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous" />
  <meta charset="utf-8">
    	<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous"> -->
        <!-- <style>
            body {
                font-family: arial,sans-serif;
                font-size: 14px;
            }
        </style> -->
        
    </head>
    
    <body>
    
    	
        <h1 style="text-decoration: underline;">Airline Forms</h1>
        <h1>Add Flight and airplane</h1>
        <form method="POST" action="AddFlight">
            From:
            <select name="from_destination">
                <option value="San_Francisco">San Francisco</option>
                <option value="Los_Angeles">Los Angeles</option>
                <option value="New_York">New York</option>
                <option value="London"> London</option>
                <option value="Paris"> Paris</option>
                <option value="Rome"> Rome</option>
                <option value="Amsterdam"> Amsterdam</option>
                
            </select>
            <br /><br />
            
            To:
            <select name="to_destination">
                <option value="San_Francisco">San Francisco</option>
                <option value="Los_Angeles">Los Angeles</option>
                <option value="New_York">New York</option>
                <option value="London"> London</option>
                <option value="Paris"> Paris</option>
                <option value="Rome"> Rome</option>
                <option value="Amsterdam"> Amsterdam</option>
                
            </select>
            <h4>Time of Flight:</h4>
            <hr />
            
            Year:
            <select name="year">
                <option value="2021">2021</option>
                <option value="2022">2022</option>
                <option value="2023">2023</option>
                <option value="2024">2024</option>
                <option value="2025">2025</option>
            </select>
            <br /><br />
            
            Month:
            <select name="month">
                <option value="0">January</option>
                <option value="1">February</option>
                <option value="2">March</option>
                <option value="3">April</option>
                <option value="4">May</option>
                <option value="5">June</option>
                <option value="6">July</option>
                <option value="7">August</option>
                <option value="8">September</option>
                <option value="9">October</option>
                <option value="10">November</option>
                <option value="11">December</option>
            </select>
            <br /><br />
            
            Day of Month:
            <input name="day" type="text"></input>
            <br /><br />
            
            Hour of Day (0-23):
            <input name="hour" type="text"></input>
            <br /><br />
     
            Minute (0-59):
            <input name="minute" type="text"></input>
            <br /><br />

            Price:
            <input name="price" type="text"></input>
            <hr />
            <h4>Aiplane:</h4>
            
            Plane Make:
            <input name="airplane_make" type="text"></input>
            <br /><br />
            
            Model Name:
            <input name="airplane_model" type="text"></input>
            <br /><br />
            
            Seating:
            <input name="airplane_seating" type="text"></input>
            <hr />
            
            <button type="submit">Add Flight and airplane</button>
            <hr />
            
        </form>
        
        <h1>Add pilot to Flight</h1>
        <form method="post" action="CreatePilotAndAddToFlight">
            
            First Name:
            <input name="first_name" type="text">
            <br /><br />
            
            Last Name:
            <input name="last_name" type="text">
            <br /><br />
            
            License:
            <input name="license" type="text">
            <br /><br />
            
            Pilot Rank:
            <select name="pilot_rank">
                <option value="Captain">Captain</option>
                <option value="First_Officer">First Officer</option>
                <option value="Junior_Officer">Junior Officer</option>
            </select>
            <br /><br />
            
            Flight Id:
            <input name="fid" type="text">
            <hr />
            <button type="submit">Add pilot to Flight</button>
            <hr />
        
        </form>
        
        <h1>Add Passenger</h1>
        <form method="post" action="AddPassenger">
            
            First Name:
            <input name="first_name" type="text">
            <br /><br />
            
            Last Name:
            <input name="last_name" type="text">
            <br /><br />
            
            Date of Birth:
            <input name="dob" type="text">
            <br /><br />
            
            Gender:
            <select name="gender">
                <option value="Female">Female</option>
                <option value="Male">Male</option>
            </select>
            <hr />
            <button type="submit">Add Passenger</button>
            <hr />
        
        </form>
        
        <h1>Add Passenger to Flight</h1>
        <form method="post" action="AddPassengerToFlight">
            
            Add a Passenger with an Id of
            <input name="pid" type="text">
            to a Flight with an Id of
            <input name="fid" type="text">
            <hr />
            <button type="submit">Add Passenger to Flight</button>
            <hr />
            
        
        </form>
        
        <h1>Add Flight to Passenger <span style="font-size: 16px; vertical-align: middle;">(give a passenger another flight ticket to his/her collection of flight tickets)</span> </h1>
        
        <form method="post" action="AddFlightTicketToPassenger">
            
            Add a ticket for a flight with an Id of
            <input name="fid" type="text">
            to a passenger with an Id of
            <input name="pid" type="text">
            <br /><br />
            
            <span style="font-weight: bold;">(In real world terms - add the flight tickets to the passenger's collection of flight tickets)</span>
            
            <hr />
            <button type="submit">Add flight (ticket) to passenger's flight collection</button>
            <hr />
        
        </form>
        
    </body>
    
</html>




<!-- <h1>Add Passenger</h1>
<div class="container contact">
  <div class="row">
    <div class="col-md-3">
      <div class="contact-info">
        <img src="https://image.ibb.co/kUASdV/contact-image.png" alt="image" />
        <h2>Fansy Forms</h2>
        <h4>We would love to hear from you !</h4>
      </div>
    </div>
    <div class="col-md-9">
    <form method="post" action="AddPassenger">
      <div class="contact-form">
        <div class="form-group" >
          <label class="control-label col-sm-2" for="fname">First Name:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="fname" placeholder="Enter First Name" name="first_name">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="lname">Last Name:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="lname" placeholder="Enter Last Name" name="last_name">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="dob">DOB</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" placeholder="dd/mm/yyyy">
          </div>
        </div>
        Gender:
            <select name="gender">
                <option value="Female">Female</option>
                <option value="Male">Male</option>
            </select>
            <hr />
        <button type="submit">Add Passenger</button>
            <hr />
      </div>
    </div>
    </form>
  </div>
</div> -->
