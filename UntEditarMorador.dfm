object frmEditar: TfrmEditar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'BELSI | ACESSO - Editar Cadastro'
  ClientHeight = 208
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 78
    Width = 31
    Height = 13
    Caption = 'Nome:'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 45
    Top = 110
    Width = 18
    Height = 13
    Caption = 'RG:'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 20
    Top = 142
    Width = 43
    Height = 13
    Caption = 'Unidade:'
    FocusControl = DBEdit3
  end
  object Button1: TButton
    Left = 363
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBEdit1: TDBEdit
    Left = 69
    Top = 75
    Width = 369
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NM_PRESTADOR'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 69
    Top = 107
    Width = 199
    Height = 21
    DataField = 'NR_RG'
    DataSource = DataSource1
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 463
    Height = 41
    Align = alTop
    Caption = 'Editar Cadastro'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 69
    Top = 139
    Width = 199
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NM_UNIDADE'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DataSource1: TDataSource
    DataSet = dmCadastro.cdsPesquisaPrestador
    Left = 24
    Top = 168
  end
end
