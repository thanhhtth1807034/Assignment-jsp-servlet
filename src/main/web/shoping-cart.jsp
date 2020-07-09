<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/7/2020
  Time: 12:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Hero Section End -->


<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="https://colorlib.com/preview/theme/ogani/img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Shopping Cart</h2>
                    <div class="breadcrumb__option">
                        <a href="./index.html">Home</a>
                        <span>Shopping Cart</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Shoping Cart Section Begin -->
<section class="shoping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__table">
                    <table id="tb">
                        <thead>
                        <tr>
                            <th class="shoping__product">Products</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="cart" items="${requestScope.carts}">
                            <c:set var="total" value="${cart.price * cart.quantity}"/>
                            <tr>
                                <td class="shoping__cart__item">
                                    <img width="20%" src="${cart.image}" alt="">
                                    <h5>${cart.fruitName}</h5>
                                </td>
                                <td class="shoping__cart__price">
                                    $${cart.price}
                                </td>
                                <td class="shoping__cart__quantity">
                                    <div class="quantity">
                                        <div class="pro-qty">
                                            <span onclick="updatecart1(${cart.fruitId})" class="dec qtybtn">-</span>
                                            <input  type="text" disabled id="quantity_${cart.fruitId}" value="${cart.quantity}">
                                            <span onclick="updatecart2(${cart.fruitId})" class="inc qtybtn">+</span>
                                        </div>
                                    </div>
                                </td>
                                <td class="shoping__cart__total">
                                    $${total}
                                </td>
                                <input type="hidden" id="fruitid" value="${cart.fruitId}">

                                <td class="shoping__cart__item__close">
                                    <form action="/Add-Cart" method="post">
                                        <input type="hidden" name="frurtdeleteid" value="${cart.fruitId}">
                                        <button type="submit"><span class="icon_close"></span>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__btns">
                    <a href="#" class="primary-btn cart-btn">CONTINUE SHOPPING</a>
                    <button id="update" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                        Upadate Cart</button>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="shoping__continue">
                    <div class="shoping__discount">
                        <h5>Discount Codes</h5>
                        <form action="#">
                            <input type="text" placeholder="Enter your coupon code">
                            <button type="submit" class="site-btn">APPLY COUPON</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 hi">
                <div class="shoping__checkout">
                    <h5>Cart Total</h5>
                    <ul id="bo">
                        <li class="il">Subtotal <span class="load">$${requestScope.tt}</span></li>
                        <li>Total <span class="load">$${requestScope.tt}</span></li>
                    </ul>
                    <a href="#" class="primary-btn">PROCEED TO CHECKOUT</a>
                </div>
            </div>
        </div>
    </div>
</section>