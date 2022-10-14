**free

    ctl-opt Copyright('Bancolombia - Yohana Cano Hernandez');
    ctl-opt nomain; 
    
    /copy Copy

    dcl-Proc FnFormatoFecha Export;
        dcl-pi *n like(wFechaT);
            InDate Date(*ISO) Const;
        end-pi;

        //- Variables

        dcl-s wFecha like(wFechaT);
       
        //- Process

        wFecha = %Char(InDate:*Iso0);

        Return wFecha;

    end-Proc;


    dcl-Proc FnFormatoTiempo Export;
        dcl-pi *n like(wTiempoT);
            InTime Time(*ISO) Const;
        end-pi;
       
        //- Variables

        dcl-s wTiempo like(wTiempoT);
       
        //- Process

        wTiempo = %Char(InTime:*hms);

        Return wTiempo;

    end-Proc;


    dcl-Proc FnObtenerMensaje Export;
        dcl-pi *n like(wMsgIdT);
            InSqlState like(wSqlStateT) Const;
        end-pi;
       
        //- Variables

        dcl-s wMsgId like(wMsgIdT);
       
        //- Process

        SELECT; 
            WHEN InSqlState = 00000;
                wMsgId = LNS0000;
            WHEN InSqlState = 42704;
                wMsgId = LNS9516;
            OTHER;
                wMsgId LBK0021;
        ENDSL;

        Return wMsgId;

    end-Proc;
     