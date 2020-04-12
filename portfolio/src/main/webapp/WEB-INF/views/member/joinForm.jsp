<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
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
<script src="<c:url value="/resources/js/memberJoin.js" />"></script>

<style>
.content h2{text-align:center;padding:20px 0;}
.content{width:980px;margin:0 auto;}
.content .errmsg{color:red;}
#joinBtn{display:inline-block;cursor:pointer;text-align:center;padding:10px 30px;background:#c2e3f7;color:#fff;float:right;}



</style>



</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
	
  <form:form id="joinFrm" action="${pageContext.request.contextPath }/member/join" 
             modelAttribute="mvo" method="post" style="width: 980px;margin: 30px auto;">
    <div class="mycontainer">
      <div class="content">
      <h2>회원가입</h2>       
      
      <table>
      <caption>기본정보입력</caption>
      <colgroup>
      <col width="150">
      <col>
      </colgroup>
      <tbody>
      <tr>
      <th>
      <form:label path="id">아이디</form:label>
      </th>
      <td>
      <form:input type="text" path="id" />
      <div>
        	<span class="errmsg" id="id_errmsg"></span>
        	<form:errors path="id" cssClass="errmsg"></form:errors>
       </div>
      </td>
      </tr>
      <tr>
      <th>
       <form:label path="pw">비밀번호</form:label>
      </th>
      <td>
      <form:input type="password" path="pw" />
       <div>
        	<span class="errmsg" id="pw_errmsg"></span>                
        	<form:errors path="pw" cssClass="errmsg"></form:errors>
        </div>
      </td>
      </tr>
      
      <tr>
      <th>
      <label for="pwChk">비밀번호 재확인</label>
      </th>
      <td>
      <input type="password" id="pwChk">
       <div><span class="errmsg" id="pwChk_errmsg"></span></div>           
      </td>
      </tr>
      
      <tr>
      <th>
      <form:label path="tel">전화번호</form:label>
      </th>
      <td>
      <form:input type="tel" path="tel" />
       <div>
        	<span class="errmsg" id="tel_errmsg"></span>
			<form:errors path="tel" cssClass="errmsg"></form:errors>
		</div>  
      </td>
      </tr>
      
      <tr>
      <th>
      <form:label path="nickname">별칭</form:label>
      </th>
      <td>
      <form:input type="text" path="nickname" />
        <div>
        	<span class="errmsg" id="nickname_errmsg"></span>
			<form:errors path="nickname" cssClass="errmsg"></form:errors>
		</div> 
      </td>
      </tr>
      
      <tr>
      <th>
      <form:label path="region">지역</form:label>
      </th>
      <td>
      <div>
          <form:select path="region">
            <option value="0">== 선 택 ==</option>
            <form:options path="region" items="${region }" itemValue="code" itemLabel="label" />
          </form:select>
        </div>
		<div>
			<span class="errmsg" id="region_errmsg"></span>                  
			<form:errors path="region" cssClass="errmsg"></form:errors>
		</div>
      </td>
      </tr>
      
      <tr>
      <th>
      <form:label path="gender">성별</form:label>
      </th>
      <td>
      <form:radiobuttons path="gender" items="${gender }" itemValue="code" itemLabel="label"/>
      <div>
			<span class="errmsg" id="gender_errmsg"></span>                     
			<form:errors path="gender" cssClass="errmsg"></form:errors>
    	</div>
      </td>
      </tr>
      <tr>
      <th>
      <form:label path="birth">생년월일</form:label>
      </th>
      <td>
      <form:input type="date" path="birth" />
      <div>
		<span class="errmsg" id="birth_errmsg"></span>           
		<form:errors path="birth" cssClass="errmsg"></form:errors>
	</div>
		<div style="color:#f00;font-weight:bold;font-size:0.8.rem">${svr_msg }</div>
      </td>
      </tr>
      </tbody>
      </table>
				                    
        <div><button type="submit" id="joinBtn">가 입 하 기</button></div>
      </div>
    </div>
  </form:form>
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>