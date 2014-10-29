object Form1: TForm1
  Left = 304
  Top = 171
  Width = 589
  Height = 408
  Caption = #1041#1083#1086#1082#1085#1086#1090' by Sacret^^'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 322
    Width = 581
    Height = 32
    Hint = #1057#1082#1086#1083#1100#1082#1086' '#1074#1088#1077#1084#1077#1085#1080'?'
    BiDiMode = bdLeftToRight
    Color = 16768743
    Panels = <
      item
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Width = 220
      end>
    ParentBiDiMode = False
    SizeGrip = False
  end
  object SynEdit1: TSynEdit
    Left = 0
    Top = 0
    Width = 581
    Height = 322
    Cursor = crHandPoint
    Hint = #1055#1080#1089#1072#1090#1100' '#1090#1091#1090'!'
    Align = alClient
    Color = clWhite
    ActiveLineColor = 16772599
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Courier New'
    Font.Style = []
    PopupMenu = PopupMenu1
    TabOrder = 1
    Gutter.AutoSize = True
    Gutter.Color = 16760272
    Gutter.Cursor = crHandPoint
    Gutter.DigitCount = 2
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -12
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    Gutter.LeadingZeros = True
    Gutter.LeftOffset = 10
    Gutter.ShowLineNumbers = True
    Gutter.Gradient = True
    Gutter.GradientEndColor = 16760272
    Lines.Strings = (
      #1055#1088#1086#1075#1088#1072#1084#1084#1082#1072' - '#1073#1083#1086#1082#1085#1086#1090')) '
      #169' Sacret'#39'09 '
      '('#1060#1048#1058#1059', 3-5'#1073')')
    Options = [eoAutoIndent, eoDragDropEditing, eoEnhanceEndKey, eoGroupUndo, eoShowScrollHint, eoSmartTabDelete, eoSmartTabs, eoTabsToSpaces]
    SelectedColor.Background = 16626118
    WantTabs = True
  end
  object MainMenu: TMainMenu
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      Hint = #1042#1089#1103#1082#1072#1103' '#1074#1089#1103#1095#1080#1085#1072
      object N2: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1090#1100
        Hint = #1057#1086#1079#1076#1072#1081#1090#1077' '#1085#1086#1074#1099#1081' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        Hint = #1054#1090#1082#1088#1086#1081#1090#1077' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
        OnClick = N3Click
      end
      object N5: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1077' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
        Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1077' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1077#1095#1072#1090#1080
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1055#1077#1095#1072#1090#1100
        Hint = #1056#1072#1089#1087#1077#1095#1072#1090#1072#1081#1090#1077' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        Hint = #1042#1099#1093#1086#1076' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
        OnClick = N9Click
      end
    end
    object N10: TMenuItem
      Caption = #1055#1088#1072#1074#1082#1072'^^'
      Hint = #1053#1091#1078#1085#1072#1103' '#1082#1085#1086#1087#1082#1072'!!!'
      object N11: TMenuItem
        Caption = #1042#1099#1088#1077#1079#1072#1090#1100
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
        Hint = 'ctrl + C'
        OnClick = N12Click
      end
      object N13: TMenuItem
        Caption = #1042#1089#1090#1072#1074#1080#1090#1100
        Hint = 'ctrl + V'
        OnClick = N13Click
      end
      object N14: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = N14Click
      end
      object N15: TMenuItem
        Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1105
        OnClick = N15Click
      end
      object N16: TMenuItem
        Caption = #1053#1072#1081#1090#1080
        OnClick = N16Click
      end
      object N17: TMenuItem
        Caption = #1047#1072#1084#1077#1085#1080#1090#1100
        OnClick = N17Click
      end
    end
    object N18: TMenuItem
      Caption = #1060#1086#1088#1084#1072#1090' XD'
      Hint = #1040' '#1101#1090#1086' '#1087#1086' '#1087#1088#1080#1082#1086#1083#1091
      object N19: TMenuItem
        Caption = #1064#1088#1080#1092#1090' - '#1085#1103'!'
        Hint = #1052#1086#1078#1085#1086' '#1080#1079#1084#1077#1085#1103#1090#1100' '#1096#1088#1080#1092#1090' %)'
        OnClick = N19Click
      end
      object N20: TMenuItem
        Caption = #1062#1074#1077#1090' '#1090#1077#1082#1089#1090#1072
        OnClick = N20Click
      end
      object N21: TMenuItem
        Caption = #1062#1074#1077#1090' '#1092#1086#1085#1072
        Hint = #1040' '#1101#1090#1086' '#1074#1086#1086#1073#1097#1077' '#1073#1077#1079#1091#1084#1085#1072#1103' '#1082#1085#1086#1087#1082#1072
        OnClick = N21Click
      end
    end
    object N4: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object N26: TMenuItem
        Caption = #1054' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1077
        OnClick = N26Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 32
    object Dshtpfnm1: TMenuItem
      Caption = #1042#1099#1088#1077#1079#1072#1090#1100
      OnClick = Dshtpfnm1Click
    end
    object N22: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      OnClick = N22Click
    end
    object N23: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      OnClick = N23Click
    end
    object N24: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N24Click
    end
    object N25: TMenuItem
      Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1105
      OnClick = N25Click
    end
  end
  object FindDialog1: TFindDialog
    OnFind = FindDialog1Find
    Left = 48
    Top = 136
  end
  object ReplaceDialog1: TReplaceDialog
    OnFind = ReplaceDialog1Find
    OnReplace = ReplaceDialog1Replace
    Left = 88
    Top = 136
  end
  object OpenDialog1: TOpenDialog
    Left = 128
    Top = 136
  end
  object SaveDialog1: TSaveDialog
    Left = 168
    Top = 136
  end
  object PrintDialog1: TPrintDialog
    Left = 208
    Top = 136
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 248
    Top = 136
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 288
    Top = 136
  end
  object ColorDialog1: TColorDialog
    Left = 328
    Top = 136
  end
end
