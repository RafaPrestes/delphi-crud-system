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
  end
  object dsePrestador: TSQLDataSet
    SchemaName = 'SYSDBA'
    CommandText = 'select * from TAB_PRESTADOR WHERE CD_PRESTADOR = :CD_PRESTADOR ;'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
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
  end
  object dspPrestador: TDataSetProvider
    DataSet = dsePrestador
    Left = 168
    Top = 192
  end
  object DATACADASTRO: TSQLConnection
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      
        'Database=C:\Users\USER\source\repos\Treino CRUD\Banco\CADASTROCR' +
        'UD.FDB'
      'User_Name=SYSDBA')
    VendorLib = 'fbclient.dll'
    Connected = True
    Left = 496
    Top = 200
  end
  object qryPesquisaPrestador: TSQLQuery
    NumericMapping = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tab_prestador;')
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
    object qryPesquisaPrestadorNM_UNIDADE: TStringField
      FieldName = 'NM_UNIDADE'
      Size = 50
    end
  end
  object dspPesquisaPrestador: TDataSetProvider
    DataSet = qryPesquisaPrestador
    Left = 264
    Top = 192
  end
  object cdsPesquisaPrestador: TClientDataSet
    Active = True
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
    object cdsPesquisaPrestadorNM_UNIDADE: TStringField
      FieldName = 'NM_UNIDADE'
      Size = 50
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
    MaxBlobSize = -1
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