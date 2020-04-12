<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>차트매니아</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/resources/common/css/default.css'/>">
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="<c:url value="/resources/common/js/common.js" />"></script>
<script src="<c:url value="/resources/js/common.js" />"></script>
<script src="<c:url value="/resources/common/js/jquery.vticker.min.js" />"></script>
<script src="<c:url value="/resources/common/js/main.js" />"></script>

</head>
<body>
	<%@ include file="include/header.jsp"%>
	<!-- Main Content -->
    <div id="container">
        <div class="container_inner">
            <!-- TradingView Widget BEGIN -->
	<div class="tradingview-widget-container" style="margin-top: 40px;">
    <div id="tradingview_1ee62"></div>
    <div class="tradingview-widget-copyright">TradingView 제공 <a href="https://kr.tradingview.com/symbols/NASDAQ-AAPL/" rel="noopener" target="_blank"><span class="blue-text">AAPL 차트</span></a></div>
    <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
    <script type="text/javascript">
    new TradingView.widget(
    {
    "width": 980,
    "height": 610,
    "symbol": "OIL_CRUDE",
    "interval": "D",
    "timezone": "Etc/UTC",
    "theme": "light",
    "style": "1",
    "locale": "kr",
    "toolbar_bg": "#f1f3f6",
    "enable_publishing": false,
    "allow_symbol_change": true,
    "container_id": "tradingview_1ee62"
  }
    );
    </script>
  </div>
  <!-- TradingView Widget END -->

            <div class="cont03 clear">
                <div class="notice_wrap">
                    <h3><span>공지사항</span><a href="#">+</a></h3>
                    <div class="notice_inner">
                        <ul>
                            <li><a href="#">-입출금 서비스 중단 안내</a><span>2019-12-19</span></li>
                            <li><a href="#">-입출금 서비스 중단 안내</a><span>2019-12-19</span></li>
                            <li><a href="#">-입출금 서비스 중단 안내</a><span>2019-12-19</span></li>
                            <li><a href="#">-입출금 서비스 중단 안내</a><span>2019-12-19</span></li>
                            <li><a href="#">-입출금 서비스 중단 안내</a><span>2019-12-19</span></li>
                            <li><a href="#">-입출금 서비스 중단 안내</a><span>2019-12-19</span></li>
                            <li><a href="#">-입출금 서비스 중단 안내</a><span>2019-12-19</span></li>
                        </ul>
                    </div>
                </div>
                <div class="qna_wrap">
                    <h3><span>Q&A</span><a href="#">+</a></h3>
                    <div class="qna_inner">
                        <ul>
                            <li><a href="#">-입출금 서비스 문의</a><span>2019-12-19</span></li>
                            <li><a href="#">-입출금 서비스 문의</a><span>2019-12-19</span></li>
                            <li><a href="#">-입출금 서비스 문의</a><span>2019-12-19</span></li>
                            <li><a href="#">-입출금 서비스 문의</a><span>2019-12-19</span></li>
                            <li><a href="#">-입출금 서비스 문의</a><span>2019-12-19</span></li>
                            <li><a href="#">-입출금 서비스 문의</a><span>2019-12-19</span></li>
                            <li><a href="#">-입출금 서비스 문의</a><span>2019-12-19</span></li>
                        </ul>
                    </div>
                </div>
                <div class="delivery_wrap">
                    <h3 class="clear"><span>실시간 시세</span><a href="#">+</a></h3>
                        <div class="delivery_inner" id="delivery_list_wrap">
                            <ul>
                                <li><span class="cp">삼성전자</span> <span class="cp">▲6000 (5.6%) </span></li>
                                <li><span class="cp">SK하이닉스</span> <span class="cp">▲3000 (2.2%) </span></li>
                                <li><span class="cp">KODEX</span> <span class="cp"> ▲2000 (1.3%)</span></li>
                                <li><span class="cp">셀트리온</span> <span class="cp">▲8000 (0.9%) </span></li>
                                <li><span class="cp">일양약품</span> <span class="cp">▲1000 (0.5%)</span></li>
                                <li><span class="cp">카카오</span> <span class="cp">▲5000 (7.7%)</span></li>
                                <li><span class="ready">현대차</span> <span class="ready">▼-2000 (-5.5%)</span></li>
                                <li><span class="ready">한국전력</span> <span class="ready">▼-1200 (-2.2%)</span></li>
                                <li><span class="ready">무학</span> <span class="ready">▼-3000 (-3.3%)</span></li>
                                <li><span class="ready">시디즈</span> <span class="ready">▼-5000 (-4.2%)</span></li>
                                <li><span class="ready">국동</span> <span class="ready">▼-1000 (-1.1%)</span></li>
                                <li><span class="ready">동양네트워크</span> <span class="ready">▼-5000 (-0.5%)</span></li>
                                <li><span class="ready">대상</span> <span class="ready">▼-5000 (-7.7%)</span></li>
                                <li><span class="ready">대성산업</span> <span class="ready">▼-2500 (-7.6%)</span></li>
                                <li><span class="ready">성안</span> <span class="ready">▼-1500 (-8.8%)</span></li>
                                <li><span class="ready">인스코비</span> <span class="ready">▼-2000 (-9.9%)</span></li>
                                <li><span class="ready">대림통상</span> <span class="ready">▼-1300 (-12%)</span></li>
                            </ul>
                        </div>
                  </div>
            </div>
        </div>
    </div>



	
	
	
	
<%@ include file="include/footer.jsp"%>

</body>

</html>


