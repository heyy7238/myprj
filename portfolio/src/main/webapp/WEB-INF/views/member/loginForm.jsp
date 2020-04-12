<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>회 원 가 입</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/resources/common/css/default.css'/>">
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="<c:url value="/resources/common/js/jquery.vticker.min.js" />"></script>
<script src="<c:url value="/resources/common/js/main.js" />"></script>


<style>
.loginBtn{background:#c2e3f7!important;width:100%;cursor:pointer;color:#fff;}
.errmsg{color:red;}
</style>

</head>
<body>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

  <div class="mycontainer" id="container">
    <div class="login-wrapper login_area">
      <form id="frm" action="<c:url value='/login?reqURI=${reqURI }' />" method="post">
      
      
      
        <div><h3 class="login_title">로 그 인</h3></div>
        <div class="login-content user_box">
          <li><input type="text" name="id" id="id" value="" placeholder="아이디"></li>
          <li><span id="idMsg"></span></li>
          <li><input type="password" name="pw" id="pw" placeholder="비밀번호"></li>
          <li><span id="pwMsg" class="errmsg"><c:if test="${!empty svr_msg}">${svr_msg }</c:if></span></li>
          <li><input type="submit" name="" id="loginBtn" class="loginBtn"value="로 그 인"></li>
            
        <div class="other_login">
          <ul>          
            <li><a href=""><img src="${pageContext.request.contextPath}/resources/images/common/btn_login_naver.png" alt=""></a></li>
            <li><a href=""><img src="${pageContext.request.contextPath}/resources/images/common/btn_login_facebook.png" alt=""></a></li>
          </ul>
        </div>
           <div class="find_info find_area clear">
      <ul>
      <li><a href="<c:url value='/member/findIDForm' />">아이디 찾기</a></li>
      <li><a href="<c:url value='/member/findPWForm' />">비밀번호 찾기</a></li>
      <li><a href="<c:url value='/member/joinForm' />">회원가입</a></li>
      </ul>
      </div>
        </div>
                       
      
      </form>
     
    </div>
  </div>
  
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
  
</body>
</html>