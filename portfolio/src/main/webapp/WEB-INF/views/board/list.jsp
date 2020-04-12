<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>게시판</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/resources/common/css/default.css'/>">
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="<c:url value="/resources/js/common.js" />"></script>
<script src="<c:url value="/resources/common/js/common.js" />"></script>
<script src="<c:url value="/resources/common/js/jquery.vticker.min.js" />"></script>
<script src="<c:url value="/resources/common/js/main.js" />"></script><style>
#boardList {
	margin: 0 auto;
	width: 980px;
	padding: 10px;
}

#boardList h2 {
	text-align: center;
}

#boardList table {
	width: 100%;
	border: 1px solid #444444;
	border-collapse: collapse;
}

#boardList th, td {
	border: 1px solid #444444;
	padding: 10px;
}

#boardList table th:nth-child(1) {
	width: 6%;
}

#boardList table td:nth-child(1) {
	text-align: center;
}

#boardList table th:nth-child(2) {
	width: 11%;
}

#boardList table th:nth-child(3) {
	width: 28%;
}

#boardList table td:nth-child(3):hover {
	text-decoration: underline;
}

#boardList table th:nth-child(4) {
	width: 23%;
}

#boardList table th:nth-child(5) {
	width: 15%;
}

#boardList table th:nth-child(6) {
	width: 6%;
}

#boardList table td:nth-child(6) {
	text-align: center;
}

#boardList table td {
	padding: 3px;
}

#boardList table {
	font-size: 0.8rem;
}

#boardList table tr td {
	font-size: 0.8rem;
	padding: 20px;
}

#boardList #writeBtn {
	background: #0085a1;
	border: #0085a1;
	width: 100%;
	padding: 2px 3px;
	color: #fff;
}

#boardList #paging, #boardList #search {
	display: flex;
	justify-content: center;
}

#boardList #paging, #boardList #search {
	padding: 10px 5px;
}

#boardList #paging a {
	padding: 3px;
}

#boardList #paging a:hover {
	text-decoration: underline;
}

#boardList #paging a.on {
	
}

#boardList #search input[type="search"] {
	width: 200px;
}

#boardList #search #searchBtn {
	padding: 2px;
}

.mycontainerAll .content {
	width: 100%;
}
</style>
<script src="<c:url value='/resources/js/common.js' />"></script>
<script>
	window.addEventListener("load",init,false);

	function init(){
		//글쓰기 버튼 클릭시
		writeBtn.addEventListener("click",function(e){
			e.preventDefault();
			let returnPage = e.target.getAttribute('data-returnPage');
			location.href=getContextPath()+"/board/writeForm/"+returnPage;
		},false);

		//검색버튼 클릭시
		searchBtn.addEventListener("click",function(e){
			e.preventDefault();
			//console.log("검색!!");
			// 검색어 입력값이 없으면
			if(keyword.value.trim().length == 0) {
				alert('검색어를 입력하세요!');
				keyword.value="";
				keyword.focus();
				return false;
			}

			let stype = searchType.value; 			//검색유형
			let kword = keyword.value.trim();		//검색어

			location.href = getContextPath() + "/board/list/1/" + stype + "/" + kword;
		},false);
	}
	
</script>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<div class="mycontainerAll">
		<div class="content">

			<!-- main -->
			<main>
				<div class="mycontainer main-inner-box">
					<div class="mycontainer mycontainer-sc">
						<div id="boardList">
							<div>
								<button id="writeBtn" data-returnPage="${pc.rc.reqPage }"
									style="width: 10%; padding: 10px 0; float: right; margin-bottom: 20px;cursor: pointer;">글쓰기</button>
							</div>
							<div>
								<table>
									<tr>
										<th>번호</th>
										<th>분류</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일</th>
										<th>조회수</th>
									</tr>
									<c:forEach var="rec" items="${list }">
										<fmt:formatDate value="${rec.bcdate }"
											pattern="yyyy/MM/dd HH:mm" var="cdate" />
										<tr>
											<td>${rec.bnum }</td>
											<td>${rec.boardCategoryVO.cname }</td>
											<td><c:forEach begin="1" end="${rec.bindent }">&nbsp;&nbsp;</c:forEach>
												<c:if test="${rec.bindent > 0 }">
													<i class="fas fa-reply"></i>
													<%-- <img src="${contextRoot }/resources/img/icon_reply.gif"/> --%>
												</c:if> <a
												href="${pageContext.request.contextPath }/board/view/${pc.rc.reqPage}/${rec.bnum }">
													${rec.btitle } </a></td>
											<td>${rec.bnickname }(${rec.bid })</td>
											<td>${cdate }</td>
											<td>${rec.bhit }</td>
										</tr>
									</c:forEach>



								</table>
							</div>
							<div id="paging">
								<!-- 처음페이지 / 이전페이지 이동 -->
								<c:if test="${pc.prev }">
									<a
										href="${contextRoot }/board/list/1/${pc.fc.searchType}/${pc.fc.keyword}"><i
										class="fas fa-angle-double-left"></i></a>
									<a
										href="${contextRoot }/board/list/${pc.startPage-1}/${pc.fc.searchType}/${pc.fc.keyword}"><i
										class="fas fa-angle-left"></i></a>
								</c:if>
								<c:forEach var="pageNum" begin="${pc.startPage }"
									end="${pc.endPage }">
									<!-- 현재페이지와 요청페이지가 다르면 -->
									<c:if test="${pc.rc.reqPage != pageNum }">
										<a
											href="${contextRoot }/board/list/${pageNum }/${pc.fc.searchType}/${pc.fc.keyword}"
											class="off">${pageNum }</a>
									</c:if>
									<!-- 현재페이지와 요청페이지가 같으면 -->
									<c:if test="${pc.rc.reqPage == pageNum }">
										<a
											href="${contextRoot }/board/list/${pageNum }/${pc.fc.searchType}/${pc.fc.keyword}"
											class="on">${pageNum }</a>
									</c:if>
								</c:forEach>
								<!-- 다음페이지 / 최종페이지 이동 -->
								<c:if test="${pc.next }">
									<a
										href="${contextRoot }/board/list/${pc.endPage+1}/${pc.fc.searchType}/${pc.fc.keyword}"><i
										class="fas fa-angle-right"></i></a>
									<a
										href="${contextRoot }/board/list/${pc.finalEndPage}/${pc.fc.searchType}/${pc.fc.keyword}"><i
										class="fas fa-angle-double-right"></i></a>
								</c:if>
							</div>
							<div id="search">
								<form>
									<select name="searchType" id="searchType">
										<option value="TC"
											<c:out value="${pc.fc.searchType == 'TC' ? 'selected':'' }" />>제목+내용</option>
										<option value="T"
											<c:out value="${pc.fc.searchType == 'T' ? 'selected':'' }" />>제목</option>
										<option value="C"
											<c:out value="${pc.fc.searchType == 'C' ? 'selected':'' }" />>내용</option>
										<option value="N"
											<c:out value="${pc.fc.searchType == 'N' ? 'selected':'' }" />>작성자</option>
										<option value="I"
											<c:out value="${pc.fc.searchType == 'I' ? 'selected':'' }" />>아이디</option>
									</select> <input type="search" name="keyword" id="keyword"
										value="${pc.fc.keyword }" />
									<button id="searchBtn">검색</button>


								</form>
							</div>
						</div>
					</div>
				</div>
			</main>

			<!-- footer -->
			<%@ include file="../include/footer.jsp"%>
		</div>
	</div>
</body>
</html>

