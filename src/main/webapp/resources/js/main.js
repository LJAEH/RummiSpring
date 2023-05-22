function loginValidate(){

    const id = document.getElementsByName("id")[0];

    const pw = document.getElementsByName("pw")[0];

    if( id.value.trim().length == 0 ){
     	alert("다시.");
        id.value = ""; 
        id.focus(); 
        return false; 
    }

    if(pw.value.trim() == ""){
        alert("다시.");
        pw.value = "";
        pw.focus();
        return false;
    }
    return true; 
}

function btn_start_click(){ location.href ="${contextPath}/WEB-INF/views/game/game.jsp"; }

function btn_rule_click(){ location.href ='rule.html'; }