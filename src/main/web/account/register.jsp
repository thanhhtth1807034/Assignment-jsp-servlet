<%@ page import="com.assignment.model.User" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>


<%
    HashMap<String, ArrayList<String>> errors = (HashMap<String, ArrayList<String>>) request.getAttribute("errors");
%>
<%--<%--%>
<%--    User.Role[] roles = (User.Role[]) request.getAttribute("roles");--%>
<%--%>--%>
<style>
    .error{
        color: red;
    }
</style>
<div class="main-container">
    <div class="main-content">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container ">
                    <div class="center">
                        <h1>

                            <span class="green">Register</span>
                            <%--                            <span class="white" id="id-text2">Application</span>--%>
                        </h1>

                    </div>

                    <div class="space-6"></div>


                    <div class="position-relative">
                        <div id="signup-box" class="signup-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header green lighter bigger">
                                        <i class="ace-icon fa fa-users blue"></i>
                                        New User Registration
                                    </h4>

                                    <div class="space-6"></div>
                                    <p> Enter your details to begin: </p>

                                    <%
                                        if (errors != null && errors.size() > 0){
                                    %>
                                        <span class="error">Please fix errors and try again !</span>
                                    <%
                                        }
                                    %>
                                    <form action="${pageContext.request.contextPath}/account/register" method="post" id="registerForm">
                                        <fieldset>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control" placeholder="Email"
                                                                   name="email"/>
															<i class="ace-icon fa fa-envelope"></i>
                                                            <%
                                                                if (errors != null && errors.containsKey("email")){
                                                            %>
                                                            <p class="error">* <%=errors.get("email").get(0)%></p>
                                                            <%
                                                                }
                                                            %>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control"
                                                                   placeholder="Username" name="username"/>
															<i class="ace-icon fa fa-user"></i>
                                                            <%
                                                                if (errors != null && errors.containsKey("username")){
                                                            %>
                                                                <p class="error">* <%=errors.get("username").get(0)%></p>
                                                            <%
                                                                }
                                                            %>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control"
                                                                   placeholder="Password" name="password"/>
															<i class="ace-icon fa fa-lock"></i>
                                                            <%
                                                                if (errors != null && errors.containsKey("password")){
                                                            %>
                                                            <p class="error">* <%=errors.get("password").get(0)%></p>
                                                            <%
                                                                }
                                                            %>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control"
                                                                   placeholder="Repeat password" name="repeatPassword"/>
															<i class="ace-icon fa fa-retweet"></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control"
                                                                   placeholder="Full name" name="fullName"/>
															<i class="ace-icon fa fa-user"></i>
                                                            <%
                                                                if (errors != null && errors.containsKey("fullName")){
                                                            %>
                                                            <p class="error">* <%=errors.get("fullName").get(0)%></p>
                                                            <%
                                                                }
                                                            %>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control"
                                                                   placeholder="Address" name="address"/>
															<i class="ace-icon fa fa-address-card"></i>
                                                            <%
                                                                if (errors != null && errors.containsKey("address")){
                                                            %>
                                                            <p class="error">* <%=errors.get("address").get(0)%></p>
                                                            <%
                                                                }
                                                            %>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="Phone"
                                                                   name="phone"/>
															<i class="ace-icon fa fa-phone-square"></i>
                                                            <%
                                                                if (errors != null && errors.containsKey("phone")){
                                                            %>
                                                            <p class="error">* <%=errors.get("phone").get(0)%></p>
                                                            <%
                                                                }
                                                            %>
														</span>
                                            </label>

                                            <label class="block clearfix">
<%--														<span class="block input-icon input-icon-right">--%>
<%--                                                            Role <select name="role">--%>
<%--                                                                    <%--%>
<%--                                                                        for (User.Role r : roles) {--%>
<%--                                                                    %>--%>
<%--                                                                        <option value="<%=r.getValue()%>"><%=r.name()%></option>--%>
<%--                                                                    <%--%>
<%--                                                                        }--%>
<%--                                                                    %>--%>
<%--                                                                 </select>--%>
<%--															<i class="ace-icon fa fa-retweet"></i>--%>
<%--														</span>--%>
                                            </label>

                                            <div class="space-24"></div>

                                            <div class="clearfix">
                                                <button type="reset" class="width-30 pull-left btn btn-sm">
                                                    <i class="ace-icon fa fa-refresh"></i>
                                                    <span class="bigger-110">Reset</span>
                                                </button>
                                                <button type="submit"
                                                        class="width-65 pull-right btn btn-sm btn-success">
                                                    <span class="bigger-110">Register</span>

                                                    <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
                                                </button>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>

                                <div class="toolbar center">
                                    <a href="/account/login" data-target="#login-box" class="back-to-login-link">
                                        <i class="ace-icon fa fa-arrow-left"></i>
                                        Back to login
                                    </a>
                                </div>
                            </div><!-- /.widget-body -->
                        </div><!-- /.signup-box -->
                    </div><!-- /.position-relative -->

                    <div class="navbar-fixed-top align-right">
                        <br/>
                        &nbsp;
                        <a id="btn-login-dark" href="#">Dark</a>
                        &nbsp;
                        <span class="blue">/</span>
                        &nbsp;
                        <a id="btn-login-blur" href="#">Blur</a>
                        &nbsp;
                        <span class="blue">/</span>
                        &nbsp;
                        <a id="btn-login-light" href="#">Light</a>
                        &nbsp; &nbsp; &nbsp;
                    </div>
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div>
</div>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>

<script>
    $( "#registerForm" ).validate({
        rules: {
            username: {
                required: true,
                minLength: 2
            },
            email: {
                required: true,
                email: true
            },
            password: {
                required: true,
                // pwcheck: true,
                minlength: 6
            },
            repeatPassword: {
                required : true,
                equalTo: "#password"
            },
            fullName: {
                required: true,
                minLength: 2
            },
            address: {
                required: true,
                minLength: 2
            },
            phone: {
                required: true,
                matches: "[0-9]+",
                minlength:10,
                maxlength:10
            }
        }

    });
    // $(function () {
    //     $.validator.addMethod("pwcheck",
    //         function(value, element) {
    //             return /^[A-Za-z0-9\d=!\-@._*]+$/.test(value);
    //         });
    // })

</script>
