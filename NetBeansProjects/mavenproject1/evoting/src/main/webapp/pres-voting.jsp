<%-- 
    Document   : pres-voting
    Created on : 15 Apr 2019, 11:28:12 AM
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
                    <div class="card-header">
                        Welcome, <%= request.getParameter("name") %>!
                    </div>
                      <div class="card-body">
                          <h5 class="text-info" style="text-decoration: underline;">Presidential Voting:</h5><br/><hr/>
                          
                          
<!--                    <form >

                <div class="row">
                    <div class="col-md-3"></div>
                  <div class="col-md-6">
                    <div class="form-group">
                       <label>Photo</label> 
                      <img src="" height="120" width="150" alt="Photo ID">
                       <small *ngIf='invalidInstitutionName' class="text-sm text-danger">Institution Name is Required!</small> 
                    </div>
                  </div>
                  <div class="col-md-3"></div>
                </div>
  
               
               <div class="row">
                  <div class="col-md-3"></div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Student ID</label>
                      <input type="text"  class="form-control" readonly name='id' />
                    </div>
                  </div>
                  <div class="col-md-3"></div>
                </div>
                <div class="row">
                    <div class="col-md-3"></div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Name</label>
                      <input type="text"  readonly class="form-control" name='value'  required="required">
                       <small *ngIf='invalidInstitutionName' class="text-sm text-danger">Institution Name is Required!</small> 
                    </div>
                  </div>
                  <div class="col-md-3"></div>
                </div>

                <div class="row">
                  <div class="col-md-3"></div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Level</label>
                    <input type="text" readonly class="form-control" name='level' >
                     <small *ngIf='invalidInstitutionName' class="text-sm text-danger">Institution Name is Required!</small> 
                  </div>
                </div>
                <div class="col-md-3"></div>
              </div>

              <div class="row">
                <div class="col-md-3"></div>
              <div class="col-md-6">
                <div class="form-group">
                  <label>Gender</label>
                  <input type="text"  readonly class="form-control" name='gender' >
                   <small *ngIf='invalidInstitutionName' class="text-sm text-danger">Institution Name is Required!</small> 
                </div>
              </div>
              <div class="col-md-3"></div>
            </div>


                <div class="row">
                  <div class="col-md-3"></div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <button class="btn btn-small btn-danger" id="dangerButton"  >Cancel</button>
                      <button type="submit" id="saveButton"  class="btn btn-small btn-success"  >Verify</button>
                    </div>
                  </div>
                  <div class="col-md-3"></div>
                </div>
                <hr/>
                
              </form>-->
     

            <form method="post" action="Pres_Voting">
          
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
                                        <td><strong>Joyce Bayor</strong></td>
                                        <td><input style="width: 50px; height: 50px;" type="radio" value="F001" name="optradio"></td>
                                    </tr>
                                    <tr>
                                        <td><strong>2</strong></td>
                                        <td><img src="pic1.jpeg" height="150" width="150" /></td>
                                        <td><strong>Martha Nkrumah</strong></td>
                                        <td><input style="width: 50px; height: 50px;" type="radio" value="E001" name="optradio"></td>
                                    </tr>
                                    <tr>
                                        <td><strong>3</strong></td>
                                        <td><img src="cand2.jpeg" height="150" width="150" /></td>
                                        <td><strong>James Boateng</strong></td>
                                        <td><input style="width: 50px; height: 50px;" type="radio" value="D001" name="optradio"></td>
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

