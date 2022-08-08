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
    cdsPesquisaPrestadorCD_PRESTADOR: TIntegerField;
    cdsPesquisaPrestadorNM_PRESTADOR: TStringField;
    cdsPesquisaPrestadorNR_RG: TStringField;
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
    dsePrestadorDT_NASCIMENTO: TDateField;
    dsePrestadorNR_TELEFONE_PESSOAL: TStringField;
    dsePrestadorANO_VEICULO: TIntegerField;
    dsePrestadorMARCA_VEICULO: TStringField;
    dsePrestadorMODELO_VEICULO: TStringField;
    dsePrestadorCOR_VEICULO: TStringField;
    dsePrestadorPLACA_VEICULO: TStringField;
    dsePrestadorDS_OBS: TMemoField;
    dsePrestadorID_ACESSO: TStringField;
    dsePrestadorDT_CADASTRO: TDateField;
    dsePrestadorIMG_FACE: TBlobField;
    dsePrestadorIMG_DOCUMENTO: TBlobField;
    dsePrestadorIMG_VEICULO: TBlobField;
    dsePrestadorNM_RAZAO_SOCIAL: TStringField;
    dsePrestadorDS_RAMO_EMPRESA: TStringField;
    dsePrestadorNM_RESPONSAVEL: TStringField;
    dsePrestadorNR_TELEFONE_EMPRESA: TStringField;
    dsePrestadorNR_RAMAL: TStringField;
    dsePrestadorNM_ULT_CONTATO: TStringField;
    dsePrestadorDT_ULT_ACESSO: TDateField;
    dsePrestadorDS_ULT_LOCAL: TStringField;
    dsePrestadorNR_TEL_ULT_CONTATO: TStringField;
    dsePrestadorNR_CRACHA: TStringField;
    dsePrestadorDS_MOTIVO_BLOQUEIO: TStringField;
    dsePrestadorID_SINCRONIZACAO: TSmallintField;
    dsePrestadorBIO_DIR: TBlobField;
    dsePrestadorBIO_ESQ: TBlobField;
    dsePrestadorID_PRESENCA: TIntegerField;
    dsePrestadorID_INATIVO: TIntegerField;
    dsePrestadorID_TEMPLATE_CARREGADO: TIntegerField;
    dsePrestadorID_INATIVO_CARREGADO: TIntegerField;
    dsePrestadorID_CADASTRO_REFEITO: TIntegerField;
    dsePrestadorID_CADASTRO_ANTIGO: TSmallintField;
    dsePrestadorDT_INATIVACAO: TSQLTimeStampField;
    dsePrestadorID_USUARIO_INATIVACAO: TSmallintField;
    dsePrestadorID_ACESSO_LIBERADO: TSmallintField;
    dsePrestadorDT_VALIDADE_EXAME: TDateField;
    dsePrestadorAVULSO_VEICULO: TIntegerField;
    dsePrestadorID_TEMPLATE_APAGADO: TSmallintField;
    dsePrestadorID_CONTROLE_BIO: TSmallintField;
    dsePrestadorNR_QLD_BIO_ESQ: TSmallintField;
    dsePrestadorNR_QLD_BIO_DIR: TSmallintField;
    dsePrestadorID_PRESENCA_INTERNA: TSmallintField;
    dsePrestadorDATA_CADASTRO: TSQLTimeStampField;
    dsePrestadorDATA_ATUALIZACAO: TSQLTimeStampField;
    dsePrestadorID_USUARIO_CADASTRO: TIntegerField;
    dsePrestadorID_USUARIO_ATUALIZACAO: TIntegerField;
    dsePrestadorID_TIPO_TEMPLATE_BIO: TSmallintField;
    dsePrestadorID_DEDO_DIR: TSmallintField;
    dsePrestadorID_DEDO_ESQ: TSmallintField;
    dsePrestadorDT_ANTECEDENTE_CRIMINAL: TDateField;
    dsePrestadorDS_UF: TStringField;
    dsePrestadorNM_MAE: TStringField;
    dsePrestadorNR_CARTEIRA_TRABALHO: TStringField;
    dsePrestadorNM_PAI: TStringField;
    dsePrestadorDS_NATURALIDADE: TStringField;
    dsePrestadorDS_PROFISSAO: TStringField;
    dsePrestadorDS_ENDERECO: TStringField;
    dsePrestadorDS_BAIRRO: TStringField;
    dsePrestadorDS_CIDADE: TStringField;
    dsePrestadorTELEFONE_PRESTADOR: TStringField;
    dsePrestadorNR_TELEFONE_PESSOAL_2: TStringField;
    dsePrestadorID_EMPRESA: TIntegerField;
    dsePrestadorID_MORADOR_CADASTRO: TIntegerField;
    dsePrestadorID_MORADOR_MIGRADO: TIntegerField;
    dsePrestadorID_OUTSIDE: TStringField;
    dsePrestadorNR_DOCUMENTO: TStringField;
    dsePrestadorID_PROBLEMA_FACIAL: TIntegerField;
    dsePrestadorDS_SEXO: TStringField;
    dsePrestadorNR_CPF_CNPJ: TStringField;
    dsePrestadorDS_ESTADO_CIVIL: TStringField;
    dsePrestadorDS_STATUS_ANTECEDENTE: TStringField;
    dsePrestadorID_STATUS_ANTECEDENTES: TStringField;
    dsePrestadorID_CONTROLE_FACIAL: TIntegerField;
    dsePrestadorID_ESPECIAL: TIntegerField;
    dsePrestadorID_PROB_IDFACE: TIntegerField;
    dsePrestadorID_UTILIZA_FACIALP: TIntegerField;
    dsePrestadorID_PROBLEMA_FACIAL_INTELBRAS: TIntegerField;
    cdsPrestadorDT_NASCIMENTO: TDateField;
    cdsPrestadorNR_TELEFONE_PESSOAL: TStringField;
    cdsPrestadorANO_VEICULO: TIntegerField;
    cdsPrestadorMARCA_VEICULO: TStringField;
    cdsPrestadorMODELO_VEICULO: TStringField;
    cdsPrestadorCOR_VEICULO: TStringField;
    cdsPrestadorPLACA_VEICULO: TStringField;
    cdsPrestadorDS_OBS: TMemoField;
    cdsPrestadorID_ACESSO: TStringField;
    cdsPrestadorDT_CADASTRO: TDateField;
    cdsPrestadorIMG_FACE: TBlobField;
    cdsPrestadorIMG_DOCUMENTO: TBlobField;
    cdsPrestadorIMG_VEICULO: TBlobField;
    cdsPrestadorNM_RAZAO_SOCIAL: TStringField;
    cdsPrestadorDS_RAMO_EMPRESA: TStringField;
    cdsPrestadorNM_RESPONSAVEL: TStringField;
    cdsPrestadorNR_TELEFONE_EMPRESA: TStringField;
    cdsPrestadorNR_RAMAL: TStringField;
    cdsPrestadorNM_ULT_CONTATO: TStringField;
    cdsPrestadorDT_ULT_ACESSO: TDateField;
    cdsPrestadorDS_ULT_LOCAL: TStringField;
    cdsPrestadorNR_TEL_ULT_CONTATO: TStringField;
    cdsPrestadorNR_CRACHA: TStringField;
    cdsPrestadorDS_MOTIVO_BLOQUEIO: TStringField;
    cdsPrestadorID_SINCRONIZACAO: TSmallintField;
    cdsPrestadorBIO_DIR: TBlobField;
    cdsPrestadorBIO_ESQ: TBlobField;
    cdsPrestadorID_PRESENCA: TIntegerField;
    cdsPrestadorID_INATIVO: TIntegerField;
    cdsPrestadorID_TEMPLATE_CARREGADO: TIntegerField;
    cdsPrestadorID_INATIVO_CARREGADO: TIntegerField;
    cdsPrestadorID_CADASTRO_REFEITO: TIntegerField;
    cdsPrestadorID_CADASTRO_ANTIGO: TSmallintField;
    cdsPrestadorDT_INATIVACAO: TSQLTimeStampField;
    cdsPrestadorID_USUARIO_INATIVACAO: TSmallintField;
    cdsPrestadorID_ACESSO_LIBERADO: TSmallintField;
    cdsPrestadorDT_VALIDADE_EXAME: TDateField;
    cdsPrestadorAVULSO_VEICULO: TIntegerField;
    cdsPrestadorID_TEMPLATE_APAGADO: TSmallintField;
    cdsPrestadorID_CONTROLE_BIO: TSmallintField;
    cdsPrestadorNR_QLD_BIO_ESQ: TSmallintField;
    cdsPrestadorNR_QLD_BIO_DIR: TSmallintField;
    cdsPrestadorID_PRESENCA_INTERNA: TSmallintField;
    cdsPrestadorDATA_CADASTRO: TSQLTimeStampField;
    cdsPrestadorDATA_ATUALIZACAO: TSQLTimeStampField;
    cdsPrestadorID_USUARIO_CADASTRO: TIntegerField;
    cdsPrestadorID_USUARIO_ATUALIZACAO: TIntegerField;
    cdsPrestadorID_TIPO_TEMPLATE_BIO: TSmallintField;
    cdsPrestadorID_DEDO_DIR: TSmallintField;
    cdsPrestadorID_DEDO_ESQ: TSmallintField;
    cdsPrestadorDT_ANTECEDENTE_CRIMINAL: TDateField;
    cdsPrestadorDS_UF: TStringField;
    cdsPrestadorNM_MAE: TStringField;
    cdsPrestadorNR_CARTEIRA_TRABALHO: TStringField;
    cdsPrestadorNM_PAI: TStringField;
    cdsPrestadorDS_NATURALIDADE: TStringField;
    cdsPrestadorDS_PROFISSAO: TStringField;
    cdsPrestadorDS_ENDERECO: TStringField;
    cdsPrestadorDS_BAIRRO: TStringField;
    cdsPrestadorDS_CIDADE: TStringField;
    cdsPrestadorTELEFONE_PRESTADOR: TStringField;
    cdsPrestadorNR_TELEFONE_PESSOAL_2: TStringField;
    cdsPrestadorID_EMPRESA: TIntegerField;
    cdsPrestadorID_MORADOR_CADASTRO: TIntegerField;
    cdsPrestadorID_MORADOR_MIGRADO: TIntegerField;
    cdsPrestadorID_OUTSIDE: TStringField;
    cdsPrestadorNR_DOCUMENTO: TStringField;
    cdsPrestadorID_PROBLEMA_FACIAL: TIntegerField;
    cdsPrestadorDS_SEXO: TStringField;
    cdsPrestadorNR_CPF_CNPJ: TStringField;
    cdsPrestadorDS_ESTADO_CIVIL: TStringField;
    cdsPrestadorDS_STATUS_ANTECEDENTE: TStringField;
    cdsPrestadorID_STATUS_ANTECEDENTES: TStringField;
    cdsPrestadorID_CONTROLE_FACIAL: TIntegerField;
    cdsPrestadorID_ESPECIAL: TIntegerField;
    cdsPrestadorID_PROB_IDFACE: TIntegerField;
    cdsPrestadorID_UTILIZA_FACIALP: TIntegerField;
    cdsPrestadorID_PROBLEMA_FACIAL_INTELBRAS: TIntegerField;
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
