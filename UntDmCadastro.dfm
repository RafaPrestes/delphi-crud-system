object dmCadastro: TdmCadastro
  OldCreateOrder = False
  Height = 537
  Width = 745
  object cdsPrestador: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CD_PRESTADOR'
        ParamType = ptInput
      end>
    ProviderName = 'dspPrestador'
    Left = 168
    Top = 256
    object cdsPrestadorCD_PRESTADOR: TIntegerField
      FieldName = 'CD_PRESTADOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPrestadorNM_PRESTADOR: TStringField
      FieldName = 'NM_PRESTADOR'
      Size = 50
    end
    object cdsPrestadorNR_RG: TStringField
      FieldName = 'NR_RG'
      Size = 15
    end
    object cdsPrestadorDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
    end
    object cdsPrestadorNR_TELEFONE_PESSOAL: TStringField
      FieldName = 'NR_TELEFONE_PESSOAL'
      Size = 15
    end
    object cdsPrestadorANO_VEICULO: TIntegerField
      FieldName = 'ANO_VEICULO'
    end
    object cdsPrestadorMARCA_VEICULO: TStringField
      FieldName = 'MARCA_VEICULO'
      Size = 30
    end
    object cdsPrestadorMODELO_VEICULO: TStringField
      FieldName = 'MODELO_VEICULO'
      Size = 30
    end
    object cdsPrestadorCOR_VEICULO: TStringField
      FieldName = 'COR_VEICULO'
      Size = 30
    end
    object cdsPrestadorPLACA_VEICULO: TStringField
      FieldName = 'PLACA_VEICULO'
      Size = 7
    end
    object cdsPrestadorDS_OBS: TMemoField
      FieldName = 'DS_OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPrestadorID_ACESSO: TStringField
      FieldName = 'ID_ACESSO'
      Size = 1
    end
    object cdsPrestadorDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object cdsPrestadorIMG_FACE: TBlobField
      FieldName = 'IMG_FACE'
      Size = 1
    end
    object cdsPrestadorIMG_DOCUMENTO: TBlobField
      FieldName = 'IMG_DOCUMENTO'
      Size = 1
    end
    object cdsPrestadorIMG_VEICULO: TBlobField
      FieldName = 'IMG_VEICULO'
      Size = 1
    end
    object cdsPrestadorNM_RAZAO_SOCIAL: TStringField
      FieldName = 'NM_RAZAO_SOCIAL'
      Size = 50
    end
    object cdsPrestadorDS_RAMO_EMPRESA: TStringField
      FieldName = 'DS_RAMO_EMPRESA'
      Size = 30
    end
    object cdsPrestadorNM_RESPONSAVEL: TStringField
      FieldName = 'NM_RESPONSAVEL'
      Size = 30
    end
    object cdsPrestadorNR_TELEFONE_EMPRESA: TStringField
      FieldName = 'NR_TELEFONE_EMPRESA'
      Size = 15
    end
    object cdsPrestadorNR_RAMAL: TStringField
      FieldName = 'NR_RAMAL'
      Size = 12
    end
    object cdsPrestadorNM_ULT_CONTATO: TStringField
      FieldName = 'NM_ULT_CONTATO'
      Size = 30
    end
    object cdsPrestadorDT_ULT_ACESSO: TDateField
      FieldName = 'DT_ULT_ACESSO'
    end
    object cdsPrestadorDS_ULT_LOCAL: TStringField
      FieldName = 'DS_ULT_LOCAL'
      Size = 30
    end
    object cdsPrestadorNR_TEL_ULT_CONTATO: TStringField
      FieldName = 'NR_TEL_ULT_CONTATO'
      Size = 15
    end
    object cdsPrestadorNR_CRACHA: TStringField
      FieldName = 'NR_CRACHA'
    end
    object cdsPrestadorDS_MOTIVO_BLOQUEIO: TStringField
      FieldName = 'DS_MOTIVO_BLOQUEIO'
      Size = 200
    end
    object cdsPrestadorID_SINCRONIZACAO: TSmallintField
      FieldName = 'ID_SINCRONIZACAO'
    end
    object cdsPrestadorBIO_DIR: TBlobField
      FieldName = 'BIO_DIR'
      Size = 1
    end
    object cdsPrestadorBIO_ESQ: TBlobField
      FieldName = 'BIO_ESQ'
      Size = 1
    end
    object cdsPrestadorID_PRESENCA: TIntegerField
      FieldName = 'ID_PRESENCA'
    end
    object cdsPrestadorID_INATIVO: TIntegerField
      FieldName = 'ID_INATIVO'
    end
    object cdsPrestadorID_TEMPLATE_CARREGADO: TIntegerField
      FieldName = 'ID_TEMPLATE_CARREGADO'
    end
    object cdsPrestadorID_INATIVO_CARREGADO: TIntegerField
      FieldName = 'ID_INATIVO_CARREGADO'
    end
    object cdsPrestadorID_CADASTRO_REFEITO: TIntegerField
      FieldName = 'ID_CADASTRO_REFEITO'
    end
    object cdsPrestadorID_CADASTRO_ANTIGO: TSmallintField
      FieldName = 'ID_CADASTRO_ANTIGO'
    end
    object cdsPrestadorDT_INATIVACAO: TSQLTimeStampField
      FieldName = 'DT_INATIVACAO'
    end
    object cdsPrestadorID_USUARIO_INATIVACAO: TSmallintField
      FieldName = 'ID_USUARIO_INATIVACAO'
    end
    object cdsPrestadorID_ACESSO_LIBERADO: TSmallintField
      FieldName = 'ID_ACESSO_LIBERADO'
    end
    object cdsPrestadorDT_VALIDADE_EXAME: TDateField
      FieldName = 'DT_VALIDADE_EXAME'
    end
    object cdsPrestadorAVULSO_VEICULO: TIntegerField
      FieldName = 'AVULSO_VEICULO'
    end
    object cdsPrestadorID_TEMPLATE_APAGADO: TSmallintField
      FieldName = 'ID_TEMPLATE_APAGADO'
    end
    object cdsPrestadorID_CONTROLE_BIO: TSmallintField
      FieldName = 'ID_CONTROLE_BIO'
    end
    object cdsPrestadorNR_QLD_BIO_ESQ: TSmallintField
      FieldName = 'NR_QLD_BIO_ESQ'
    end
    object cdsPrestadorNR_QLD_BIO_DIR: TSmallintField
      FieldName = 'NR_QLD_BIO_DIR'
    end
    object cdsPrestadorID_PRESENCA_INTERNA: TSmallintField
      FieldName = 'ID_PRESENCA_INTERNA'
    end
    object cdsPrestadorDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsPrestadorDATA_ATUALIZACAO: TSQLTimeStampField
      FieldName = 'DATA_ATUALIZACAO'
    end
    object cdsPrestadorID_USUARIO_CADASTRO: TIntegerField
      FieldName = 'ID_USUARIO_CADASTRO'
    end
    object cdsPrestadorID_USUARIO_ATUALIZACAO: TIntegerField
      FieldName = 'ID_USUARIO_ATUALIZACAO'
    end
    object cdsPrestadorID_TIPO_TEMPLATE_BIO: TSmallintField
      FieldName = 'ID_TIPO_TEMPLATE_BIO'
    end
    object cdsPrestadorID_DEDO_DIR: TSmallintField
      FieldName = 'ID_DEDO_DIR'
    end
    object cdsPrestadorID_DEDO_ESQ: TSmallintField
      FieldName = 'ID_DEDO_ESQ'
    end
    object cdsPrestadorDT_ANTECEDENTE_CRIMINAL: TDateField
      FieldName = 'DT_ANTECEDENTE_CRIMINAL'
    end
    object cdsPrestadorDS_UF: TStringField
      FieldName = 'DS_UF'
      Size = 2
    end
    object cdsPrestadorNM_MAE: TStringField
      FieldName = 'NM_MAE'
      Size = 50
    end
    object cdsPrestadorNR_CARTEIRA_TRABALHO: TStringField
      FieldName = 'NR_CARTEIRA_TRABALHO'
    end
    object cdsPrestadorNM_PAI: TStringField
      FieldName = 'NM_PAI'
      Size = 50
    end
    object cdsPrestadorDS_NATURALIDADE: TStringField
      FieldName = 'DS_NATURALIDADE'
      Size = 50
    end
    object cdsPrestadorDS_PROFISSAO: TStringField
      FieldName = 'DS_PROFISSAO'
      Size = 30
    end
    object cdsPrestadorDS_ENDERECO: TStringField
      FieldName = 'DS_ENDERECO'
      Size = 50
    end
    object cdsPrestadorDS_BAIRRO: TStringField
      FieldName = 'DS_BAIRRO'
    end
    object cdsPrestadorDS_CIDADE: TStringField
      FieldName = 'DS_CIDADE'
      Size = 30
    end
    object cdsPrestadorTELEFONE_PRESTADOR: TStringField
      FieldName = 'TELEFONE_PRESTADOR'
    end
    object cdsPrestadorNR_TELEFONE_PESSOAL_2: TStringField
      FieldName = 'NR_TELEFONE_PESSOAL_2'
      Size = 15
    end
    object cdsPrestadorID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object cdsPrestadorID_MORADOR_CADASTRO: TIntegerField
      FieldName = 'ID_MORADOR_CADASTRO'
    end
    object cdsPrestadorID_MORADOR_MIGRADO: TIntegerField
      FieldName = 'ID_MORADOR_MIGRADO'
    end
    object cdsPrestadorID_OUTSIDE: TStringField
      FieldName = 'ID_OUTSIDE'
      Size = 100
    end
    object cdsPrestadorNR_DOCUMENTO: TStringField
      FieldName = 'NR_DOCUMENTO'
      Size = 50
    end
    object cdsPrestadorID_PROBLEMA_FACIAL: TIntegerField
      FieldName = 'ID_PROBLEMA_FACIAL'
    end
    object cdsPrestadorDS_SEXO: TStringField
      FieldName = 'DS_SEXO'
      Size = 10
    end
    object cdsPrestadorNR_CPF_CNPJ: TStringField
      FieldName = 'NR_CPF_CNPJ'
      Size = 14
    end
    object cdsPrestadorDS_ESTADO_CIVIL: TStringField
      FieldName = 'DS_ESTADO_CIVIL'
      Size = 10
    end
    object cdsPrestadorDS_STATUS_ANTECEDENTE: TStringField
      FieldName = 'DS_STATUS_ANTECEDENTE'
    end
    object cdsPrestadorID_STATUS_ANTECEDENTES: TStringField
      FieldName = 'ID_STATUS_ANTECEDENTES'
      FixedChar = True
      Size = 2
    end
    object cdsPrestadorID_CONTROLE_FACIAL: TIntegerField
      FieldName = 'ID_CONTROLE_FACIAL'
    end
    object cdsPrestadorID_ESPECIAL: TIntegerField
      FieldName = 'ID_ESPECIAL'
    end
    object cdsPrestadorID_PROB_IDFACE: TIntegerField
      FieldName = 'ID_PROB_IDFACE'
    end
    object cdsPrestadorID_UTILIZA_FACIALP: TIntegerField
      FieldName = 'ID_UTILIZA_FACIALP'
    end
    object cdsPrestadorID_PROBLEMA_FACIAL_INTELBRAS: TIntegerField
      FieldName = 'ID_PROBLEMA_FACIAL_INTELBRAS'
    end
  end
  object dsePrestador: TSQLDataSet
    SchemaName = 'SYSDBA'
    CommandText = 'select * from TAB_PRESTADOR WHERE CD_PRESTADOR = :CD_PRESTADOR ;'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'CD_PRESTADOR'
        ParamType = ptInput
      end>
    SQLConnection = DATACADASTRO
    Left = 168
    Top = 128
    object dsePrestadorCD_PRESTADOR: TIntegerField
      FieldName = 'CD_PRESTADOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dsePrestadorNM_PRESTADOR: TStringField
      FieldName = 'NM_PRESTADOR'
      Size = 50
    end
    object dsePrestadorNR_RG: TStringField
      FieldName = 'NR_RG'
      Size = 15
    end
    object dsePrestadorDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
    end
    object dsePrestadorNR_TELEFONE_PESSOAL: TStringField
      FieldName = 'NR_TELEFONE_PESSOAL'
      Size = 15
    end
    object dsePrestadorANO_VEICULO: TIntegerField
      FieldName = 'ANO_VEICULO'
    end
    object dsePrestadorMARCA_VEICULO: TStringField
      FieldName = 'MARCA_VEICULO'
      Size = 30
    end
    object dsePrestadorMODELO_VEICULO: TStringField
      FieldName = 'MODELO_VEICULO'
      Size = 30
    end
    object dsePrestadorCOR_VEICULO: TStringField
      FieldName = 'COR_VEICULO'
      Size = 30
    end
    object dsePrestadorPLACA_VEICULO: TStringField
      FieldName = 'PLACA_VEICULO'
      Size = 7
    end
    object dsePrestadorDS_OBS: TMemoField
      FieldName = 'DS_OBS'
      BlobType = ftMemo
      Size = 1
    end
    object dsePrestadorID_ACESSO: TStringField
      FieldName = 'ID_ACESSO'
      Size = 1
    end
    object dsePrestadorDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object dsePrestadorIMG_FACE: TBlobField
      FieldName = 'IMG_FACE'
      Size = 1
    end
    object dsePrestadorIMG_DOCUMENTO: TBlobField
      FieldName = 'IMG_DOCUMENTO'
      Size = 1
    end
    object dsePrestadorIMG_VEICULO: TBlobField
      FieldName = 'IMG_VEICULO'
      Size = 1
    end
    object dsePrestadorNM_RAZAO_SOCIAL: TStringField
      FieldName = 'NM_RAZAO_SOCIAL'
      Size = 50
    end
    object dsePrestadorDS_RAMO_EMPRESA: TStringField
      FieldName = 'DS_RAMO_EMPRESA'
      Size = 30
    end
    object dsePrestadorNM_RESPONSAVEL: TStringField
      FieldName = 'NM_RESPONSAVEL'
      Size = 30
    end
    object dsePrestadorNR_TELEFONE_EMPRESA: TStringField
      FieldName = 'NR_TELEFONE_EMPRESA'
      Size = 15
    end
    object dsePrestadorNR_RAMAL: TStringField
      FieldName = 'NR_RAMAL'
      Size = 12
    end
    object dsePrestadorNM_ULT_CONTATO: TStringField
      FieldName = 'NM_ULT_CONTATO'
      Size = 30
    end
    object dsePrestadorDT_ULT_ACESSO: TDateField
      FieldName = 'DT_ULT_ACESSO'
    end
    object dsePrestadorDS_ULT_LOCAL: TStringField
      FieldName = 'DS_ULT_LOCAL'
      Size = 30
    end
    object dsePrestadorNR_TEL_ULT_CONTATO: TStringField
      FieldName = 'NR_TEL_ULT_CONTATO'
      Size = 15
    end
    object dsePrestadorNR_CRACHA: TStringField
      FieldName = 'NR_CRACHA'
    end
    object dsePrestadorDS_MOTIVO_BLOQUEIO: TStringField
      FieldName = 'DS_MOTIVO_BLOQUEIO'
      Size = 200
    end
    object dsePrestadorID_SINCRONIZACAO: TSmallintField
      FieldName = 'ID_SINCRONIZACAO'
    end
    object dsePrestadorBIO_DIR: TBlobField
      FieldName = 'BIO_DIR'
      Size = 1
    end
    object dsePrestadorBIO_ESQ: TBlobField
      FieldName = 'BIO_ESQ'
      Size = 1
    end
    object dsePrestadorID_PRESENCA: TIntegerField
      FieldName = 'ID_PRESENCA'
    end
    object dsePrestadorID_INATIVO: TIntegerField
      FieldName = 'ID_INATIVO'
    end
    object dsePrestadorID_TEMPLATE_CARREGADO: TIntegerField
      FieldName = 'ID_TEMPLATE_CARREGADO'
    end
    object dsePrestadorID_INATIVO_CARREGADO: TIntegerField
      FieldName = 'ID_INATIVO_CARREGADO'
    end
    object dsePrestadorID_CADASTRO_REFEITO: TIntegerField
      FieldName = 'ID_CADASTRO_REFEITO'
    end
    object dsePrestadorID_CADASTRO_ANTIGO: TSmallintField
      FieldName = 'ID_CADASTRO_ANTIGO'
    end
    object dsePrestadorDT_INATIVACAO: TSQLTimeStampField
      FieldName = 'DT_INATIVACAO'
    end
    object dsePrestadorID_USUARIO_INATIVACAO: TSmallintField
      FieldName = 'ID_USUARIO_INATIVACAO'
    end
    object dsePrestadorID_ACESSO_LIBERADO: TSmallintField
      FieldName = 'ID_ACESSO_LIBERADO'
    end
    object dsePrestadorDT_VALIDADE_EXAME: TDateField
      FieldName = 'DT_VALIDADE_EXAME'
    end
    object dsePrestadorAVULSO_VEICULO: TIntegerField
      FieldName = 'AVULSO_VEICULO'
    end
    object dsePrestadorID_TEMPLATE_APAGADO: TSmallintField
      FieldName = 'ID_TEMPLATE_APAGADO'
    end
    object dsePrestadorID_CONTROLE_BIO: TSmallintField
      FieldName = 'ID_CONTROLE_BIO'
    end
    object dsePrestadorNR_QLD_BIO_ESQ: TSmallintField
      FieldName = 'NR_QLD_BIO_ESQ'
    end
    object dsePrestadorNR_QLD_BIO_DIR: TSmallintField
      FieldName = 'NR_QLD_BIO_DIR'
    end
    object dsePrestadorID_PRESENCA_INTERNA: TSmallintField
      FieldName = 'ID_PRESENCA_INTERNA'
    end
    object dsePrestadorDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
    end
    object dsePrestadorDATA_ATUALIZACAO: TSQLTimeStampField
      FieldName = 'DATA_ATUALIZACAO'
    end
    object dsePrestadorID_USUARIO_CADASTRO: TIntegerField
      FieldName = 'ID_USUARIO_CADASTRO'
    end
    object dsePrestadorID_USUARIO_ATUALIZACAO: TIntegerField
      FieldName = 'ID_USUARIO_ATUALIZACAO'
    end
    object dsePrestadorID_TIPO_TEMPLATE_BIO: TSmallintField
      FieldName = 'ID_TIPO_TEMPLATE_BIO'
    end
    object dsePrestadorID_DEDO_DIR: TSmallintField
      FieldName = 'ID_DEDO_DIR'
    end
    object dsePrestadorID_DEDO_ESQ: TSmallintField
      FieldName = 'ID_DEDO_ESQ'
    end
    object dsePrestadorDT_ANTECEDENTE_CRIMINAL: TDateField
      FieldName = 'DT_ANTECEDENTE_CRIMINAL'
    end
    object dsePrestadorDS_UF: TStringField
      FieldName = 'DS_UF'
      Size = 2
    end
    object dsePrestadorNM_MAE: TStringField
      FieldName = 'NM_MAE'
      Size = 50
    end
    object dsePrestadorNR_CARTEIRA_TRABALHO: TStringField
      FieldName = 'NR_CARTEIRA_TRABALHO'
    end
    object dsePrestadorNM_PAI: TStringField
      FieldName = 'NM_PAI'
      Size = 50
    end
    object dsePrestadorDS_NATURALIDADE: TStringField
      FieldName = 'DS_NATURALIDADE'
      Size = 50
    end
    object dsePrestadorDS_PROFISSAO: TStringField
      FieldName = 'DS_PROFISSAO'
      Size = 30
    end
    object dsePrestadorDS_ENDERECO: TStringField
      FieldName = 'DS_ENDERECO'
      Size = 50
    end
    object dsePrestadorDS_BAIRRO: TStringField
      FieldName = 'DS_BAIRRO'
    end
    object dsePrestadorDS_CIDADE: TStringField
      FieldName = 'DS_CIDADE'
      Size = 30
    end
    object dsePrestadorTELEFONE_PRESTADOR: TStringField
      FieldName = 'TELEFONE_PRESTADOR'
    end
    object dsePrestadorNR_TELEFONE_PESSOAL_2: TStringField
      FieldName = 'NR_TELEFONE_PESSOAL_2'
      Size = 15
    end
    object dsePrestadorID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object dsePrestadorID_MORADOR_CADASTRO: TIntegerField
      FieldName = 'ID_MORADOR_CADASTRO'
    end
    object dsePrestadorID_MORADOR_MIGRADO: TIntegerField
      FieldName = 'ID_MORADOR_MIGRADO'
    end
    object dsePrestadorID_OUTSIDE: TStringField
      FieldName = 'ID_OUTSIDE'
      Size = 100
    end
    object dsePrestadorNR_DOCUMENTO: TStringField
      FieldName = 'NR_DOCUMENTO'
      Size = 50
    end
    object dsePrestadorID_PROBLEMA_FACIAL: TIntegerField
      FieldName = 'ID_PROBLEMA_FACIAL'
    end
    object dsePrestadorDS_SEXO: TStringField
      FieldName = 'DS_SEXO'
      Size = 10
    end
    object dsePrestadorNR_CPF_CNPJ: TStringField
      FieldName = 'NR_CPF_CNPJ'
      Size = 14
    end
    object dsePrestadorDS_ESTADO_CIVIL: TStringField
      FieldName = 'DS_ESTADO_CIVIL'
      Size = 10
    end
    object dsePrestadorDS_STATUS_ANTECEDENTE: TStringField
      FieldName = 'DS_STATUS_ANTECEDENTE'
    end
    object dsePrestadorID_STATUS_ANTECEDENTES: TStringField
      FieldName = 'ID_STATUS_ANTECEDENTES'
      FixedChar = True
      Size = 2
    end
    object dsePrestadorID_CONTROLE_FACIAL: TIntegerField
      FieldName = 'ID_CONTROLE_FACIAL'
    end
    object dsePrestadorID_ESPECIAL: TIntegerField
      FieldName = 'ID_ESPECIAL'
    end
    object dsePrestadorID_PROB_IDFACE: TIntegerField
      FieldName = 'ID_PROB_IDFACE'
    end
    object dsePrestadorID_UTILIZA_FACIALP: TIntegerField
      FieldName = 'ID_UTILIZA_FACIALP'
    end
    object dsePrestadorID_PROBLEMA_FACIAL_INTELBRAS: TIntegerField
      FieldName = 'ID_PROBLEMA_FACIAL_INTELBRAS'
    end
  end
  object dspPrestador: TDataSetProvider
    DataSet = dsePrestador
    Left = 168
    Top = 192
  end
  object DATACADASTRO: TSQLConnection
    ConnectionName = 'DATACADASTRO'
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      
        'Database=C:\Users\USER\source\repos\Treino CRUD\Banco\BANCO_CRUD' +
        '.FDB'
      'User_Name=SYSDBA')
    VendorLib = 'fbclient.dll'
    Connected = True
    Left = 496
    Top = 200
  end
  object qryPesquisaPrestador: TSQLQuery
    NumericMapping = True
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM TAB_PRESTADOR tp;')
    SQLConnection = DATACADASTRO
    Left = 264
    Top = 128
    object qryPesquisaPrestadorCD_PRESTADOR: TIntegerField
      FieldName = 'CD_PRESTADOR'
    end
    object qryPesquisaPrestadorNM_PRESTADOR: TStringField
      FieldName = 'NM_PRESTADOR'
      Size = 50
    end
    object qryPesquisaPrestadorNR_RG: TStringField
      FieldName = 'NR_RG'
      Size = 15
    end
  end
  object dspPesquisaPrestador: TDataSetProvider
    DataSet = qryPesquisaPrestador
    Left = 264
    Top = 192
  end
  object cdsPesquisaPrestador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisaPrestador'
    Left = 264
    Top = 256
    object cdsPesquisaPrestadorCD_PRESTADOR: TIntegerField
      FieldName = 'CD_PRESTADOR'
    end
    object cdsPesquisaPrestadorNM_PRESTADOR: TStringField
      FieldName = 'NM_PRESTADOR'
      Size = 50
    end
    object cdsPesquisaPrestadorNR_RG: TStringField
      FieldName = 'NR_RG'
      Size = 15
    end
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\USER\Documents\Banco\CADASTROCRUD.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    Left = 184
    Top = 48
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 280
    Top = 48
  end
  object dsCadastro: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from TAB_PRESTADOR'
      'where'
      '  CD_PRESTADOR = :OLD_CD_PRESTADOR')
    InsertSQL.Strings = (
      'insert into TAB_PRESTADOR'
      '  (NM_PRESTADOR, NR_RG)'
      'values'
      '  (:NM_PRESTADOR, :NR_RG)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_PRESTADOR,'
      '  NM_PRESTADOR,'
      '  NR_RG'
      'from TAB_PRESTADOR '
      'where'
      '  CD_PRESTADOR = :CD_PRESTADOR')
    SelectSQL.Strings = (
      'select * from TAB_PRESTADOR;')
    ModifySQL.Strings = (
      'update TAB_PRESTADOR'
      'set'
      '  NM_PRESTADOR = :NM_PRESTADOR,'
      '  NR_RG = :NR_RG'
      'where'
      '  CD_PRESTADOR = :OLD_CD_PRESTADOR')
    Active = True
    Left = 360
    Top = 48
    object dsCadastroCD_PRESTADOR: TIntegerField
      FieldName = 'CD_PRESTADOR'
      Origin = '"TAB_PRESTADOR"."CD_PRESTADOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dsCadastroNM_PRESTADOR: TIBStringField
      FieldName = 'NM_PRESTADOR'
      Origin = '"TAB_PRESTADOR"."NM_PRESTADOR"'
      Size = 50
    end
    object dsCadastroNR_RG: TIBStringField
      FieldName = 'NR_RG'
      Origin = '"TAB_PRESTADOR"."NR_RG"'
      Size = 15
    end
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cod'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from TAB_MORADOR where CD_MORADOR =:cod')
    SQLConnection = DATACADASTRO
    Left = 568
    Top = 48
    object SQLQuery1CD_MORADOR: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CD_MORADOR'
    end
    object SQLQuery1NM_MORADOR: TStringField
      FieldName = 'NM_MORADOR'
      Size = 50
    end
    object SQLQuery1NR_RG: TStringField
      FieldName = 'NR_RG'
      Size = 15
    end
  end
  object qryPesquisa: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'pnome'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from TAB_PRESTADOR where NM_PRESTADOR like :pnome')
    SQLConnection = DATACADASTRO
    Left = 368
    Top = 128
    object qryPesquisaCD_PRESTADOR: TIntegerField
      FieldName = 'CD_PRESTADOR'
      Required = True
    end
    object qryPesquisaNM_PRESTADOR: TStringField
      FieldName = 'NM_PRESTADOR'
      Size = 50
    end
    object qryPesquisaNR_RG: TStringField
      FieldName = 'NR_RG'
      Size = 15
    end
  end
  object dspPesquisa: TDataSetProvider
    DataSet = qryPesquisa
    Left = 368
    Top = 192
  end
  object cdsPesquisa: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa'
    Left = 368
    Top = 256
    object cdsPesquisaCD_PRESTADOR: TIntegerField
      FieldName = 'CD_PRESTADOR'
      Required = True
    end
    object cdsPesquisaNM_PRESTADOR: TStringField
      FieldName = 'NM_PRESTADOR'
      Size = 50
    end
    object cdsPesquisaNR_RG: TStringField
      FieldName = 'NR_RG'
      Size = 15
    end
  end
  object frxDBSelecionarTodos: TfrxDBDataset
    UserName = 'frxDBSelecionarTodos'
    CloseDataSource = False
    DataSet = cdsPesquisaPrestador
    BCDToCurrency = False
    Left = 160
    Top = 480
  end
  object frxReportSelecionarPorUnidade: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44721.611718877300000000
    ReportOptions.LastChange = 44721.616290162000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 344
    Top = 400
    Datasets = <
      item
        DataSet = frxDBSelecionarTodos
        DataSetName = 'frxDBSelecionarTodos'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 16053492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Rela'#231#227'o de Prestadores')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 132.283550000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        DataSet = frxDBSelecionarTodos
        DataSetName = 'frxDBSelecionarTodos'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 83.149660000000000000
          Top = 41.574830000000000000
          Width = 270.505721180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NM_PRESTADOR'
          DataSet = frxDBSelecionarTodos
          DataSetName = 'frxDBSelecionarTodos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBSelecionarTodos."NM_PRESTADOR"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo7: TfrxMemoView
          Left = 81.529221180000000000
          Top = 68.031540000000000000
          Width = 99.311574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NR_RG'
          DataSet = frxDBSelecionarTodos
          DataSetName = 'frxDBSelecionarTodos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBSelecionarTodos."NR_RG"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          Left = 82.573015980000000000
          Top = 94.488250000000000000
          Width = 246.245630240000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NM_UNIDADE'
          DataSet = frxDBSelecionarTodos
          DataSetName = 'frxDBSelecionarTodos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBSelecionarTodos."NM_UNIDADE"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo2: TfrxMemoView
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRESTADOR')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 34.015770000000000000
          Top = 41.574830000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Nome:')
        end
        object Memo4: TfrxMemoView
          Left = 49.133890000000000000
          Top = 68.031540000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'RG:')
        end
        object Memo5: TfrxMemoView
          Left = 22.677180000000000000
          Top = 94.488250000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Unidade:')
        end
        object Line1: TfrxLineView
          Top = 30.236240000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo10: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo11: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object cdsRelatorioPorUnidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelatorioPorUnidade'
    Left = 160
    Top = 432
    object cdsRelatorioPorUnidadeCD_PRESTADOR: TIntegerField
      FieldName = 'CD_PRESTADOR'
    end
    object cdsRelatorioPorUnidadeNM_PRESTADOR: TStringField
      FieldName = 'NM_PRESTADOR'
      Size = 50
    end
    object cdsRelatorioPorUnidadeNR_RG: TStringField
      FieldName = 'NR_RG'
      Size = 15
    end
    object cdsRelatorioPorUnidadeNM_UNIDADE: TStringField
      FieldName = 'NM_UNIDADE'
      Size = 50
    end
  end
  object dspRelatorioPorUnidade: TDataSetProvider
    DataSet = qryRelatorioPorUnidade
    Left = 160
    Top = 384
  end
  object qryRelatorioPorUnidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from TAB_PRESTADOR;')
    SQLConnection = DATACADASTRO
    Left = 160
    Top = 336
    object qryRelatorioPorUnidadeCD_PRESTADOR: TIntegerField
      FieldName = 'CD_PRESTADOR'
    end
    object qryRelatorioPorUnidadeNM_PRESTADOR: TStringField
      FieldName = 'NM_PRESTADOR'
      Size = 50
    end
    object qryRelatorioPorUnidadeNR_RG: TStringField
      FieldName = 'NR_RG'
      Size = 15
    end
    object qryRelatorioPorUnidadeNM_UNIDADE: TStringField
      FieldName = 'NM_UNIDADE'
      Size = 50
    end
  end
end
