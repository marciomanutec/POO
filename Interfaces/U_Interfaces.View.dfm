object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Aprendendo Interfaces'
  ClientHeight = 314
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object M_Pessoa: TMemo
    Left = 225
    Top = 96
    Width = 209
    Height = 48
    Lines.Strings = (
      '')
    TabOrder = 3
  end
  object btn_pessoa: TButton
    Left = 144
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Pessoa'
    TabOrder = 0
    OnClick = btn_pessoaClick
  end
  object edt_nome: TEdit
    Left = 8
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt_sobre: TEdit
    Left = 8
    Top = 123
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object rg_pessoa: TRadioGroup
    Left = 8
    Top = 12
    Width = 297
    Height = 53
    Caption = ' Escolha a Pessoa:'
    Columns = 2
    Items.Strings = (
      'Fisica'
      'Juridica')
    TabOrder = 4
  end
end
