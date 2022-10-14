**free

    ctl-opt Copyright('Bancolombia - Yohana Cano Hernandez');
    ctl-opt nomain;

    /copy Copy

    dcl-Proc PrInsertar Export;
        dcl-pi *n;
            InUsuario likeDs(DsUsuarioT) Const;
            OutSqlState like(wSqlStateT);
        end-pi;
       
    //- Process

        Exec SQL
            Insert Into EYCUSUARIO Values(:InUsuario);

          OutSqlState = SQLSTATE;
               
    end-Proc;
          
