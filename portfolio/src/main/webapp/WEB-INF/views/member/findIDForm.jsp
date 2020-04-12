<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>아이디 찾기</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/resources/common/css/default.css'/>">
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="<c:url value="/resources/common/js/common.js" />"></script>
<script src="<c:url value="/resources/js/common.js" />"></script>
<script src="<c:url value="/resources/common/js/jquery.vticker.min.js" />"></script>
<script src="<c:url value="/resources/common/js/main.js" />"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

  <div class="mycontainer">
    <div class="login-wrapper">
      <form id="frm">
        <div><h3 class="login-title">아이디 찾기</h3></div>
        <div class="login-content">
          <div><input type="tel" name="tel" id="tel" placeholder="전화번호"></div>
          <div><span id="telMsg"></span></div>
          <div><input type="date" name="birth" id="birth" placeholder="생년월일"></div>
          <div><span id="birthMsg" class="errmsg"></span></div>
          <div><input type="id" name="id" id="id" readOnly="readonly" placeholder="찾은아이디"></div>
          <div><input type="button" id="findIDBtn" value="아이디찾기"></div>
        </div>
      </form>
      <div class="find_info">
        <a href="<c:url value='/member/findIDForm' />">아이디 찾기</a>
        <span>|</span>
        <a href="#">비밀번호 찾기</a>
        <span>|</span>
        <a href="<c:url value='/member/loginForm' />">로그인</a>
      </div>
    </div>
  </div>
  
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>