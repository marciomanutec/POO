unit eInterface.Model.PessoaJuridica;

interface

uses
  eInterface.Model.interfaces;

type
   TModelPessoaJuridica = class(TInterfacedObject, iPessoa)

   private
    FNome      : String;
    FSobreNome : String;
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
  System.SysUtils;

{ TModelPessoa }

constructor TModelPessoaJuridica.Create;
begin

end;

destructor TModelPessoaJuridica.Destroy;
begin

  inherited;
end;

function TModelPessoaJuridica.Fatura: String;
begin
Result := 'Faturamento:  R$12.000,00';
end;

function TModelPessoaJuridica.Faturamento(Value: Double): iPessoa;
begin
   Result := Self;
   FFaturamento := Value;
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
  Result := FNome + ' ' + FSobreNome + ' LTDA ME' + ' Faturamento: ' +  FloatToStr(FFaturamento);
end;

function TModelPessoaJuridica.SobreNome(Value: String): iPessoa;
begin
  Result     := Self;
  FSobreNome :=Value;
end;

end.
