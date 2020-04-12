<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>           
<div id="dim">
    <div class="dim_bg"></div>
    <div class="dim_inner">
        <ul>
            <li><a href="<c:url value='/loginForm'/>">로그인</a></li>
            <li><a href="<c:url value='/member/joinForm'/>">회원가입</a></li>
            <li><a href="#">자유게시판</a></li>
            <li><a href="#">ID/비밀번호 찾기</a></li>
            <li><a href="#">고객센터</a></li>            
        </ul>
    </div>
</div>
<div id="mobile_menu">
    <div class="mobile_menu_inner">
        <div class="result_wrap">
            <div class="m_search_box"><input type="text" name="" id="" placeholder="검색어를 입력하세요."></div>
                <div class="m_hot_keyword">
                    <p>인기 검색어</p>
                    <ul>
                        <li><a href="#a">삼성전자우</a></li>
                        <li><a href="#a">진에어</a></li>
                        <li><a href="#a">대한항공</a></li>                        
                    </ul>
                </div>
            </div>    
        </div>
    </div>
</div>
<div class="wrapper">
    <div id="header">
        <div class="header_inner">
            <div class="header_top clear">
            <!-- 로그인전 -->
             <c:if test="${empty member }" >
                    <ul class="menu clear">
                        <li><a href="<c:url value='/loginForm'/>">로그인</a></li>
                        <li><a href="<c:url value='/member/joinForm'/>">회원가입</a></li>
                        <li><a href="#">ID/비밀번호 찾기</a></li>                        
                        <li><a href="#">고객센터</a></li>
                    </ul>
              </c:if>
              <!-- 로그인후 --> 
             <c:if test="${!empty member }" >
                    <ul class="menu clear">
                        <li><a href="<c:url value='/logout' />">로그아웃</a></li>
                        <li><a href="<c:url value='/member/modifyForm/${sessionScope.member.id }'/>">${member.nickname}님</a></li>
                        <li><a href="<c:url value='/member/outForm' />">회원탈퇴</a></li>
                        <li><a href="#">고객센터</a></li>
                    </ul>
              </c:if>
            </div>
            <div class="header_bottom">
                <div class="cont clear">
                    <a href="#" id="btn_aside">
                   	 		<img src="${pageContext.request.contextPath}/resources/images/common/btn_aside_menu.png" alt="서브 메뉴">
                    </a>
                    <h1 class="logo">
                        <a href="<c:url value='/'/>">
                            <img src="${pageContext.request.contextPath}/resources/images/common/logo_main.png" alt="로고">
                        </a>
                    </h1>
                    <a href="#" id="btn_search"><img src="${pageContext.request.contextPath}/resources/images/common/btn_search.png" alt="서브 메뉴 찾기"></a>   
                    <div class="search_wrap">
                        <form action="">
                            <input type="text" name="" id="" placeholder="키워드를 입력하세요.">
                            <input type="submit" value="검색">
                        </form>
                    </div>
                    <div class="kakao_sns"><img src="${pageContext.request.contextPath}/resources/images/common/banner_kakao.png" alt="카카오톡1:1상담"></div> 
                    <div class="top_banner"><img src="${pageContext.request.contextPath}/resources/images/common/banner_customer.PNG" alt="고객센터"></div>
                </div>             
            </div> 
            <div class="gnb clear">
                <ul class="clear">
                    <li><a href="#">뉴스</a></li>
                    <li><a href="${pageContext.request.contextPath }/board/list">자유게시판</a></li>
                    <li><a href="#">분석게시판</a></li>
                    <li><a href="#">공지사항</a></li>
                    <li><a href="#">전국지점안내</a></li>
                    <li><a href="#">고객센터</a></li>
                </ul>
            </div>
        </div>
    </div>
    


