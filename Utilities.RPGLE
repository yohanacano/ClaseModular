**free

    /copy Copy

    dcl-Proc FnFormatoFecha Export;
        dcl-pi *n like(wFechaT);
            InDate Date(*ISO) Const;
        end-pi

        //- Variables

        dcl-s wFecha like(wFechaT);
	  
        //- Process

        wFecha = %Char(InDate:*Iso0);

        Return wFecha;

    end-Proc;


	dcl-Proc FnFormatoTiempo Export;
        dcl-pi *n like(wTiempoT);
            InTime Time(*ISO) Const;
        end-pi
	  
        //- Variables

        dcl-s wTiempo like(wTiempoT);
	  
        //- Process

        wTiempo = %Char(InTime:*hms);

        Return wTiempo;

    end-Proc;
	