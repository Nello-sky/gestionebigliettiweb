<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="it.prova.gestionebigliettiweb.model.Biglietto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<html>
 <head>
	 
	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	   
	   <title>Visualizza Elemento</title>
	 </head>
	   <body class="d-flex flex-column h-100">
	   
	   		<!-- Fixed navbar -->
	   		<jsp:include page="../navbar.jsp"></jsp:include>
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0">
			  <div class="container">
			  
			  		<div class='card'>
					    <div class='card-header'>
					        <h5>Visualizza dettaglio</h5>
					    </div>
					     <% Biglietto bigliettoInPagina = (Biglietto)request.getAttribute("ArticoloToDelete"); %>
					    
					
					    <div class='card-body'>
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Provenienza</dt>
							  <dd class="col-sm-9"><%=bigliettoInPagina.getProvenienza() %></dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Descrizione:</dt>
							  <dd class="col-sm-9"><%=bigliettoInPagina.getDestinazione() %></dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Prezzo:</dt>
							  <dd class="col-sm-9"><%=bigliettoInPagina.getPrezzo() %></dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Data :</dt>
							  <dd class="col-sm-9"><%=bigliettoInPagina.getData()!=null? bigliettoInPagina.getData().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")):"N.D."  %></dd>
					    	</dl>
					    	
					    	
					    </div>
					    
					    <div class='card-footer'>
					        <a href="ListBigliettiServlet" class='btn btn-outline-secondary' style='width:80px'>
					            <i class='fa fa-chevron-left'></i> Back
					        </a>
					        
					        <form method="post" action="ExecuteDeleteBigliettoServlet" class="row g-3" novalidate="novalidate">
					        
					        <input type="hidden" class="form-control" name="idDelete" id="idDeleteIDd" 
									value="<%=bigliettoInPagina.getId()!=null?bigliettoInPagina.getId():"" %>" required>
					        
								<button type="submit" name="submit" value="submit" id="submit" class="btn btn-primary">Elimina</button>
							
		
						</form>
					    </div>
					    
					    
					<!-- end card -->
					        
					</div>	
			  
			    
			  <!-- end container -->  
			  </div>
			  
			</main>
			
			<!-- Footer -->
			<jsp:include page="../footer.jsp" />
	  </body>
</html>