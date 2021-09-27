<%-- 
    Document   : official
    Created on : 15 Apr 2019, 5:38:52 AM
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
                        Voter Verification
                    </div>
                      <div class="card-body">
                          <h5 class="text-info" style="text-decoration: underline;">Please Enter Student ID Below:</h5><br/><hr/>
                          
                          
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
     

            <form method="post" action="RequestVerification_1">
          
               <div class="row">
                  <div class="col-md-3"></div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Student ID</label>
                      <input type="text" placeholder="Student ID"  class="form-control" required name='id' />
                      
                    </div>
                  </div>
                  <div class="col-md-3"></div>
                </div>
                            
              </div>    
                <div class="row">
                  <div class="col-md-3"></div>
                  <div class="col-md-6">
                    <div class="form-group">
                        
                      <button class="btn btn-small btn-danger" id="dangerButton"  >Cancel</button>
                      <button type="submit" id="saveButton"  class="btn btn-small btn-success"  >Submit</button>
                    </div>
                  </div>
                  <div class="col-md-3"></div>
                </div>
                <hr/>
                
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

