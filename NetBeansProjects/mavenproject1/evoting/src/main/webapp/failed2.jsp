<%-- 
    Document   : alvoted
    Created on : 15 Apr 2019, 12:20:40 PM
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
                        You have already voted for a Vice Presidential Candidate!
                    </div>
                      <div class="card-body">
                          <h5 class="text-info" style="text-decoration: underline;">Vice Presidential Voting:</h5><br/><hr/>
                          
                          <span>Student with ID <%= request.getParameter("id")%> has cannot vote in the
                              the Vice Presidential Elections. <br/> Contact System Admin
                          </span><br/>
                              <div><hr/>
                                  <a href="voting.jsp" class="btn btn-success btn-small">Return to Voting</a>
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

