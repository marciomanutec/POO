unit eInterface.Model.PessoaJuridica;

interface

uses
  eInterface.Model.interfaces;

type
   TModelPessoaJuridica = class(TInterfacedObject, iPessoa)

   private
    FNome      : String;
    FSobreNome : String;
    function Nome(Value : String) : iPessoa;
    function SobreNome (Value : String) : iPessoa;
    function NomeCompleto : String;

   public
   constructor Create;
   destructor  Destroy; override;
   class function New : iPessoa;
end;

implementation

{ TModelPessoa }

constructor TModelPessoaJuridica.Create;
begin

end;

destructor TModelPessoaJuridica.Destroy;
begin

  inherited;
end;

class function TModelPessoaJuridica.New: iPessoa;
begin
   Result := Self.Create;
end;

function TModelPessoaJuridica.Nome(Value: String): iPessoa;
begin
   Result := Self;
   FNome  := Value;
end;

function TModelPessoaJuridica.NomeCompleto: String;
begin
   Result := FNome + ' ' + FSobreNome+ ' LTDA ME' ;
end;

function TModelPessoaJuridica.SobreNome(Value: String): iPessoa;
begin
  Result     := Self;
  FSobreNome :=Value;
end;

end.
