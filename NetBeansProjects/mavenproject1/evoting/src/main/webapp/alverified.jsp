<%-- 
    Document   : failed
    Created on : 15 Apr 2019, 8:39:53 AM
    Author     : apple
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="template/header.jsp" %>
    
    <body id="page-top">
        <%@include file="template/top.jsp" %>
        <%@include file="template/menu.jsp" %>
        
        <!-- content begin here -->
        <div id="content-wrapper">
            
            <div class="container-fluid">

                <!-- Data table -->
                          
                  <div class="container-fluid col-lg-12">
                  <div class="card" style="width: 100%;">
                    <div class="card-header text-warning">
                        <b>Student Already Verified!</b>
                    </div>
                      <div class="card-body"><hr/>
                          

                  <div class="row">
                  <div class="col-md-3"></div>
                  <div class="col-md-6">
                      <p style="font-size: 24px">Student with ID Number <%= request.getParameter("id") %> has already been verified. <br/><br/>
                          Find Verification Details Below:<br/><br/>
                          </p>
                      <div class="table-responsive">
                          <table class="table">
                                <thead class=" text-primary">
                                    <th>Item</th>
                                    <th>Description</th>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><strong>Student ID</strong></td>
                                        <td><%= request.getParameter("id") %></td>
                                    </tr>
                                    <tr>
                                        <td><strong>Student Name</strong></td>
                                        <td><%= request.getParameter("name") %></td>
                                    </tr>
                                    <tr>
                                        <td><strong>Verified By</strong></td>
                                        <td><%= request.getParameter("id") %></td>
                                    </tr>
                                    <tr>
                                        <td><strong>Verification Time</strong></td>
                                        <td><%= request.getParameter("id") %></td>
                                    </tr>
                                </tbody>
                          </table>
                      </div>
<!--                          <b>Student ID</b>: <%= request.getParameter("id") %><br/>
                          <b>Student Name</b>: <%= request.getParameter("name") %><br/>
                          <b>Verified By</b>: <%= request.getParameter("name") %><br/>
                          <b>Verification Time</b>: <%= request.getParameter("name") %><br/>-->
                      
                  </div>
                  <div class="col-md-3"></div>
                </div>
                            
              </div>    
                <div class="row">
                  <div class="col-md-3"></div>
                  <div class="col-md-6">
                      <a style="margin-left: 10px;" href="official.jsp" class="btn btn-sm btn-success">Return to Verification</a>
                  </div>
                  <div class="col-md-3"></div>
                </div>
                <hr/>
                
                           
                          
                          
                      </div> 
                  </div>
              </div>
                             
                         <hr/>
     
            
          


       <!-- /.container-fluid -->
        
        <%@include file="template/footer.jsp" %>
        
    </body>
    
</html>
