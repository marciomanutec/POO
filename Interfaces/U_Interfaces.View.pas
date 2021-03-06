unit U_Interfaces.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  eInterface.Model.interfaces, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    M_Pessoa: TMemo;
    btn_pessoa: TButton;
    edt_nome: TEdit;
    edt_sobre: TEdit;
    rg_pessoa: TRadioGroup;
    procedure btn_pessoaClick(Sender: TObject);
  private
  FPessoa : iPessoa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  eInterface.Controller.Pessoa, eInterface.Controller.Interfaces;


{$R *.dfm}

procedure TForm1.btn_pessoaClick(Sender: TObject);
begin
    case rg_pessoa.ItemIndex of
     -1  :  exit;
     0   :  FPessoa :=TControllerPessoa.New.Pessoa(tpFisica);
     1   :  FPessoa :=TControllerPessoa.New.Pessoa(tpJuridica);
    end;

    M_Pessoa.Lines.Add(
     FPessoa
    .Nome(edt_nome.Text)
    .SobreNome(edt_sobre.Text)
    .Faturamento(1200)
    .NomeCompleto
    );

    ShowMessage(FPessoa.Fatura);
end;

end.
