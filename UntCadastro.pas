unit UntCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TfrmCadastro = class(TForm)
    btnInserir: TButton;
    ds: TDataSource;
    Panel1: TPanel;
    edNome: TEdit;
    edRG: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnInserirClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

uses UntDmCadastro, UntEditarMorador;

{$R *.dfm}

procedure TfrmCadastro.btnInserirClick(Sender: TObject);
    var
    SQL, nome, unidade, RG : String;
    codigo : Integer;
begin
  dmCadastro.cdsPesquisaPrestador.Close;
  dmCadastro.cdsPesquisaPrestador.Open;
  dmCadastro.cdsPrestador.Append;



  if edNome.Text = '' then
  begin
    ShowMessage('Campo Nome vazio, favor preencher!');
    edNome.SetFocus;
  end;

  if edRG.Text = '' then
  begin
    ShowMessage('Campo RG vazio, favor preencher!');
    edRG.SetFocus;
  end;

 //habilitando o modo Insert para inserir os valores
 if DmCadastro.cdsPrestador.State in [dsInsert] then
  begin

        dmCadastro.cdsPrestadorNM_PRESTADOR.Value := edNome.Text;
        dmCadastro.cdsPrestadorNR_RG.Value := edRG.Text;

        dmCadastro.cdsPrestador.Post;
        ShowMessage('Inserido com Sucesso!');
        dmCadastro.cdsPrestador.ApplyUpdates(0);
        edNome.Text := '';
        edRG.Text := '';
        dmCadastro.cdsPesquisaPrestador.Close;
        dmCadastro.cdsPesquisaPrestador.Open;
        dmCadastro.cdsPesquisaPrestador.Refresh;

    dmCadastro.cdsPesquisaPrestador.Close;
    dmCadastro.cdsPesquisaPrestador.Open;
  end;
end;

end.
