<%-- 
    Document   : bookingjsp
    Created on : 21 Apr, 2022, 2:17:46 AM
    Author     : ajays
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Page</title>
        <style>
    
body{  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: pink;  
}  
.container {  
    padding: 50px;  
  background-color: lightblue;  
}  
  
input[type=text], input[type=password], textarea {  
  width: 100%;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1;  
}  
input[type=text]:focus, input[type=password]:focus {  
  background-color: orange;  
  outline: none;  
}  
 div {  
            padding: 10px 0;  
         }  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
.registerbtn {  
  background-color: #4CAF50;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 100%;  
  opacity: 0.9;  
}  
.registerbtn:hover {  
  opacity: 1;  
}  
</style>  
</head>  
  
    
  <form action="bookingServlet"   method="Post">
      
    
  <div class="container">  
  <center><h1><b>MARRIAGE HALL BOOKING <b></h1></center>  
   
  <label> Firstname </label>   
<input type="text" name="firstname" placeholder= "Firstname" size="15" required />    
<label> Lastname: </label>    
<input type="text" name="lastname" placeholder="Lastname" size="15" required />  
 
<div>
<label>   
Gender :  
</label>
<input type="radio" value="Male" name="gender" checked > Male   
<input type="radio" value="Female" name="gender"> Female   
<input type="radio" value="Other" name="gender"> Other  
</div>
<div>
<label>   
BOOKING EVENT FOR :  
</label>   
  
<select name="event">  
<option value="ENGAGEMENT" name="ENGAGEMENT">ENGAGEMENT</option>  
<option value="PRE WEDDING" name="PRE-WEDDING">PRE-WEDDING</option>  
<option value="WEDDING" name="WEDDING" >WEDDING</option>  
<option value="POST WEDDING"  name="POST-WEDDING">POST-WEDDING</option>  
<option value="FAMILY PARTY" name="FAMILY PARTY">FAMILY PARTY</option>  
<option value="CULTURAL PARTY" name="CULTURAL PARTY">CULTURAL PARTY</option>  
<option value="CASUAL PARTY" name="CASUAL PARTY" >CASUAL PARTY</option>  
</select> 
    <label>   &nbsp;
BOOKING ADDON :  
</label>   
  <select name="addon">  
<option value="DJ NIGHT" name="dj night">DJ NIGHT</option>  
<option value="PHOTOGRAPHY" name="photography">PHOTOGRAPHY</option>  
<option value="PICKUP" name="pickup and drop" >PICKUP & DROP</option>  
  </select>
 </div>
<div>
<label>
NO. OF GUESTS.
</label>
<select name="nog">  
<option value="150" name="nog">150</option>  
<option value="250" name="nog">250 </option>  
<option value="500" name="nog">500</option>  
<option value="1000" name="nog">1000 and Above</option>  
</select> 
    &nbsp;
<label for="wedding">BOOKING FROM :</label>
<input type="date" id="wedding" name="fdate">
<label for="wedding">TO</label>
<input type="date" id="wedding" name="tdate">
</br>
</div>


<div>
<label for="wedding">ENGAGEMENT DATE :</label>
<input type="date" id="wedding" name="edate">
<label for="wedding">WEDDING DATE :</label>
<input type="date" id="wedding" name="wdate">

</div>
<label>   
Mobile No. :  
</label>  
<input type="text" name="mobileno" placeholder="mobile_no"   size="10"/>   
  
<div>
Current Address :  
<textarea cols="80" rows="5" name="address" placeholder="Current Address" >  
 </textarea>  
</div>
 <label for="email"><b>Email</b></label>  
 <input type="text" placeholder="Enter Email" name="email" required>  
  
    <label for="psw"><b>Password</b></label>  
    <input type="password" placeholder="Enter Password" name="password" required>  
  
    <input type="Checkbox"   value="checked"  name="condition"/>  
    Agree Terms and Conditions<a href="agreement.html"><u>Click here</u></a>
    <button type="submit" class="registerbtn">Book</button> 
    <button type="reset" class="registerbtn">Reset</button>  
   
 <center><p><a href="login.html"> Already Registered</a></p></center>
  </div>
 
</form>  
  
</html>  

        
        
        
        