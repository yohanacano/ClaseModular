**free

    ctl-opt Copyright('Bancolombia - Yohana Cano Hernandez');

    //- Dictionary

    dcl-s wNombre char(10);
    dcl-s wId int(5);
    dcl-s wMsgId char(7);

    //- Prototypes

    dcl-pr PrEntrada;
        parNombre like(wNombre) Const;
        parId like(wId) Const;
        parMsgId like(wMsgId);
    end-pr;

    wNombre = 'Yoha';
    wId = 1111;
    wMsgId = ' ';

    PrEntrada(wNombre :wId :wMsgId);

    Return;