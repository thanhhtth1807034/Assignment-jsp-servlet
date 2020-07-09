<style>
    .error{
        color: red;
    }
</style>
<div class="main-container">
    <div class="main-content">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container">
                    <div class="center">
                        <h1>

                            <span class="green">Login</span>
                            <%--                            <span class="white" id="id-text2">Application</span>--%>
                        </h1>
                        <%--                        <h4 class="blue" id="id-company-text">&copy; Company Name</h4>--%>
                    </div>

                    <div class="space-6"></div>

                    <div class="position-relative">
                        <div id="login-box" class="login-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header blue lighter bigger">
                                        <i class="ace-icon fa fa-coffee green"></i>
                                        Please Enter Your Information
                                    </h4>

                                    <div class="space-6"></div>

                                    <form id="loginForm" method="post" action="/account/login">
                                        <fieldset>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control"
                                                                   placeholder="Username" name="username"/>
															<i class="ace-icon fa fa-user "></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control"
                                                                   placeholder="Password" name="password"/>
															<i class="ace-icon fa fa-lock"></i>
														</span>
                                            </label>

                                            <div class="space"></div>

                                            <div class="clearfix">
                                                <label class="inline">
                                                    <input type="checkbox" class="ace"/>
                                                    <span class="lbl"> Remember Me</span>
                                                </label>

                                                <button type="submit"
                                                        class="width-35 pull-right btn btn-sm btn-success">
                                                    <i class="ace-icon fa fa-key"></i>
                                                    <span class="bigger-110">Login</span>
                                                </button>
                                            </div>

                                            <div class="space-4"></div>
                                        </fieldset>
                                    </form>

                                </div><!-- /.widget-main -->

                                <div class="toolbar clearfix" >
                                    <div>
                                        <a href="#" data-target="#forgot-box" class="forgot-password-link">
<%--                                            <i class="ace-icon fa fa-arrow-left"></i>--%>
<%--                                            I forgot my password--%>
                                        </a>
                                    </div>

                                    <div>
                                        <a href="/account/register" class="user-signup-link">
                                            I want to register
                                            <i class="ace-icon fa fa-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div><!-- /.widget-body -->
                        </div><!-- /.login-box -->
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
    </div><!-- /.main-content -->
</div>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>

<script>
    $( "#loginForm" ).validate({
        rules: {
            username: {
                required: true,
                minLength: 2
            },
            password: {
                required: true,
                // pwcheck: true,
                minlength: 6
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





