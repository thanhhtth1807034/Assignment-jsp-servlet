<%@ page import="com.assignment.util.ApplicationConstant" %>
<!-- Header Section Begin -->
<%@include file="../taglib.jsp" %>
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i> hello@gmail.com</li>
                            <li>Free Shipping for all Order of $99</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        </div>
                        <div class="header__top__right__language">
                            <img src="${pageContext.request.contextPath}/assert/web/img/language.png" alt="">
                            <div>English</div>
                            <span class="arrow_carrot-down"></span>
                            <ul>
                                <li><a href="#">English</a></li>
                            </ul>
                        </div>
                        <div class="header__top__right__auth">
                            <c:if test="${sessionScope.currentLoggedIn != null}">
                                <a href="${pageContext.request.contextPath}/user/profile"><i class="fa fa-user"></i>
                                        ${sessionScope.currentLoggedIn.username}
                                </a>

                            </c:if>
                            <c:if test="${sessionScope.currentLoggedIn == null}">
                                <a href="${pageContext.request.contextPath}/account/login"><i class="fa fa-user"></i>
                                    Login
                                </a>
                            </c:if>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="./index"><img src="img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li class="active"><a href="./index">Home</a></li>
                        <li><a href="./shop-grid">Shop</a></li>
                        <li><a href="#">Pages</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="./shop-details">Shop Details</a></li>
                                <li><a href="./shoping-cart">Shoping Cart</a></li>
                                <li><a href="./checkout">Check Out</a></li>
                                <li><a href="./blog-details">Blog Details</a></li>
                            </ul>
                        </li>
                        <li><a href="./blog">Blog</a></li>
                        <li><a href="./contact">Contact</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                        <li><a href="#"><i class="fa fa-shopping-bag"></i>
                            <c:if test="${requestScope.carts!=null}">
                                <span>
                                        ${requestScope.carts.size()}
                                </span>
                            </c:if>
                            <c:if test="${requestScope.carts==null}">
                                <span>0</span>
                            </c:if>
                        </a></li>
                    </ul>
                    <div class="header__cart__price">item:
                        <c:if test="${requestScope.tt!=null}">
                            <span>$${requestScope.tt}</span>
                        </c:if>
                        <c:if test="${requestScope.tt==null}">
                            <span>$0</span>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<!-- Header Section End -->