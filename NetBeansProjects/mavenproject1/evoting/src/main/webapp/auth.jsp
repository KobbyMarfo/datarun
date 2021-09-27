<%-- 
    Document   : auth
    Created on : 15 Apr 2019, 7:15:36 AM
    Author     : apple
--%>

<%@page import="org.json.JSONObject"%>
<%@page import="controller.UserController"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="controller.User"%>
<%! 
        String username;
        String password;
        User user;

%>

<%

        username = request.getParameter("username");
        password = request.getParameter("password");
        user = new User(username,password);
        Gson gson = new Gson();
        UserController controller = new UserController();
        
        String result = controller.authUser(gson.toJson(user));
        System.out.println(result);
        
        JSONObject obj = new JSONObject(result);
        user.setUsername(obj.getString("username"));
        user.setPassword(obj.getString("password"));
        user.setName(obj.getString("name"));
        user.setRole(obj.getString("role"));
        user.setCreate_time(obj.getString("create_time"));
        
        if(user != null){
        if(user.getUsername().equals(username) && user.getPassword().equals(password)){
            System.out.println(user.getUsername());
            
                out.println(user.getUsername());
            
            
        }else{
            
                out.println(user.getUsername()+" - "+user.getPassword());
            
        }
        }
        


%>