window.addEventListener("load",function(){
//로그인 페이지
//로그인 유효성 체크
const ID = "asdasd@naver.com";
const PW = "1234";

var idTag = document.getElementById("id");
var pwTag = document.getElementById("pw");
var btnLogin = document.getElementById("btn_login");

btnLogin.addEventListener("click",function(e){
  e.preventDefault;
  checkLogin();
});

function checkLogin(){
  var idValue = idTag.value;
  var pwValue = pwTag.value;
  if(idValue.trim().length == 0){
    alert("아이디를 입력하세요.");
    id.focus();
    return;
  }
  if(pwValue.trim().length ==0){
    alert("비밀번호를 입력하세요.");
    pw.focus();
    return;
  }

  //회원 존재유무체크
if(idValue.trim() == ID && pwValue.trim() == PW){
  //메인페이지 이동
 window.location.href = "http://localhost:5501/main_login_on.html";
}else{
  alert("가입하지 않은 아이디 이거나,잘못된 비밀번호 입니다.");   
  return;
  }
}
});

//이메일 직접입력,선택
function Input_Email(SelId, InputId){
	if ($('#'+SelId).val() == ''){
		$('#'+InputId).removeAttr('readonly', true);
		$('#'+InputId).val('');
		$('#'+InputId).focus();
	}else{
		$('#'+InputId).attr('readonly', true);
		$('#'+InputId).val($('#'+SelId).val());
	}
}
// 이메일 체크 정규식
function isEmail(asValue) {
	var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	return regExp.test(asValue); // 형식에 맞는 경우 true 리턴	
}

// 핸드폰 번호 체크 정규식
function isCelluar(asValue) {
	var regExp = /^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$/;
	return regExp.test(asValue); // 형식에 맞는 경우 true 리턴
}

// 비밀번호 체크 정규식
function isJobPassword(asValue) {
	var regExp = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,10}$/; //  8 ~ 10자 영문, 숫자 조합
	return regExp.test(asValue); // 형식에 맞는 경우 true 리턴
}

function checkValid(){
  // alert('호출됨');
//사용자 입력값 읽어오기

//1) 아이디 체크(이메일 형식)
var joinId = document.getElementById("join_id");
var idErrmsg = document.getElementById("id_errmsg");
  if(!isEmail(joinId.value)){
    idErrmsg.innerHTML = " 다시 입력하세요 ex) abcde@google.com";
    idErrmsg.style.color = "red";
    return;
  }else{
    idErrmsg.innerHTML = "";
  }

//2) 비밀번호 체크
var joinPw = document.getElementById("join_pw");
var pwErrmsg = document.getElementById("pw_errmsg");
if(!isJobPassword(joinPw.value)){
  pwErrmsg.innerHTML = " 다시 입력하세요.";
  pwErrmsg.style.color = "red";
  return;
}else{
  pwErrmsg.innerHTML = "";
}

//비밀번호 2차 확인
var joinRpw = document.getElementById("join_rpw");
var rpwErrmsg = document.getElementById("rpw_errmsg");
if(joinPw.value != joinRpw.value){
  rpwErrmsg.innerHTML = "비밀번호가 일치하지 않습니다.";
  rpwErrmsg.style.color = "red";
  return;  
}else{
  rpwErrmsg.innerHTML = "";
}
//메일 수신여부
var receiveMail = document.getElementsByName("email_receive");
var mailErrmsg = document.getElementById("mail_errmsg");
var isMailSelected = false;
for(var i=0;i<receiveMail.length;i++){
if(receiveMail[i].checked == true){
  isMailSelected = true;
  }
}
if(!isMailSelected){
  mailErrmsg.innerHTML = "수신여부를 선택하세요.";
  mailErrmsg.style.color = "red";
  return;
}else{
  mailErrmsg.innerHTML = "";
}

//지역 체크
var joinRegion = document.getElementById("join_region");
var regionErrmsg = document.getElementById("region_errmsg");
if(joinRegion.selectedIndex == 0){
  regionErrmsg.innerHTML = "지역을 선택해 주세요.";
  regionErrmsg.style.color = "red";
  return;
}else{
  regionErrmsg.innerHTML = "";
}
//성별 체크
var joinSex = document.getElementsByName("sex");
var sexErrmsg = document.getElementById("sex_errmsg");
var isSexSelected = false;
for(var i=0;i<joinSex.length;i++){
  if(joinSex[i].checked == true){
    isSexSelected=true;
  }
}
if (!isSexSelected){
  sexErrmsg.innerHTML = "성별을 선택하세요.";
  sexErrmsg.style.color = "red";
  return;
}else{
  sexErrmsg.innerHTML = "";
}
//전화번호
var joinTel = document.getElementById("join_tel");
var telErrmsg = document.getElementById("tel_errmsg");
if(!isCelluar(joinTel.value)){
  telErrmsg.innerHTML = "다시 입력해주세요 ex)010-1234-5678";
  telErrmsg.style.color = "red";
  return;
}else{
  telErrmsg.innerHTML = "";
}

var move = confirm("회원가입을 하시겠습니까?");
if(move == true){
  window.location.href = "http://localhost:5501/main_login_on.html";
}else{
  return;
}
}

//우편검색
   function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {

                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                if (data.userSelectedType === 'R') { 
                    addr = data.roadAddress;
                } else { 
                    addr = data.jibunAddress;
                }

                if(data.userSelectedType === 'R'){
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                } 
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                document.getElementById("detailAddress").focus();
            }
        }).open();
    }



$(document).ready(function() {   
//aside_menu 클릭

$("#dim").css("display","none");

$("#btn_aside").click(function(){
  $("#dim").css("display","block");
});

$(".dim_bg").click(function(){
  $("#dim").css("display","none");
});

//mobile_search menu 클릭
  $("#btn_search").toggle(function(){
    $("#btn_search img").attr("src","/portfolio/resources/images/common/btn_close.png");
    $("#mobile_menu").slideDown();
  },function(){
    $("#btn_search img").attr("src","/portfolio/resources/images/common/btn_close.png");
    $("#mobile_menu").slideUp();
  });


    //세로 롤링 배너
  $('#delivery_list_wrap').vTicker({
    speed:800,
    pause:500,
    showItems:6,
    mousePause:true
  });

  
$grid = $('.grid');
  $('.grid').isotope({
    // options
    itemSelector: '.grid-item',
    layoutMode: 'fitRows'
  });
$('.m_all').click(function(){
  $grid.isotope({ filter: '*' });
});
$('.m_samsung').click(function(){
  $grid.isotope({ filter: '.p_samsung' });
});
$('.m_apple').click(function(){
  $grid.isotope({ filter: '.p_apple' });
});
$('.m_lg').click(function(){
  $grid.isotope({ filter: '.p_lg' });
});
$('.m_etc').click(function(){
  $grid.isotope({ filter: '.p_etc' });
});



})

