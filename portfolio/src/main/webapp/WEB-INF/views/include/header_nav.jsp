<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header>           
<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav"  style="background-color:#000;">
    <div class="container">
      <a class="navbar-brand" href="${pageContext.request.contextPath }/">HEY BLOG</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath }/board/list">글목록</a>
          </li>
          <!-- 로그인전 -->
           <c:if test="${empty member }" >
          <li class="nav-item">
            <a class="nav-link" href="<c:url value='/loginForm' />">로그인</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<c:url value='/member/joinForm' />">회원가입</a>
          </li>
          </c:if>
		  <!-- 로그인후 -->          
          <c:if test="${!empty member }" >
          <li class="nav-item">
            <a class="nav-link" href="<c:url value='/logout' />">로그아웃</a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="<c:url value='/member/modifyForm/${sessionScope.member.id }' />">${member.nickname}님</a>
          </li>         
           <li class="nav-item">
            <a class="nav-link" href="<c:url value='/member/outForm' />">회원탈퇴</a>
          </li>         
          </c:if>
        </ul>
      </div>
    </div>
  </nav>
  </header>
