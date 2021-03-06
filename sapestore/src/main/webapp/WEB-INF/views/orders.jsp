<%@ page language="java" contentType="text/html; charset=UTF-8"
       pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME</title>
<c:set var="context" value="${pageContext.request.contextPath}" />
<script type="text/javascript"
       src="${context}/resources/js/pagination.js"></script>
<link rel="stylesheet" href="${context}/resources/css/home.css">
<link rel="stylesheet" href="${context}/resources/css/style.css">
<link href="${context}/resources/styles/fpc.css" rel="stylesheet">
<link rel="stylesheet"
       href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
       src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
       src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<style>
.details-wrapper {
       display: flex;
       flex-wrap: wrap;
}

.book-list {
       display: flex;
       flex-direction: column;
}

.book-image {
       width: 100px
}

body {
       background-color: #cacfc0
}

.footer-wrapper {
       padding: 0
}

.container-footer {
       background-color: #000;
}

.container-footer {
       display: flex;
       justify-content: center;
}

.footer-privacy-details {
       flex: 1;
       justify-content: center;
}

.details-wrapper-container {
       flex: 1;
}

.book-store-wrapper {
       display: flex;
       flex-direction: column;
       height: 100%;
}
.modal-dialog {
    width: 80%; 
}
.close {
	padding-left: 10px;
}

.badge {
	background-color: #de2728;
}
</style>

<body>

       <div class="container-fluid book-store-wrapper">
              <div class="row">
                     <div class="col-lg-12">
                           <%@ include file="header.jsp"%>
                     </div>
              </div>
              <h1>Order Confirmation</h1>
              <div class="row details-wrapper-container">
                     <div class="col-lg-2"></div>
                     <div class="col-lg-8">
                           <h2>Shipping Address</h2>
                           <table>
                                  <tr>
                                         <td>${shippingAddress.addressLine1 }</td>
                                  </tr>
                                  <tr>
                                         <td>${shippingAddress.addressLine2 }</td>
                                  </tr>
                                  <tr>
                                         <td>${shippingAddress.city }</td>
                                  </tr>
                                  <tr>
                                         <td>${shippingAddress.state }</td>
                                  </tr>
                                  <tr>
                                         <td>${shippingAddress.pin }</td>
                                  </tr>
                                  <tr>
                                         <td>${shippingAddress.phoneNumber }</td>
                                  </tr>
                           </table>

                           <br />

                           <h2>Order Summary</h2>
                           <table class="table table-condensed">
                                  <thead>
                                  <tr>
                                         <th>S.NO</th>
                                         <th>BOOK NAME</th>
                                         <th>QUANTITY</th>
                                         <th>PRICE</th>
                                         <th>SUB TOTAL</th>
                                         </tr>
                                  </thead>
                                  <tbody>
                                         <c:forEach var="cartItem" items="${cartList}">
                                                <tr >
                                                       <td>${cartItem.id}</td>
                                                       <td>${cartItem.bookName}</td>
                                                       <td>${cartItem.quantity}</td>
                                                       <td>
                                                              &#8377 ${cartItem.bookPrice}</td>
                                                       <td>&#8377 ${cartItem.subtotal}</td>
                                                </tr>
                                         </c:forEach>
                                  </tbody>
                           </table>
                           <h4 style="text-align: right">Total Price: &#8377 ${cart.cartPrice }</h4>
                           <a href="${context}/"><button type="submit"
                                         class="btn btn-info">Shop More</button></a>
<a href="${context}/payment"><button type="submit" class="btn btn-info" style="float:right">payment</button></a> 

                     </div>
              </div>
              <div class="row">
                     <div class="col-lg-12 footer-wrapper">
                           <%@ include file="footer.jsp"%>
                     </div>
              </div>
       </div>
</body>
</html>
