<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <%@include file="vendor/head.jsp"%>
</head>
<body>
    <%@include file="vendor/navbar.jsp"%>
    <div class="container">
        <div class="row mt-5">
            <div class="col-sm-6 offset-3">
                <h4 class="mb-4 text-center">
                    LOGIN TO SYSTEM
                </h4>
                <form action="login" method="post">
                    <div class="form-group mt-2">
                        <%
                            String passError = request.getParameter("passworderror");
                            if (passError != null){
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            Incorrect password !
                        </div>
                        <%
                            }
                        %>
                        <%
                            String emailError = request.getParameter("emailerror");
                            if (emailError != null){
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            Incorrect email or password !
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        <%
                            }
                        %>
                        <label>
                            EMAIL :
                        </label>
                        <input type="email" name="email" required class="form-control">
                    </div>
                    <div class="form-group mt-2">
                        <label>
                            PASSWORD :
                        </label>
                        <input type="password" name="password" required class="form-control">
                    </div>
                    <div class="form-group mt-2">
                        <button class="btn btn-success">LOGIN</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
