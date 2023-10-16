object frmBuscaCNPJ: TfrmBuscaCNPJ
  Left = 0
  Top = 0
  Caption = 'Busca CNPJ'
  ClientHeight = 587
  ClientWidth = 1095
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 126
    Height = 21
    Caption = 'Informe o CNPJ: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtCNPJ: TMaskEdit
    Left = 143
    Top = 8
    Width = 253
    Height = 29
    EditMask = '###.###.###/####-##'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxLength = 19
    ParentFont = False
    TabOrder = 0
    Text = '   .   .   /    -  '
  end
  object BitBtn1: TBitBtn
    Left = 407
    Top = 8
    Width = 121
    Height = 29
    Caption = 'Consultar CNPJ'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object mmResult: TMemo
    Left = 8
    Top = 43
    Width = 520
    Height = 686
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 544
    Top = 8
    Width = 545
    Height = 193
    Caption = '  Resumo da Consulta:  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object lbAbertura: TLabel
      Left = 127
      Top = 30
      Width = 4
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbSituacao: TLabel
      Left = 127
      Top = 62
      Width = 4
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbRazaoSocial: TLabel
      Left = 127
      Top = 92
      Width = 4
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbNomeFant: TLabel
      Left = 127
      Top = 124
      Width = 4
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbPorte: TLabel
      Left = 127
      Top = 155
      Width = 4
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 3
      Top = 25
      Width = 118
      Height = 32
      Alignment = taRightJustify
      BevelInner = bvSpace
      BorderStyle = bsSingle
      Caption = 'Data de Abertura:  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 3
      Top = 57
      Width = 118
      Height = 32
      Alignment = taRightJustify
      BevelInner = bvSpace
      BorderStyle = bsSingle
      Caption = 'Situa'#231#227'o:  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 3
      Top = 88
      Width = 118
      Height = 32
      Alignment = taRightJustify
      BevelInner = bvSpace
      BorderStyle = bsSingle
      Caption = 'Raz'#227'o Social:  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Panel4: TPanel
      Left = 3
      Top = 120
      Width = 118
      Height = 32
      Alignment = taRightJustify
      BevelInner = bvSpace
      BorderStyle = bsSingle
      Caption = 'Nome Fantasia:  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object Panel5: TPanel
      Left = 3
      Top = 152
      Width = 118
      Height = 32
      Alignment = taRightJustify
      BevelInner = bvSpace
      BorderStyle = bsSingle
      Caption = 'Porte:  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
end
