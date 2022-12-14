unit Thread;

interface

uses
  Classes, Windows, Messages, SysUtils, Variants, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus,
  ComCtrls;

type
  ThreadTeste = class(TThread)
  private
    { Private declarations }
  protected
   _proc: TProcedure;
    procedure Execute; override;
  public
    procedure pesquisar();
    constructor cria();
  end;

implementation
uses UntPesquisar, UntDmCadastro;

constructor ThreadTeste.cria;
begin
  Create(false);
  FreeOnTerminate := true;
end;

procedure ThreadTeste.Execute;
begin
  with Form1 do
  begin
    ProgressBar1.Position := 0;
    repeat
    sleep(10);
    ProgressBar1.Position := ProgressBar1.Position + 1;
    until
    ProgressBar1.Position = ProgressBar1.Max;
    if ProgressBar1.Position = ProgressBar1.Max then
    begin
      ProgressBar1.Position := 0;
    end;
    Synchronize(pesquisar);
  end;
end;


procedure ThreadTeste.pesquisar;
var
SQL : string;
begin
 //condi??o para diferenciar o tipo selecionado do combobox
  if Form1.ComboBox1.ItemIndex = 0 then
    begin
      dmCadastro.qryPesquisaPrestador.SQL.Clear;
      SQL := 'select * from tab_prestador where nm_prestador like' + QuotedStr(Form1.edPesquisa.Text + '%');
      DmCadastro.cdsPesquisaPrestador.Close;
      DmCadastro.qryPesquisaPrestador.Close;
      DmCadastro.qryPesquisaPrestador.SQL.Clear;
      DmCadastro.qryPesquisaPrestador.SQL.Add(SQL);
      DmCadastro.cdsPesquisaPrestador.Open;

      if dmCadastro.cdsPesquisaPrestador.RecordCount < 1 then
      begin
        Application.MessageBox(
        'N?o foi encontrado nenhum visitante com o nome informado.',
        'Aten??o', MB_ICONWARNING);
        Exit;
      end;
    end
  else if Form1.ComboBox1.ItemIndex = 1 then
    begin
      dmCadastro.qryPesquisaPrestador.SQL.Clear;
      SQL := 'select * from tab_prestador where nr_rg like ' + QuotedStr(Form1.edPesquisa.Text + '%');
      DmCadastro.cdsPesquisaPrestador.Close;
      DmCadastro.qryPesquisaPrestador.Close;
      DmCadastro.qryPesquisaPrestador.SQL.Clear;
      DmCadastro.qryPesquisaPrestador.SQL.Add(SQL);
      DmCadastro.cdsPesquisaPrestador.Open;

      if dmCadastro.cdsPesquisaPrestador.RecordCount < 1 then
      begin
        Application.MessageBox(
        'N?o foi encontrado nenhum visitante com o RG informado.',
        'Aten??o', MB_ICONWARNING);
        Exit;
      end;
    end
  else if Form1.ComboBox1.ItemIndex = -1 then
    begin
      dmCadastro.qryPesquisaPrestador.SQL.Clear;
      SQL := 'select * from tab_prestador';
      DmCadastro.cdsPesquisaPrestador.Close;
      DmCadastro.qryPesquisaPrestador.Close;
      DmCadastro.qryPesquisaPrestador.SQL.Clear;
      DmCadastro.qryPesquisaPrestador.SQL.Add(SQL);
      DmCadastro.cdsPesquisaPrestador.Open;
    end;
end;
end.
