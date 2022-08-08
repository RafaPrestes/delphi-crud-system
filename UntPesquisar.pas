unit UntPesquisar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus,
  ComCtrls, GIFImg, Buttons, ComObj;

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
    btnExportarPdf: TBitBtn;
    btnExportarExcel: TBitBtn;
    Image1: TImage;
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure relPrestadorUnidadeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExportarExcelClick(Sender: TObject);
  private
    { Private declarations }
    procedure exportarExcel();
  public
    { Public declarations }
    sLocal: String
  end;

var
  Form1: TForm1;


implementation

uses UntDmCadastro, UntCadastro, UntEditarMorador, Thread, ThreadLoading,
  ThreadGif;

var
  TPesquisar: ThreadTeste;
  TExcel : ThreadLoad;

{$R *.dfm}

procedure TForm1.btnEditarClick(Sender: TObject);
begin
 frmEditar.ShowModal;
end;

procedure TForm1.btnExcluirClick(Sender: TObject);
begin
  if dmCadastro.cdsPesquisaPrestador.IsEmpty then
  begin
    ShowMessage('Não há registros');
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

procedure TForm1.btnExportarExcelClick(Sender: TObject);
var
 linha, coluna: Integer;
  planilha: variant;
  valorCampo: string;
  t : TThread;
begin
  btnExportarPdf.Enabled := false;
  btnExportarExcel.Enabled := false;
  btnExcluir.Enabled := false;
  btnNovo.Enabled := false;
  btnPesquisa.Enabled := false;
  // desabilita o botão de fechar do forms
  EnableMenuItem(GetSystemMenu(handle, False), SC_CLOSE, MF_BYCOMMAND or MF_GRAYED);

   Image1.Visible := true;

   TExcel := ThreadLoad.Create(exportarExcel);

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
   //quando clicar em um item da grid mostrar o botão de editar
   btnEditar.Visible := true;
end;

procedure TForm1.exportarExcel;
var
  linha, coluna: Integer;
  planilha: variant;
  valorCampo: string;
begin
  planilha := CreateOleObject('Excel.Application');
  planilha.Workbooks.Add(1);
  planilha.Cells.Select;
  // planilha.Selection.NumberFormat := '@';
  planilha.caption := 'Exportação de prestadores';
  planilha.Visible := false;
  linha := 2;

  // colocando nome nas colunas
  planilha.Cells[1, 1] := 'NOME';
  planilha.Cells[1, 2] := 'RG';

  dmcadastro.cdsPesquisaPrestador.First;

  // preenchendo colunas com os dados do banco

  begin
    try
      while not dmcadastro.cdsPesquisaPrestador.Eof do
      begin
        planilha.Cells[linha, 1] :=
          dmcadastro.cdsPesquisaPrestadorNM_PRESTADOR.AsString;
        planilha.Cells[linha, 2] :=
          dmcadastro.cdsPesquisaPrestadorNR_RG.AsString;
        linha := linha + 1;
        dmcadastro.cdsPesquisaPrestador.Next;
      end;
      planilha.columns.AutoFit;
      planilha.Visible := true;
    finally
      planilha := Unassigned;
    end;
  end;

  btnExportarPdf.Enabled := true;
  btnExportarExcel.Enabled := true;
  btnExcluir.Enabled := true;
  btnNovo.Enabled := true;
  btnPesquisa.Enabled := true;
  // habilita o botão de fechar do forms
  EnableMenuItem(GetSystemMenu(handle, True), SC_CLOSE, MF_BYCOMMAND or MF_GRAYED);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   //esconder o botão de editar quando iniciar o projeto
   btnEditar.Visible := false;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  (Image1.Picture.Graphic as TGIFImage).Animate := true;
// LOCAL DE EXECUÇÃO
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
