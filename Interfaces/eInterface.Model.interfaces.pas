unit eInterface.Model.interfaces;

interface

type

  iPessoa = Interface    // Funcionalidas que uma pessoa tem
  ['{EF4F25F3-BB1C-45E7-9D27-D07FA6D6BB3D}']
  function Nome(Value : String) : iPessoa;
  function SobreNome (Value : String) : iPessoa;
  function NomeCompleto : String;
end;

  iPessoaFactory = interface
   ['{1F05FB27-DAA4-418C-BBEE-592AEB088062}']
   function PessoaFisica   : iPessoa;
   function PessoaJuridica : iPessoa;
  end;

implementation

end.
