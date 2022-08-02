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
    edUnidade: TEdit;
    Label3: TLabel;
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
  dmCadastro.cdsPesquisaPrestador.Append;

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
 if DmCadastro.cdsPesquisaPrestador.State in [dsInsert] then
  begin
    if (edRG.Text <> '') and (edNome.Text <> '') and (edUnidade.Text<> '') then
      begin
        dmCadastro.cdsPesquisaPrestadorNM_PRESTADOR.Value := edNome.Text;
        dmCadastro.cdsPesquisaPrestadorNR_RG.Value := edRG.Text;
        dmCadastro.cdsPesquisaPrestadorNM_UNIDADE.Value := edUnidade.Text;

        dmCadastro.cdsPesquisaPrestador.Post;
        ShowMessage('Inserido com Sucesso!');
        dmCadastro.cdsPesquisaPrestador.ApplyUpdates(0);
        edNome.Text := '';
        edRG.Text := '';
        edUnidade.Text := '';
        dmCadastro.cdsPesquisaPrestador.Close;
        dmCadastro.cdsPesquisaPrestador.Open;
      end;

    dmCadastro.cdsPesquisaPrestador.Close;
    dmCadastro.cdsPesquisaPrestador.Open;
  end;
end;

end.