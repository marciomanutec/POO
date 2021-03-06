unit eInterface.Model.PessoaFisica;

interface

uses
  eInterface.Model.interfaces;

type
   TModelPessoaFisica = class(TInterfacedObject, iPessoa)

   private
    FNome        : String;
    FSobreNome   : String;
    FFaturamento : Double;
    function Nome(Value : String) : iPessoa;
    function SobreNome (Value : String) : iPessoa;
    function NomeCompleto : String;
    function Faturamento(Value  : Double) : iPessoa;
    function Fatura : String;


   public
   constructor Create;
   destructor  Destroy; override;
   class function New : iPessoa;
end;

implementation

uses
  System.Classes, System.SysUtils;

{ TModelPessoa }

constructor TModelPessoaFisica.Create;
begin

end;

destructor TModelPessoaFisica.Destroy;
begin

  inherited;
end;

function TModelPessoaFisica.Fatura: String;
begin
  Result := 'Faturamento:  R$12.000';
end;

function TModelPessoaFisica.Faturamento(Value  : Double) : iPessoa;
begin
     Result := Self;
     FFaturamento := Value;
end;

class function TModelPessoaFisica.New: iPessoa;
begin
   Result := Self.Create;
end;

function TModelPessoaFisica.Nome(Value: String): iPessoa;
begin
   Result := Self;
   FNome  := Value;
end;

function TModelPessoaFisica.NomeCompleto: String;
begin
   Result := FNome + ' ' + FSobreNome + ' Faturamento: ' +  FloatToStr(FFaturamento);
end;

function TModelPessoaFisica.SobreNome(Value: String): iPessoa;
begin
  Result     := Self;
  FSobreNome :=Value;
end;

end.
