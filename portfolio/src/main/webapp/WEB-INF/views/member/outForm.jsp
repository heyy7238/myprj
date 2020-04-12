<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>회 원 탈 퇴</title>
 <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/resources/common/css/default.css'/>">
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="<c:url value="/resources/common/js/jquery.vticker.min.js" />"></script>
<script src="<c:url value="/resources/common/js/main.js" />"></script>
 <style>
 
 .login-title{text-align:center;padding:30px 0;}
 #frm{width:980px;margin:0 auto;}
 #outBtn{float:right;color:#fff;padding:10px 30px;background:#c2e3f7;cursor:pointer;}
 </style>
 
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
  <div class="mycontainer">
    <div class="login-wrapper">
      <form id="frm" action="<c:url value='/member/out' />" method="post">
        <div><h3 class="login-title">회원 탈퇴</h3></div>
        <div class="login-content">
          <div><input type="text" name="id" id="id" placeholder="아이디" value="${sessionScope.member.id }" readOnly></div>
          <div><span id="idMsg"></span></div>
          <div><input type="password" name="pw" id="pw" placeholder="비밀번호"></div>
          <div><span id="pwMsg" class="errmsg"><c:if test="${!empty svr_msg}">${svr_msg }</c:if></span></div>
          <div><input type="submit" name="" id="outBtn" value="탈 퇴"></div>
        </div>
      </form>
<!--       <div class="find_info">
        <a href="#">비밀번호 찾기</a>
      </div> -->
    </div>
  </div>
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>