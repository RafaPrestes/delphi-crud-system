object frmCadastro: TfrmCadastro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'BELSI | ACESSO - Cadastro de Prestadores'
  ClientHeight = 231
  ClientWidth = 363
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
    Top = 75
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 45
    Top = 110
    Width = 18
    Height = 13
    Caption = 'RG:'
  end
  object btnInserir: TButton
    Left = 253
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 0
    OnClick = btnInserirClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 363
    Height = 41
    Align = alTop
    Caption = 'Cadastro de Prestadores'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object edNome: TEdit
    Left = 69
    Top = 72
    Width = 259
    Height = 21
    CharCase = ecUpperCase
    Color = clGradientInactiveCaption
    TabOrder = 2
  end
  object edRG: TEdit
    Left = 69
    Top = 107
    Width = 177
    Height = 21
    Color = clGradientInactiveCaption
    TabOrder = 3
  end
  object ds: TDataSource
    DataSet = dmCadastro.cdsPrestador
    Left = 16
    Top = 184
  end
end
