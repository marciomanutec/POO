unit eInterface.Controller.Interfaces;

interface

uses
  eInterface.Model.interfaces;

type
    TTypePessoa = (tpFisica, tpJuridica);
    iControllerPessoa = interface
    ['{889ECF49-35EF-4E21-956F-022BFB7ADCAD}']
    function Pessoa (Value : TTypePessoa ) : iPessoa;

end;

implementation

end.
