**free

	/copy Copy

	dcl-Proc PrEntrada Export;
		dcl-pi *n;
			InNombre like(wNombreT);
			InId like(wIdT);
			OutMsgId like(wMsgIdT);
		end-pi
	  
		//- Structures
	  
		dcl.Ds DsUsuario likeDs(DsUsuarioT);

		//- variables

		dcl-s wSqlState like(wSqlStateT);
	
		//- Process	

		DsUsuario.Nombre = InNombre;
		DsUsuario.Id = InId;
		DsUsuario.Fecha = FnFormatoFecha(%Date()); 
		DsUsuario.Tiempo = FnFormatoTiempo(%Time()); 	

		PrInsertar(DsUsuario:wSqlState)
		
	end-Proc;