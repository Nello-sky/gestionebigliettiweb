

function validateInsert() {

	// catturo le variabili di controllo, le mando tutte in UpperCase...
	let provenienzaValue = document.getElementById("provenienzaId").value;
	let destinazioneValue = document.getElementById("destinazioneId").value;
	let prezzoValue = document.getElementById("prezzoId").value;
	let dataValue = document.getElementById("dataId").value;


	//check void arguments
	if (provenienzaValue == "") {
		document.getElementById("provenienzaId").style.border = "3px solid red";

	}
	else {
		document.getElementById("provenienzaId").style.border = "3px solid green";
	}
	

	if (destinazioneValue == "") {
		document.getElementById("destinazioneId").style.border = "3px solid red";

	}
	else {
		document.getElementById("destinazioneId").style.border = "3px solid green";
	}
	
	if (prezzoValue == "") {
		document.getElementById("prezzoId").style.border = "3px solid red";

	}
	else {
		document.getElementById("prezzoId").style.border = "3px solid green";
	}
	
	if (dataValue == "") {
		document.getElementById("dataId").style.border = "3px solid red";
	}
	else {
		document.getElementById("dataId").style.border = "3px solid green";
	}
	
	
	if (provenienzaValue == "" || destinazioneValue == "" || prezzoValue == "" || dataValue == "") {
		return false;
        // document.getElementById("insertForm").action  = "ExecuteInsertBigliettoServlet";
       //  document.getElementById("insertForm").submit();
	}
	
   

}



