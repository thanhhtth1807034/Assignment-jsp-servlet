<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/taglib.jsp" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
<!-- Hero Section Begin -->
<%--                <section class="hero">--%>
<%--                    <div class="container">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-lg-3">--%>
<%--                                <div class="hero__categories">--%>
<%--                                    <div class="hero__categories__all">--%>
<%--                                        <i class="fa fa-bars"></i>--%>
<%--                                        <span>All Categories</span>--%>
<%--                                    </div>--%>
<%--                                    <ul>--%>
<%--                                        &lt;%&ndash;                        <li><a href="#">Imported Fruit</a></li>&ndash;%&gt;--%>
<%--                                        &lt;%&ndash;                        <li><a href="#">Domestic Fruit</a></li>&ndash;%&gt;--%>
<%--                                        <li><a href="#">Fresh Meat</a></li>--%>
<%--                                        <li><a href="#">Vegetables</a></li>--%>
<%--                                        <li><a href="#">Fruit & Nut Gifts</a></li>--%>
<%--                                        <li><a href="#">Fresh Berries</a></li>--%>
<%--                                        <li><a href="#">Ocean Foods</a></li>--%>
<%--                                        <li><a href="#">Butter & Eggs</a></li>--%>
<%--                                        <li><a href="#">Fastfood</a></li>--%>
<%--                                        <li><a href="#">Fresh Onion</a></li>--%>
<%--                                        <li><a href="#">Papayaya & Crisps</a></li>--%>
<%--                                        <li><a href="#">Oatmeal</a></li>--%>
<%--                                        <li><a href="#">Fresh Bananas</a></li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-lg-9">--%>
<%--                                <div class="hero__search">--%>
<%--                                    <div class="hero__search__form">--%>
<%--                                        <form action="#">--%>
<%--                                            <div class="hero__search__categories">--%>
<%--                                                All Categories--%>
<%--                                                <span class="arrow_carrot-down"></span>--%>
<%--                                            </div>--%>
<%--                                            <input type="text" placeholder="What do yo u need?">--%>
<%--                                            <button type="submit" class="site-btn">SEARCH</button>--%>
<%--                                        </form>--%>
<%--                                    </div>--%>
<%--                                    <div class="hero__search__phone">--%>
<%--                                        <div class="hero__search__phone__icon">--%>
<%--                                            <i style="margin-top: 34%" class="fa fa-phone"></i>--%>
<%--                                        </div>--%>
<%--                                        <div class="hero__search__phone__text">--%>
<%--                                            <h5>+65 11.188.888</h5>--%>
<%--                                            <span>support 24/7 time</span>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>


<!-- Hero Section End -->

<!-- Categories Section Begin -->
<section class="categories">
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel">
                <div class="col-lg-3">
                    <div class="categories__item set-bg"
                         data-setbg="https://colorlib.com/preview/theme/ogani/img/categories/cat-1.jpg">
                        <h5><a href="#">Fresh Fruit</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg"
                         data-setbg="https://colorlib.com/preview/theme/ogani/img/categories/cat-2.jpg">
                        <h5><a href="#">Dried Fruit</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg"
                         data-setbg="https://colorlib.com/preview/theme/ogani/img/categories/cat-3.jpg">
                        <h5><a href="#">Vegetables</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg"
                         data-setbg="https://colorlib.com/preview/theme/ogani/img/categories/cat-4.jpg">
                        <h5><a href="#">drink fruits</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg"
                         data-setbg="https://colorlib.com/preview/theme/ogani/img/categories/cat-5.jpg">
                        <h5><a href="#">drink fruits</a></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Categories Section End -->

<!-- Featured Section Begin -->
<section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>Featured Product</h2>
                </div>
                <div class="featured__controls">
                    <ul>
                        <li class="active" data-filter="*">All</li>
                        <li data-filter=".oranges">Oranges</li>
                        <li data-filter=".fresh-meat">Fresh Meat</li>
                        <li data-filter=".vegetables">Vegetables</li>
                        <li data-filter=".fastfood">Fastfood</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row featured__filter">
            <c:forEach var="fruits" items="${requestScope.listFruits}">
                <%--                <a href="/shop-detail?id=${fruits.id}" >--%>
<%--                    <div class="col-lg-3 col-md-4 col-sm-6">--%>
<%--                        <div class="featured__item">--%>
<%--                            <div class="featured__item__pic set-bg" data-setbg="${fruits.thumbnail}">--%>
<%--                                <ul class="featured__item__pic__hover">--%>
<%--                                    <li><a href="#"><i class="fa fa-heart" style="padding-top: 12px"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-retweet" style="padding-top: 12px"></i></a></li>--%>
<%--                                    <li><a href="/Add-Cart?frurtid=${fruits.id}&&quantity=1"><i class="fa fa-shopping-cart" style="padding-top: 12px"></i></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="featured__item__text">--%>
<%--                                <h6><a href="#">${fruits.name}</a></h6>--%>
<%--                                <h5>${fruits.price} $</h5>--%>
                    <div class="col-lg-3 col-md-4 col-sm-6"  style="cursor: pointer" onclick="toDetail(${fruits.id})">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" style="background-size: contain" data-setbg="${fruits.thumbnail}">
                                <ul class="featured__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart" style="padding-top: 12px"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet" style="padding-top: 12px"></i></a></li>
                                    <li><a href="/Add-Cart?frurtid=${fruits.id}&&quantity=1"><i
                                            class="fa fa-shopping-cart" style="padding-top: 12px"></i></a></li>
                                </ul>
                            </div>


                            <div class="featured__item__text">
                                <h6><a href="#">${fruits.name}</a></h6>
                                <h5>${fruits.price} $</h5>
                            </div>
                        </div>
                    </div>
            </c:forEach>
        </div>
    </div>
</section>
<!-- Featured Section End -->

<!-- Banner Begin -->
<div class="banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="<c:url value='assert/web/img/banner/banner-1.jpg'/>" alt="">
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="<c:url value='assert/web/img/banner/banner-2.jpg'/> " alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner End -->

<!-- Blog Section Begin -->
<section class="from-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title from-blog__title">
                    <h2>From The Blog</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="<c:url value="assert/web/img/blog/blog-1.jpg"/>" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">Cooking tips make cooking simple</a></h5>
                        <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="<c:url value="assert/web/img/blog/blog-2.jpg"/>" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">6 ways to prepare breakfast for 30</a></h5>
                        <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="<c:url value="assert/web/img/blog/blog-3.jpg"/>" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">Visit the clean farm in the US</a></h5>
                        <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
