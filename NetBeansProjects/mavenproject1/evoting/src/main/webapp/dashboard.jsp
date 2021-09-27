<%-- 
    Document   : official
    Created on : 15 Apr 2019, 5:38:52 AM
    Author     : apple
--%>

<%@page import="controller.DashboardController"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="en">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      google.charts.setOnLoadCallback(drawChart2);
      
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Candidate', 'Votes'],
          ['Joyce Bayor (<%= new DashboardController().getPresidentialResult("E001") %>)',  <%= new DashboardController().getPresidentialResult("E001") %> ],
          ['Martha Nkrumah (<%= new DashboardController().getPresidentialResult("F001") %>)',  <%= new DashboardController().getPresidentialResult("F001") %> ],
          ['James Boateng (<%= new DashboardController().getPresidentialResult("D001") %>)', <%= new DashboardController().getPresidentialResult("D001")  %> ]
          
        ]);

        var options = {
          title: 'Provisional Results - Presdiential',
          
          
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.ColumnChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      };
      
      function drawChart2() {
        var data = google.visualization.arrayToDataTable([
          ['Candidate', 'Votes'],
          ['Louis Addo (<%= new DashboardController().getVicePresidentialResult("V001") %>)',  <%= new DashboardController().getVicePresidentialResult("V001") %> ],
          ['Desmond Ansah (<%= new DashboardController().getVicePresidentialResult("V002") %>)',  <%= new DashboardController().getVicePresidentialResult("V002") %> ]
          
        ]);

        var options = {
          title: 'Provisional Results - Vice Presdiential',
          curveType: 'function',
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.ColumnChart(document.getElementById('curve_chart2'));

        chart.draw(data, options);
      }
    </script>
    <%@include file="template/header.jsp" %>
    
    <body id="page-top">
        <%@include file="template/top.jsp" %>
        <%@include file="template/menu.jsp" %>
        
        <!-- content begin here -->
        <div id="content-wrapper">
            
            <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="#">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">Overview</li>
          </ol>

          <!-- Icon Cards-->
          <div class="row">
            <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-info o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-bell fa-fw"></i>
                  </div>
                    <div class="mr-5"> Total Registered Voters - <%= new DashboardController().getTotalRegisteredVoters()%></div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="view_data.jsp?param=month">
                  <span class="float-left">View Details</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right"></i>
                  </span>
                </a>
              </div>
            </div>
            <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-info o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-bell fa-fw"></i>
                  </div>
                  <div class="mr-5">Total Voter Turnout (Presidential) - <%= new DashboardController().getPresidentialTotal() %></div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="view_data.jsp?param=lastweek">
                  <span class="float-left">View Details</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right"></i>
                  </span>
                </a>
              </div>
            </div>
            <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-info o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-bell fa-fw"></i>
                  </div>
                  <div class="mr-5">Total Voter Turnout (Vice Presidential) - <%= new DashboardController().getVicePresidentialTotal() %></div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="view_data.jsp?param=thisweek">
                  <span class="float-left">View Details</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right"></i>
                  </span>
                </a>
              </div>
            </div>
            <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-info o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw fa-bell"></i>
                  </div>
                  <div class="mr-5">Total Turn Out - <%= new DashboardController().getTotalTurnout()%></div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="view_data.jsp?param=today">
                  <span class="float-left">View Details</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right"></i>
                  </span>
                </a>
              </div>
            </div>
          </div>
            

          <div class="card mb-12">
            <div class="card-header">
              <i class="fas fa-chart-area"></i>
              Presidential Result</div>
            <div class="card-body">
              <!--<canvas id="myAreaChart" width="100%" height="30"></canvas>-->
              <div id="curve_chart" style="width: 100%; height: 400px"></div>
            </div>
            <div class="card-footer small text-muted">Last updated on: <% out.print(new Date()); %></div>
          </div>      
                         <hr/>
                         
                         <div class="card mb-12">
            <div class="card-header">
              <i class="fas fa-chart-area"></i>
              Vice Presidential Result</div>
            <div class="card-body">
              <!--<canvas id="myAreaChart" width="100%" height="30"></canvas>-->
              <div id="curve_chart2" style="width: 100%; height: 400px"></div>
            </div>
            <div class="card-footer small text-muted">Last updated on: <% out.print(new Date()); %></div>
          </div>      
                         <hr/>
     
            
          


       <!-- /.container-fluid -->
        
        <%@include file="template/footer.jsp" %>
        
    </body>
    
</html>

