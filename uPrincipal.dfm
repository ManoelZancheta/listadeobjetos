object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 610
  ClientWidth = 882
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 248
    Top = 104
    Width = 161
    Height = 25
    Caption = 'Adicionar Item Venda'
    TabOrder = 0
    OnClick = Button1Click
  end
  object txtProduto: TLabeledEdit
    Left = 248
    Top = 77
    Width = 393
    Height = 21
    EditLabel.Width = 38
    EditLabel.Height = 13
    EditLabel.Caption = 'Produto'
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 248
    Top = 160
    Width = 321
    Height = 442
    TabOrder = 2
  end
  object Button2: TButton
    Left = 415
    Top = 104
    Width = 154
    Height = 25
    Caption = 'Visualizar Venda'
    TabOrder = 3
    OnClick = Button2Click
  end
end
