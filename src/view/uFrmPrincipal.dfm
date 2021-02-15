object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  ActiveControl = EB_NOME
  Caption = 'Funcionario '
  ClientHeight = 238
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbFuncao: TLabel
    Left = 37
    Top = 45
    Width = 35
    Height = 13
    Caption = 'Fun'#231#227'o'
  end
  object lbNome: TLabel
    Left = 37
    Top = 21
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object lbSalario: TLabel
    Left = 352
    Top = 53
    Width = 32
    Height = 13
    Caption = 'Salario'
  end
  object blReprocacoes: TLabel
    Left = 321
    Top = 75
    Width = 63
    Height = 13
    Caption = 'Reprova'#231#245'es'
  end
  object EB_NOME: TEdit
    Left = 79
    Top = 18
    Width = 433
    Height = 21
    TabOrder = 0
  end
  object mmObs: TMemo
    Left = 78
    Top = 137
    Width = 435
    Height = 80
    Enabled = False
    TabOrder = 1
  end
  object cbTipoFuncao: TComboBox
    Left = 78
    Top = 45
    Width = 203
    Height = 21
    ItemIndex = 0
    TabOrder = 2
    Items.Strings = (
      ''
      'Programador'
      'Analista'
      'Teste')
  end
  object EB_SALARIO: TMaskEdit
    Left = 390
    Top = 45
    Width = 122
    Height = 21
    TabOrder = 3
    Text = ''
  end
  object btCalcular: TButton
    Left = 79
    Top = 75
    Width = 123
    Height = 37
    Caption = 'Calcular'
    TabOrder = 4
    OnClick = btCalcularClick
  end
  object EB_REPROVACOES: TMaskEdit
    Left = 390
    Top = 67
    Width = 122
    Height = 21
    TabOrder = 5
    Text = ''
  end
end
