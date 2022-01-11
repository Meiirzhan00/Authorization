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
                    REGISTER TO SYSTEM
                </h4>
                <%
                    String success = request.getParameter("success");
                    if (success != null){
                %>
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    User added successfully!
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                <%
                    }
                %>
                <%
                    String passError = request.getParameter("passworderror");
                    if (passError != null){
                %>
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    Password are not same !
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                <%
                    }
                %>
                <%
                    String emailError = request.getParameter("emailerror");
                    if (emailError != null){
                %>
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    User exists !
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                <%
                    }
                %>
                <form action="toregister" method="post">
                    <div class="form-group mt-2">
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
                        <label>
                            RE TYPE PASSWORD :
                        </label>
                        <input type="password" name="re_password" required class="form-control">
                    </div>
                    <div class="form-group mt-2">
                        <label>
                            FULL NAME :
                        </label>
                        <input type="text" name="full_name" required class="form-control">
                    </div>
                    <div class="form-group mt-2">
                        <button class="btn btn-success">REGISTER</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
