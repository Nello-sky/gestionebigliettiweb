

function validateInsert() {

	// catturo le variabili di controllo, le mando tutte in UpperCase...
	let provenienza = document.getElementById("provenienzaId");
	let destinazione = document.getElementById("destinazioneId");
	let prezzo = document.getElementById("prezzoId");
	let data = document.getElementById("dataId");


	//check void arguments
	if (provenienza.value.trim() == "") {
		provenienza.focus();
		document.getElementById("provenienzaId").style.border = "3px solid red";

	}
	else {
		document.getElementById("provenienzaId").style.border = "3px solid green";
	}
	

	if (destinazione.value.trim() == "") {
		destinazione.focus();
		document.getElementById("destinazioneId").style.border = "3px solid red";

	}
	else {
		document.getElementById("destinazioneId").style.border = "3px solid green";
	}
	
	if (prezzo.value.trim()== "") {
		prezzo.focus();
		document.getElementById("prezzoId").style.border = "3px solid red";

	}
	else {
		document.getElementById("prezzoId").style.border = "3px solid green";
	}
	
	if (data.value.trim() == "") {
		data.focus();
		document.getElementById("dataId").style.border = "3px solid red";
	}
	else {
		document.getElementById("dataId").style.border = "3px solid green";
	}
	
	
	if (provenienza.value.trim() == "" || destinazione.value.trim() == "" || prezzo.value.trim() == "" || data.value.trim()  == "") {
		return false;
	}
	
   

}


function validateBigliettoForm() {


}
