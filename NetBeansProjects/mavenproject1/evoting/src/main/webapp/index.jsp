<%-- 
    Document   : index
    Created on : 15 Apr 2019, 5:35:59 AM
    Author     : apple
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <style type="text/css">
        body{
            background: #f5f5f5;
        }
    </style>
    <title>Evoting - Login</title>
    <% 
        //UserModel.setUsername(null);
    %>
  </head>
  <body>
      <div class="container-fluid" style="height: 40px; background: #37474f">
          <div class="text-center">
              <span style="color: #fff; margin-top: 5px">Evoting System </span>
          </div>
      </div>
      
      <div class="container-fluid" style="margin-top: 10%;">
          <div class="row">
              <div class="col-lg-4"></div>
              <div class="col-lg-4">
                  <center>
                  <div class="card">
                    <div class="card-header">
                        Login
                    </div>
                      <div class="card-body">
                          <form method="post" action="AuthServlet">
                        <div class="form-group">
                            <label for="username" style="float: left">Username</label>
                            <input type="text" class="form-control" name="username" id="username" aria-describedby="emailHelp" required placeholder="Enter Username">
                            <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
                        </div>
                        <div class="form-group">
                            <label for="password" style="float: left">Password</label>
                            <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
                        </div>
  
                        <input style="float: left" type="submit" value="Login" class="btn btn-success btn-sm"/>
                        <input style="float: left; margin-left: 10px" type="reset" value="Cancel" class="btn btn-danger btn-sm"/>
                        </form>
                       </div>
                  </div>
                  </center>
                  </div>
              <div class="col-lg-4"></div>
              </div>
              
              
          </div>
      </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
  </body>
</html>
