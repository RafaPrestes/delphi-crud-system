unit UntPesquisar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus,
  ComCtrls;

type
  TForm1 = class(TForm)
    btnPesquisa: TButton;
    btnNovo: TButton;
    btnExcluir: TButton;
    ComboBox1: TComboBox;
    edPesquisa: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btnEditar: TButton;
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    relatorio: TMenuItem;
    relPrestadorUnidade: TMenuItem;
    ProgressBar1: TProgressBar;
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure relPrestadorUnidadeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sLocal: String;
  end;

var
  Form1: TForm1;


implementation

uses UntDmCadastro, UntCadastro, UntEditarMorador, Thread;

var
  TPesquisar: ThreadTeste;

{$R *.dfm}

procedure TForm1.btnEditarClick(Sender: TObject);
begin
 frmEditar.ShowModal;
end;

procedure TForm1.btnExcluirClick(Sender: TObject);
begin
  if dmCadastro.cdsPesquisaPrestador.IsEmpty then
  begin
    ShowMessage('N�o h� registros');
    dmCadastro.cdsPesquisaPrestador.Close;
  end
  else
    if MessageDlg('Deseja Excluir o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DBGrid1.SelectedField.DataSet.Delete;
      dmCadastro.cdsPesquisaPrestador.ApplyUpdates(0);
      dmCadastro.cdsPesquisaPrestador.Close;
      dmCadastro.cdsPesquisaPrestador.Open;
      dmCadastro.cdsPesquisaPrestador.Refresh;
    end;
end;

procedure TForm1.btnNovoClick(Sender: TObject);
begin
  frmCadastro.ShowModal;
end;

procedure TForm1.btnPesquisaClick(Sender: TObject);
var SQL : String;
var tpg : ThreadTeste;
begin
  if dmCadastro.qryPesquisaPrestador.Active then
  dmCadastro.qryPesquisaPrestador.Close;

  // executando a Thread
  ThreadTeste.Cria();
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
   //quando clicar em um item da grid mostrar o bot�o de editar
   btnEditar.Visible := true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   //esconder o bot�o de editar quando iniciar o projeto
   btnEditar.Visible := false;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
// LOCAL DE EXECU��O
  sLocal := ExtractFilePath(Application.ExeName);

  dmCadastro.cdsPesquisaPrestador.Close;
end;

procedure TForm1.relPrestadorUnidadeClick(Sender: TObject);
var
SQL : string;
begin
  dmCadastro.cdsPesquisaPrestador.Close;
  dmCadastro.cdsPesquisaPrestador.Open;

  SQL := 'select * from tab_prestador';

  dmCadastro.cdsPesquisaPrestador.Close;
  dmCadastro.qryPesquisaPrestador.SQL.Clear;
  dmCadastro.qryPesquisaPrestador.SQL.Add(SQL);
  dmCadastro.cdsPesquisaPrestador.Open;

  dmCadastro.frxReportSelecionarPorUnidade.LoadFromFile
    (sLocal + '/Rave/FR_SELECIONAR_TODOS_PRESTADORES.fr3');

  dmCadastro.frxReportSelecionarPorUnidade.PrepareReport();
  dmCadastro.frxReportSelecionarPorUnidade.ShowReport();
end;

end.
