function reviewCheck() {
	if (document.frm.username.value.length == 0) {
		alert("작성자를 입력하세요.");
		return false;
	}
	if (document.frm.pass.value.length == 0) {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	if (document.frm.content.value.length == 0) {
		alert("내용을 입력하지 않았습니다.");
		return false;
	}
	
	return true;
}

function open_win(url, name) {
	window.open(url, name, "width=500, height=180");
}

function passCheck() {
	if (document.frm.pass.value.length == 0) {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	return true;
}