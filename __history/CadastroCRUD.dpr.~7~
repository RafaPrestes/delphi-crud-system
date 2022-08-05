program CadastroCRUD;

uses
  Forms,
  UntCadastro in 'UntCadastro.pas' {frmCadastro},
  UntDmCadastro in 'UntDmCadastro.pas' {dmCadastro: TDataModule},
  UntEditarMorador in 'UntEditarMorador.pas' {frmEditar},
  UntPesquisar in 'UntPesquisar.pas' {Form1},
  Thread in 'Thread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.CreateForm(TdmCadastro, dmCadastro);
  Application.CreateForm(TfrmEditar, frmEditar);
  Application.Run;
end.
