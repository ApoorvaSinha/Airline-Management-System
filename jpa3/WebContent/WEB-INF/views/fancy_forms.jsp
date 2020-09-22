<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
    <head>
        <style>
            body {
                font-family: arial,sans-serif;
                font-size: 14px;
            }
        </style>
    </head>
    
    <body>
        <h1 style="text-decoration: underline;">Fancy Forms</h1>
        <h1>Add Flight and airplane</h1>
        <form method="POST" action="">
            From:
            <select id="from_destination" name="from_destination">
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
            <select id="to_destination" name="to_destination">
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
                <option value="1">Febuary</option>
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
            <input name="day" type="text">
            <br /><br />
            
            Hour of Day (0-23):
            <input name="hour" type="text">
            <br /><br />
     
            Minute (0-59):
            <input name="minute" type="text">
            <br /><br />

            Price:
            <input name="price" type="text">
            <hr />
            <h4>Aiplane:</h4>
            
            Plane Make:
            <input name="planeMake" type="text">
            <br /><br />
            
            Model Name:
            <input name="modelName" type="text">
            <br /><br />
            
            Seating:
            <input name="seatingCapacity" type="text">
            <hr />
            
            <button type="submit">Add Flight and airplane</button>
            <hr />
            
        </form>
        
        <h1>Add pilot to Flight</h1>
        <form method="post" action="">
            
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
        <form method="post" action="">
            
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
        <form method="post" action="">
            
            Add a Passenger with an Id of
            <input name="pid" type="text">
            to a Flight with an Id of
            <input name="fid" type="text">
            <hr />
            <button type="submit">Add Passenger to Flight</button>
            <hr />
            
        
        </form>
        
        <h1>Add Flight to Passenger <span style="font-size: 16px; vertical-align: middle;">(give a passenger another flight ticket to his/her collection of flight tickets)</span> </h1>
        
        <form method="post" action="">
            
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