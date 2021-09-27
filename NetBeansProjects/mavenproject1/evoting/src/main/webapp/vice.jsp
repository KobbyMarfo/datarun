<%-- 
    Document   : vice
    Created on : 15 Apr 2019, 12:39:16 PM
    Author     : apple
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : pres-voting
    Created on : 15 Apr 2019, 11:28:12 AM
    Author     : apple
--%>

<!DOCTYPE html>
<html  lang="en">
    <%@include file="template/header_1.jsp" %>
    
    <body id="page-top">
        <%@include file="template/top_1.jsp" %>
        <%@include file="template/menu_1.jsp" %>
        
        <!-- content begin here -->
        <div id="content-wrapper">
            
            <div class="container-fluid">

                <!-- Data table -->
                          
                                  <div class="container-fluid col-lg-12">
                  <div class="card" style="width: 100%;">
                    <div class="card-header">
                        Welcome, <%= request.getParameter("name") %>!
                    </div>
                      <div class="card-body">
                          <h5 class="text-info" style="text-decoration: underline;">Vice Presidential Voting:</h5><br/><hr/>
                          
                          
        <form method="post" action="VPres_Voting">
          
               <div class="table-responsive">
                          <table class="table">
                                <thead class=" text-primary">
                                    <th>No</th>
                                    <th>Photo</th>
                                    <th>Name</th>
                                    <th>Vote</th>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><strong>1</strong></td>
                                        <td><img src="cand1.png" height="150" width="150" /></td>
                                        <td><strong>Louis Addo</strong></td>
                                        <td><input style="width: 50px; height: 50px;" type="radio" value="V001" name="optradio"></td>
                                    </tr>
                                    <tr>
                                        <td><strong>2</strong></td>
                                        <td><img src="pic1.jpeg" height="150" width="150" /></td>
                                        <td><strong>Desmond Ansah</strong></td>
                                        <td><input style="width: 50px; height: 50px;" type="radio" value="V002" name="optradio"></td>
                                    </tr>
                                   
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td><input type="hidden" value="<%= request.getParameter("name") %>" name="name"></td>
                                        <td><input type="hidden" value="<%= request.getParameter("id") %>" name="id"></td>
                                    </tr><br/>
<!--                                    <tr>
                                        <td><strong>Verified By</strong></td>
                                        <td><%= request.getParameter("by") %></td>
                                    </tr>
                                    <tr>
                                        <td><strong>Verification Time</strong></td>
                                        <td><%= request.getParameter("id") %></td>
                                    </tr>-->
                                </tbody>
                          </table>
                      </div>
                   <div class="row">
                  
                  <div class="col-md-12">
                    <div class="form-group">
                        
                        <input class="btn btn-small btn-danger" value="Cancel" type="reset" id="dangerButton"  >
                      <input type="submit" id="saveButton"  class="btn btn-small btn-success"  >
                    </div>
                  </div>
                  
                </div>
                
              </form>
                          <hr/>
                          
                          
                      </div> 
                  </div>
              </div>
                             
                         <hr/>
     
            
          


       <!-- /.container-fluid -->
        
        <%@include file="template/footer.jsp" %>
        
    </body>
    
</html>


