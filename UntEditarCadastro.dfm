object frmEditarCadastro: TfrmEditarCadastro
  Left = 0
  Top = 0
  Caption = 'Editar'
  ClientHeight = 497
  ClientWidth = 597
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 56
    Width = 80
    Height = 13
    Caption = 'CD_PRESTADOR'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 96
    Width = 81
    Height = 13
    Caption = 'NM_PRESTADOR'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 136
    Width = 34
    Height = 13
    Caption = 'NR_RG'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 72
    Width = 34
    Height = 21
    DataField = 'CD_PRESTADOR'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 112
    Width = 500
    Height = 21
    DataField = 'NM_PRESTADOR'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 152
    Width = 199
    Height = 21
    DataField = 'NR_RG'
    DataSource = DataSource1
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 597
    Height = 41
    Align = alTop
    Caption = 'Editar'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    ExplicitLeft = 216
    ExplicitTop = 24
    ExplicitWidth = 185
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 216
    Width = 553
    Height = 161
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = dmCadastro.dsCadastro
    Left = 536
    Top = 120
  end
end
