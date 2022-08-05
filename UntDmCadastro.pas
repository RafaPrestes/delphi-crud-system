unit UntDmCadastro;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBDatabase, FMTBcd, WideStrings,
  SqlExpr, Provider, DBClient, DBXFirebird, frxClass, frxDBSet;

type
  TdmCadastro = class(TDataModule)
    cdsPrestador: TClientDataSet;
    dsePrestador: TSQLDataSet;
    dspPrestador: TDataSetProvider;
    DATACADASTRO: TSQLConnection;
    qryPesquisaPrestador: TSQLQuery;
    dspPesquisaPrestador: TDataSetProvider;
    cdsPesquisaPrestador: TClientDataSet;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    dsCadastro: TIBDataSet;
    dsCadastroCD_PRESTADOR: TIntegerField;
    dsCadastroNM_PRESTADOR: TIBStringField;
    dsCadastroNR_RG: TIBStringField;
    dsePrestadorCD_PRESTADOR: TIntegerField;
    dsePrestadorNM_PRESTADOR: TStringField;
    dsePrestadorNR_RG: TStringField;
    SQLQuery1: TSQLQuery;
    SQLQuery1CD_MORADOR: TIntegerField;
    SQLQuery1NM_MORADOR: TStringField;
    SQLQuery1NR_RG: TStringField;
    cdsPrestadorCD_PRESTADOR: TIntegerField;
    cdsPrestadorNM_PRESTADOR: TStringField;
    cdsPrestadorNR_RG: TStringField;
    qryPesquisa: TSQLQuery;
    dspPesquisa: TDataSetProvider;
    cdsPesquisa: TClientDataSet;
    cdsPesquisaCD_PRESTADOR: TIntegerField;
    cdsPesquisaNM_PRESTADOR: TStringField;
    cdsPesquisaNR_RG: TStringField;
    qryPesquisaCD_PRESTADOR: TIntegerField;
    qryPesquisaNM_PRESTADOR: TStringField;
    qryPesquisaNR_RG: TStringField;
    frxDBSelecionarTodos: TfrxDBDataset;
    frxReportSelecionarPorUnidade: TfrxReport;
    qryPesquisaPrestadorCD_PRESTADOR: TIntegerField;
    qryPesquisaPrestadorNM_PRESTADOR: TStringField;
    qryPesquisaPrestadorNR_RG: TStringField;
    qryPesquisaPrestadorNM_UNIDADE: TStringField;
    cdsPesquisaPrestadorCD_PRESTADOR: TIntegerField;
    cdsPesquisaPrestadorNM_PRESTADOR: TStringField;
    cdsPesquisaPrestadorNR_RG: TStringField;
    cdsPesquisaPrestadorNM_UNIDADE: TStringField;
    cdsRelatorioPorUnidade: TClientDataSet;
    dspRelatorioPorUnidade: TDataSetProvider;
    qryRelatorioPorUnidade: TSQLQuery;
    qryRelatorioPorUnidadeCD_PRESTADOR: TIntegerField;
    qryRelatorioPorUnidadeNM_PRESTADOR: TStringField;
    qryRelatorioPorUnidadeNR_RG: TStringField;
    qryRelatorioPorUnidadeNM_UNIDADE: TStringField;
    cdsRelatorioPorUnidadeCD_PRESTADOR: TIntegerField;
    cdsRelatorioPorUnidadeNM_PRESTADOR: TStringField;
    cdsRelatorioPorUnidadeNR_RG: TStringField;
    cdsRelatorioPorUnidadeNM_UNIDADE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }

procedure pesquisaPrestador();
  end;

var
  dmCadastro: TdmCadastro;

implementation

{$R *.dfm}


procedure TDmCadastro.pesquisaPrestador();
  var
  SQL : String;
begin
  SQL := 'select * from TAB_PRESTADOR';


  DmCadastro.cdsPesquisaPrestador.Close;
  DmCadastro.cdsPesquisaPrestador.DisableControls;
  DmCadastro.qryPesquisaPrestador.Close;
  DmCadastro.qryPesquisaPrestador.SQL.Clear;
  DmCadastro.qryPesquisaPrestador.SQL.Add(SQL);
  DmCadastro.cdsPesquisaPrestador.EnableControls;
  DmCadastro.cdsPesquisaPrestador.Open;
end;

end.
