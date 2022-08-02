object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'BELSI | ACESSO - Pesquisa de Prestadores'
  ClientHeight = 398
  ClientWidth = 868
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnPesquisa: TButton
    Left = 750
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 0
    OnClick = btnPesquisaClick
  end
  object btnNovo: TButton
    Left = 25
    Top = 335
    Width = 75
    Height = 33
    Caption = 'Incluir Novo'
    TabOrder = 1
    OnClick = btnNovoClick
  end
  object btnExcluir: TButton
    Left = 774
    Top = 335
    Width = 75
    Height = 35
    Caption = 'Excluir'
    TabOrder = 2
    OnClick = btnExcluirClick
  end
  object ComboBox1: TComboBox
    Left = 25
    Top = 56
    Width = 144
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    TextHint = 'Selecione o tipo de busca'
    Items.Strings = (
      'NOME'
      'RG'
      'UNIDADE')
  end
  object edPesquisa: TEdit
    Left = 200
    Top = 56
    Width = 529
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 25
    Top = 96
    Width = 824
    Height = 233
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CD_PRESTADOR'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_PRESTADOR'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NR_RG'
        Title.Caption = 'RG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_UNIDADE'
        Title.Caption = 'Unidade'
        Visible = True
      end>
  end
  object btnEditar: TButton
    Left = 106
    Top = 335
    Width = 75
    Height = 33
    Caption = 'Editar'
    TabOrder = 6
    OnClick = btnEditarClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 868
    Height = 41
    Align = alTop
    Caption = 'Pesquisa de Prestadores'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 7
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 381
    Width = 868
    Height = 17
    Align = alBottom
    TabOrder = 8
  end
  object DataSource1: TDataSource
    DataSet = dmCadastro.cdsPesquisaPrestador
    Left = 496
    Top = 8
  end
  object MainMenu1: TMainMenu
    Left = 640
    Top = 344
    object relatorio: TMenuItem
      Caption = 'Relat'#243'rios'
      object relPrestadorUnidade: TMenuItem
        Caption = 'Prestadores e Unidades'
        OnClick = relPrestadorUnidadeClick
      end
    end
  end
end
