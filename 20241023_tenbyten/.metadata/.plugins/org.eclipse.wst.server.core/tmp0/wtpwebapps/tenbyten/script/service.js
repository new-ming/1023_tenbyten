/**
 * 
 */
 function serviceBoardCheck(){
	 if(document.frm.title.value.length == 0){
		 alert("제목을 써주세요.");
		 frm.title.focus();
		 return false;
	 }
	 if(document.frm.content.value.length == 0){
		 alert("내용을 입력해 주세요");
		 frm.title.focus();
		 return false;
	 }
	return true;

 }