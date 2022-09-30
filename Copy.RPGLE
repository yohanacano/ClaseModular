**free

	//- Dictionary

	dcl-Ds DsUsuarioT Qualified Template;
		Nombre like(wNombreT);
		Id like(wIdT);
		Fecha like(wFechaT);
		Tiempo like(wTiempoT);
	end-Ds;

	dcl-s wNombreT char(10) Template;
	dcl-s wIdT int(5) Template;
	dcl-s wMsgIdT char(7) Template;
	dcl-s wFechaT varchar(100) Template;
	dcl-s wTiempoT varchar(100) Template;
	dcl-s wSqlStateT varchar(100) Template;

	//- Prototypes

	dcl-pr PrInsertar;
		parUsuario likeDs(DsUsuarioT);
		parSqlState like(wSqlStateT);
	end-pr;

	dcl-pr PrFormatoFecha like(wFechaT);
		parDate Date(*ISO) const;
	end-pr;

	dcl-pr PrFormatoTiempo like(wTiempoT);
		parTime Time(*ISO) const;
	end-pr;

	dcl-pr PrEntrada;
		parNombre like(wNombreT) Const;
        parId like(wIdT) Const;
        parMsgId like(wMsgIdT);
    end-pr;



	
