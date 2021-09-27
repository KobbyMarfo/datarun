<%-- 
    Document   : cant-vote
    Created on : 15 Apr 2019, 11:53:37 AM
    Author     : apple
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <div class="card-header text-danger">
                        Voter Verification Failed!
                    </div>
                      <div class="card-body"><hr/>
                          

                  <div class="row">
                  <div class="col-md-3"></div>
                  <div class="col-md-6">
                      <p style="font-size: 24px">Student with ID Number <%= request.getParameter("id") %> does not exist. <br/>This implies this student has not been registered <br/>
                          or been verified to partake in this elections</p>
                  </div>
                  <div class="col-md-3"></div>
                </div>
                            
              </div>    
                <div class="row">
                  <div class="col-md-3"></div>
                  <div class="col-md-6">
                      <a class="btn btn-sm btn-success" href="voting.jsp">Return to ID Screen</a>
                  </div>
                  <div class="col-md-3"></div>
                </div>
                <hr/>
                
                           
                          
                          
                      </div> 
                  </div>
              </div>
        </div>
                             
                         <hr/>
     
            
          


       <!-- /.container-fluid -->
        
        <%@include file="template/footer.jsp" %>
        
    </body>
    
</html>

