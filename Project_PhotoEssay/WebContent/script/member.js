// login.jsp에서 로그인 버튼 클릭으로 함수 실행
function loginCheck(){
	if(document.frm.userid.value==""){
		alert("아이디를 입력해 주세요");
		frm.userid.focus();			// 마우스 커서가 아이디 입력 상자에 놓이도록
		return false;
	}
	if(document.frm.pwd.value==""){
		alert("암호는 반드시 입력해야 합니다.");
		frm.pwd.focus();
		return false;
	
}

if(document.frm.nick.value==""){
		alert("닉네임을 입력해 주세요");
		frm.nick.focus();			// 마우스 커서가 닉메임 입력 상자에 놓이도록
		return false;
}
	return true;
	}

//join.jsp에서 중복체크 버튼 클릭으로 함수 실행
function idCheck(){
	if(document.frm.userid.value == "") {
		alert('아이디를 입력해 주세요.');
		document.frm.userid.focus();
		return;
	}
	var url = "idCheck.do?userid=" + document.frm.userid.value;
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}


// idCheck.jsp에서 사용 버튼 클릭으로 함수 실행
function idOk(){
	opener.frm.userid.value = document.frm.userid.value;
	opener.frm.checkid.value = document.frm.userid.value;
	self.close();
}


function joinCheck(){
	if(document.frm.checkid.value.length == 0){
		alert('중복 체크를 하지 않았습니다.');
		frm.userid.focus();
		return false;
	}
	return true;
}

//join.jsp에서 중복체크 버튼 클릭으로 함수 실행
function nickCheck(){
	if(document.frm.nick.value == "") {
		alert('닉네임을 입력해 주세요.');
		document.frm.nick.focus();
		return;
	}
	var url = "nickCheck.do?nick=" + document.frm.nick.value;
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}


// idCheck.jsp에서 사용 버튼 클릭으로 함수 실행
function nickOk(){
	opener.frm.nick.value = document.frm.nick.value;
	opener.frm.checknick.value = document.frm.nick.value;
	self.close();
}

function joinCheck(){
	if(document.frm.checknick.value.length == 0){
		alert('중복 체크를 하지 않았습니다.');
		frm.nick.focus();
		return false;
	}
	return true;
}
