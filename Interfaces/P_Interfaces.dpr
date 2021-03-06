program P_Interfaces;

uses
  Vcl.Forms,
  U_Interfaces.View in 'U_Interfaces.View.pas' {Form1},
  eInterface.Model.interfaces in 'eInterface.Model.interfaces.pas',
  eInterface.Model.PessoaFisica in 'eInterface.Model.PessoaFisica.pas',
  eInterface.Model.PessoaJuridica in 'eInterface.Model.PessoaJuridica.pas',
  eInterface.Model.Pessoa.Factory in 'eInterface.Model.Pessoa.Factory.pas',
  eInterface.Controller.Pessoa in 'eInterface.Controller.Pessoa.pas',
  eInterface.Controller.Interfaces in 'eInterface.Controller.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
