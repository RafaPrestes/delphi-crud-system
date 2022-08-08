unit UntEditarMorador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Mask, DBCtrls, ExtCtrls;

type
  TfrmEditar = class(TForm)
    DataSource1: TDataSource;
    Button1: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditar: TfrmEditar;

implementation

uses UntDmCadastro, UntCadastro, UntPesquisar;

{$R *.dfm}

procedure TfrmEditar.Button1Click(Sender: TObject);
var codigo : Integer;
begin
  //habilitando o modo Edit para alterar os valores
  Form1.DBGrid1.SelectedField.DataSet.Edit;
 if dmCadastro.cdsPesquisaPrestador.State in [dsEdit] then
  begin

  dmCadastro.cdsPesquisaPrestadorNM_PRESTADOR.Value := frmEditar.DBEdit1.Text;
  dmCadastro.cdsPesquisaPrestadorNR_RG.Value := frmEditar.DBEdit2.Text;

  dmCadastro.cdsPesquisaPrestador.Post;
  ShowMessage('Atualizado !');
  dmCadastro.cdsPesquisaPrestador.ApplyUpdates(0);
  dmCadastro.cdsPesquisaPrestador.Close;
  dmCadastro.cdsPesquisaPrestador.Open;
  end;
   frmEditar.Close;

    dmCadastro.cdsPesquisaPrestador.Close;
    dmCadastro.cdsPesquisaPrestador.Open;
end;

end.
