
package com.practice;


import java.io.PrintWriter;
import java.io.*;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;
import static java.lang.System.out;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Statement;





public class bookingServlet extends HttpServlet{
   
  
    public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
 {   
 
     response.setContentType("text/html");
     PrintWriter out =response.getWriter();
     out.println("<h1> Congrates Your Booking has Been accepted !!! ");
 
     String name=request.getParameter("firstname");
     String lname=request.getParameter("lastname");
     String password=request.getParameter("password");
     String email=request.getParameter("email");
     String gender=request.getParameter("gender");
     String event=request.getParameter("event");
     String fdate=request.getParameter("fdate");
     String tdate=request.getParameter("tdate");
     String edate=request.getParameter("edate");
     String wdate=request.getParameter("wdate");
     String mobileno=request.getParameter("mobileno");
     String address=request.getParameter("address");
     String nog=request.getParameter("nog");
     String addon=request.getParameter("addon");
    
  
     out.println(" - " +name);
    
     String cond=request.getParameter("condition");
     if(cond !=null){
     if (cond.equals("checked")){
    out.println("<h2>First Name: "+name+"</h2>");
    out.println("<h2> Last Name: "+lname+"</h2>");
    out.println("<h2> Email: "+email+"</h2>");
    out.println("<h2> Gender: "+gender+"</h2>");
    out.println("<h2> Mobile no: "+mobileno+"</h2>");
     out.println("<h2>Address:"+address+"</h2>");
     out.println("<h2> Booking Event For: "+event+"</h2>");
     out.println("<h2>Booking From:" +fdate+"</h2>");
    out.println("<h2> To:"+tdate+"</h2>");
     out.println("<h2>Engagement Date: "+edate+"</h2>");
      out.println("<h2> Wedding Date: "+wdate+"</h2>");
      out.println("<h2> No. Of Guest: "+nog+"</h2>");
     out.println("<h2> Addon Service: "+addon+"</h2>");
  
     

       //jdbc 
       //save to db
try{
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/marriage_hall","root","ajay5841");
    //query..
      String q ="insert into customer(name,password,email,event,fdate,tdate,edate,wdate,mobileno,address,nog,lname,addon)Values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
      PreparedStatement pstmt=con.prepareStatement(q);
          pstmt.setString(1,name);
          pstmt.setString(2,password);
          pstmt.setString(3,email);
          pstmt.setString(4,event);
          pstmt.setString(5,fdate);
          pstmt.setString(6,tdate);
          pstmt.setString(7,edate);
          pstmt.setString(8,wdate);
          pstmt.setString(9,mobileno);
          pstmt.setString(10,address);
          pstmt.setString(11,nog);
          pstmt.setString(12,lname);
          pstmt.setString(13,addon);
         
           
          pstmt.executeUpdate();
           out.println("<h1>Your Booking is saved on Portal Please go for payment .....</h1>");
         //  response.sendRedirect("pay.jsp");
 out.println("<br><br><a href='pay.jsp'>Proceed For Payment</a>");


}        catch (ClassNotFoundException | SQLException e) {
            out.println("<h1>error......</h1>");
          }



      //  RequestDispatcher rd = request.getRequestDispatcher("SuccessServlet");
     //   rd.forward(request, response);

}
     else{
     out.println("<h2>You Have Not Accepted Terms and Condition</h2>");
}
  
}else{
out.println("<h1> You Have not accepted terms and condition </h2>");
}}
}



 
