object FormSenha: TFormSenha
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormSenha'
  ClientHeight = 92
  ClientWidth = 245
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 245
    Height = 92
    Align = alClient
    BevelWidth = 6
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 10
      Top = 7
      Width = 225
      Height = 41
      Caption = ' Informe a senha. '
      TabOrder = 0
      object Edit1: TEdit
        Left = 5
        Top = 16
        Width = 216
        Height = 21
        PasswordChar = '*'
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
      end
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 151
      Top = 54
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
end
