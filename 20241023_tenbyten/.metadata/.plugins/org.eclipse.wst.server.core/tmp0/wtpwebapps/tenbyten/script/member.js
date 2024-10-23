/**
 * 
 */

// login.jsp 로그인 버튼 눌렀을 때 검사
 
 function loginCheck(){
	 if (document.frm.userid.value.length == 0){
		 alert("아이디를 작성하세요");
		 frm.userid.focus();
		 return false;
	 }
	 if (document.frm.pwd.value == ""){
		 alert("암호는 반드시 입력해야 합니다.")
		 frm.pwd.focus();
		 return false;
	}
	 return true;
	 
 }
 

 
 // join.jsp 확인 버튼 눌렀을 때 검사
 
 function idCheck(){
	 if(document.frm.userid.value == ""){
		 alert("아이디를 입력해 주세요.")
		 document.frm.userid.focus();
		 return;
	 }
	 
	 /*var url = "idCheck.do?userid=" + document.frm.userid.value; */
	 var url = "Member?command=id_check&userid=" + document.frm.userid.value;
	 window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200")
 }
 
 
 // idcheck.jsp 사용가능한 아이디 확인 버튼 > reid 에 아이디 저장
 function idok(userid){
	opener.frm.userid.value = document.frm.userid.value;
	opener.frm.reid.value = document.frm.userid.value;
	 
	 self.close();
 }
 
 // joinForm.jsp 회원정보 유효성 체크
 function joinCheck(){
	 if(document.frm.userid.value.length == 0){
		 alert("아이디을 써주세요.");
		 frm.userid.focus();
		 return false;
	 }
	 if(document.frm.userid.value.length < 4){
		 alert("아이디는 4글자 이상이어야 합니다.");
		 frm.userid.focus();
		 return false;
	 }
	 if(document.frm.pwd.value.length == 0){
		 alert("비밀번호를 입력해 주세요");
		 frm.pwd.focus();
		 return false;
	 }
	 if(document.frm.pwd.value != document.frm.pwd_check.value){
		 alert("비밀번호가 일치하지 않습니다.");
		 frm.pwd.focus();
		 return false;
	 }
	 if(document.frm.reid.value.length == 0){
		 alert("중복체크를 하지 않았습니다.");
		 frm.reid.focus();
		 return false;
	 }
	 if(document.frm.admin.value == 1 && document.frm.abmin_check.value != 1){
		 alert("관리자 인증번호를 확인하세요.")
		 frm.admin.focus();
		 return false;
	 }
	 

	return true;

	 
 }
 
 // 회원 가입시 비밀번호 일치 확인

 
 function pwdCheck(){
	  /**
		 const pwd = document.getElementById("pwd");
		 const pwd_check = document.getElementById("pwd_check");
		 const checkText = document.getElementById("checkText");
	   */
	 const pwd = document.frm.pwd.value;
	 const pwd_check = document.frm.pwd_check.value;
	 const checkText = document.getElementById("checkText");
	 
	 if (pwd === pwd_check){
		 checkText.textContent  = "비밀번호가 일치합니다.";
	 }	else{
		 checkText.textContent  = "비밀번호가 일치하지 않습니다."; 
	 }	 
 }
 
 
 // 관리자 선택시 번호입력창
 function toggleAdminCodeInput() {
    const adminRadioButtons = document.getElementsByName("admin");
    const admin_view = document.getElementById("admin_view");
    document.frm.abmin_check.value = "0";

    if (adminRadioButtons[1].checked) { // 관리자가 선택된 경우
        admin_view.style.display = ""; // 보이기
    } else {
        admin_view.style.display = "none"; // 숨기기
    }
}
 
 
 // 관리자 인증번호 체크
 function admincheck(){
	 const admin_num = "123456";
	 	
	 if(document.frm.admin_code.value === admin_num){
		 alert("확인되었습니다")
		 document.frm.abmin_check.value = "1";
		 document.frm.admin_btn.disabled  = true;
	 }else{
		 alert("관리자 번호가 잘못 입력되었습니다.")
		 document.querySelector('input[name="admin"][value="0"]').checked = true;
		 toggleAdminCodeInput();
	 }
	 
 }
 
 
 
 
 
 
 
 
 /////////////////////////////////////////////////////////////멤버 업데이트
 // 유효성 체크
 function updateCheck(){
	 if(document.frm.pwd.value != document.frm.pwd_check.value){
		 alert("비밀번호가 일치하지 않습니다.");
		 frm.pwd.focus();
		 return false;
	 }

	return true;

	 
 }
 
 

 /*
 // 회원 가입 실패시 메세지를 띄움
 function showMessage() {
    const message = "${message}"; // JSP에서 전달된 메시지 가져오기
    if (message != "" && message != null) {
        alert(message); // 메시지가 있을 경우 알림 창 표시
    }
}
 
 */