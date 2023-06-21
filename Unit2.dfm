object FStagiaire: TFStagiaire
  Left = 396
  Top = 14
  Width = 712
  Height = 649
  BiDiMode = bdRightToLeft
  Caption = #1605#1578#1585#1576#1589' '#1580#1583#1610#1583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 88
    Top = 534
    Width = 75
    Height = 25
    Caption = #1581#1601#1592
    ModalResult = 1
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Panel4: TPanel
    Left = 24
    Top = 2
    Width = 281
    Height = 25
    Alignment = taLeftJustify
    Color = clSkyBlue
    TabOrder = 1
    object NumInsEdit: TLabeledEdit
      Left = 8
      Top = 2
      Width = 229
      Height = 21
      EditLabel.Width = 56
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdRightToLeft
      EditLabel.Caption = #1585#1602#1605' '#1575#1604#1578#1587#1580#1610#1604
      EditLabel.ParentBiDiMode = False
      LabelPosition = lpRight
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 27
    Width = 641
    Height = 129
    Caption = #1575#1604#1576#1591#1575#1602#1577' '#1575#1604#1588#1582#1589#1610#1577' :'
    TabOrder = 2
    object Panel3: TPanel
      Left = 325
      Top = 25
      Width = 284
      Height = 25
      Alignment = taLeftJustify
      Color = clSkyBlue
      TabOrder = 0
      object NomEdit: TLabeledEdit
        Left = 6
        Top = 2
        Width = 230
        Height = 21
        EditLabel.Width = 23
        EditLabel.Height = 13
        EditLabel.BiDiMode = bdRightToLeft
        EditLabel.Caption = #1575#1604#1575#1587#1605
        EditLabel.ParentBiDiMode = False
        LabelPosition = lpRight
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 17
      Top = 23
      Width = 284
      Height = 25
      Alignment = taLeftJustify
      Color = clSkyBlue
      TabOrder = 1
      object PrenomInsEdit: TLabeledEdit
        Left = 6
        Top = 2
        Width = 225
        Height = 21
        EditLabel.Width = 22
        EditLabel.Height = 13
        EditLabel.BiDiMode = bdRightToLeft
        EditLabel.Caption = #1575#1604#1604#1602#1576
        EditLabel.ParentBiDiMode = False
        LabelPosition = lpRight
        TabOrder = 0
      end
    end
    object Panel6: TPanel
      Left = 325
      Top = 55
      Width = 284
      Height = 25
      Alignment = taLeftJustify
      Caption = #1578#1575#1585#1610#1582' '#1575#1604#1575#1586#1583#1610#1575#1583':'
      Color = clSkyBlue
      TabOrder = 2
      object DateNaisInsEdit: TDateTimePicker
        Left = 5
        Top = 4
        Width = 196
        Height = 18
        Date = 45086.696481388890000000
        Time = 45086.696481388890000000
        TabOrder = 0
      end
    end
    object Panel7: TPanel
      Left = 17
      Top = 55
      Width = 284
      Height = 25
      Alignment = taLeftJustify
      Color = clSkyBlue
      TabOrder = 3
      object LieuNaisInsEdit: TLabeledEdit
        Left = 4
        Top = 2
        Width = 225
        Height = 21
        EditLabel.Width = 53
        EditLabel.Height = 13
        EditLabel.BiDiMode = bdRightToLeft
        EditLabel.Caption = #1605#1603#1575#1606' '#1575#1604#1575#1586#1610#1575#1583
        EditLabel.ParentBiDiMode = False
        LabelPosition = lpRight
        TabOrder = 0
      end
    end
    object Panel1: TPanel
      Left = 17
      Top = 86
      Width = 284
      Height = 25
      Alignment = taLeftJustify
      Caption = #1575#1604#1580#1606#1587':'
      Color = clSkyBlue
      TabOrder = 4
      object GendreEdit: TComboBox
        Left = 0
        Top = 2
        Width = 230
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        Text = #1594#1610#1585' '#1605#1581#1583#1583
        Items.Strings = (
          #1584#1603#1585
          #1575#1606#1579#1609)
      end
    end
    object Panel9: TPanel
      Left = 325
      Top = 87
      Width = 284
      Height = 25
      Alignment = taLeftJustify
      Color = clSkyBlue
      TabOrder = 5
      object AdresseInsEdit: TLabeledEdit
        Left = 4
        Top = 2
        Width = 225
        Height = 21
        EditLabel.Width = 32
        EditLabel.Height = 13
        EditLabel.BiDiMode = bdRightToLeft
        EditLabel.Caption = #1575#1604#1593#1606#1608#1575#1606
        EditLabel.ParentBiDiMode = False
        LabelPosition = lpRight
        TabOrder = 0
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 156
    Width = 641
    Height = 113
    Caption = #1575#1604#1581#1575#1604#1577' '#1575#1604#1593#1575#1574#1604#1610#1577' :'
    TabOrder = 3
    object Panel2: TPanel
      Left = 325
      Top = 21
      Width = 284
      Height = 25
      Alignment = taLeftJustify
      Caption = #1575#1604#1581#1575#1604#1577' '#1575#1604#1593#1575#1574#1604#1610#1577':'
      Color = clSkyBlue
      TabOrder = 0
      object EtatCivilEdit: TComboBox
        Left = 0
        Top = 2
        Width = 209
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        Text = #1594#1610#1585' '#1605#1581#1583#1583
        Items.Strings = (
          #1571#1593#1586#1576
          #1605#1578#1586#1608#1580
          #1605#1591#1604#1602)
      end
    end
    object Panel10: TPanel
      Left = 325
      Top = 52
      Width = 284
      Height = 25
      Alignment = taLeftJustify
      Caption = #1593#1583#1583' '#1575#1604#1575#1582#1608#1577':'
      Color = clSkyBlue
      TabOrder = 1
      object Label1: TLabel
        Left = 121
        Top = 8
        Width = 31
        Height = 13
        Caption = #1575#1604#1578#1585#1578#1610#1576
      end
      object NGarconEdit: TSpinEdit
        Left = 160
        Top = 2
        Width = 65
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 0
      end
      object NRangEdit: TSpinEdit
        Left = 8
        Top = 3
        Width = 105
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 0
      end
    end
    object Panel8: TPanel
      Left = 17
      Top = 21
      Width = 284
      Height = 25
      Alignment = taLeftJustify
      Caption = #1608#1590#1593#1610#1577' '#1575#1604#1608#1575#1604#1583#1610#1606':'
      Color = clSkyBlue
      TabOrder = 2
      object SituationParentEdit: TComboBox
        Left = 0
        Top = 2
        Width = 209
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        Text = #1594#1610#1585' '#1605#1581#1583#1583
        Items.Strings = (
          ''
          #1605#1591#1604#1602#1575#1606
          #1575#1604#1571#1576' '#1605#1578#1608#1601#1610
          #1575#1604#1575#1605' '#1605#1578#1608#1601#1610#1577)
      end
    end
    object Panel11: TPanel
      Left = 17
      Top = 51
      Width = 284
      Height = 25
      Alignment = taLeftJustify
      Caption = #1593#1583#1583' '#1575#1604#1576#1606#1575#1578':'
      Color = clSkyBlue
      TabOrder = 3
      object NFilleEdit: TSpinEdit
        Left = 8
        Top = 2
        Width = 201
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 0
      end
    end
    object Panel21: TPanel
      Left = 325
      Top = 84
      Width = 284
      Height = 25
      Alignment = taLeftJustify
      Caption = #1605#1607#1606#1577' '#1575#1604#1575#1576':'
      Color = clSkyBlue
      TabOrder = 4
      object MPereEdit: TEdit
        Left = 3
        Top = 2
        Width = 206
        Height = 21
        TabOrder = 0
      end
    end
    object Panel22: TPanel
      Left = 21
      Top = 80
      Width = 284
      Height = 25
      Alignment = taLeftJustify
      Caption = #1605#1607#1606#1577' '#1575#1604#1575#1605':'
      Color = clSkyBlue
      TabOrder = 5
      object MMereEdit: TEdit
        Left = 3
        Top = 2
        Width = 206
        Height = 21
        TabOrder = 0
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 7
    Top = 334
    Width = 641
    Height = 105
    Caption = #1575#1604#1578#1603#1608#1610#1606' :'
    TabOrder = 4
    object Panel12: TPanel
      Left = 328
      Top = 30
      Width = 283
      Height = 27
      Alignment = taLeftJustify
      Caption = #1606#1605#1591' '#1575#1604#1578#1603#1608#1610#1606':'
      Color = clSkyBlue
      TabOrder = 0
      object ModeFormationEdit: TComboBox
        Left = 6
        Top = 4
        Width = 187
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        Text = #1594#1610#1585' '#1605#1581#1583#1583
        Items.Strings = (
          #1578#1605#1607#1610#1606
          #1581#1590#1608#1585#1610
          #1583#1585#1608#1587' '#1605#1587#1575#1574#1610#1577
          #1575#1604#1605#1585#1575#1577' '#1575#1604#1605#1575#1603#1579#1577' '#1601#1610' '#1575#1604#1576#1610#1578
          #1593#1576#1585' '#1575#1604#1605#1593#1575#1576#1585
          '')
      end
    end
    object Panel13: TPanel
      Left = 328
      Top = 64
      Width = 283
      Height = 25
      Alignment = taLeftJustify
      Caption = #1575#1604#1578#1582#1589#1589':'
      Color = clSkyBlue
      TabOrder = 1
      object SpecialiteInsEdit: TComboBox
        Left = 4
        Top = 2
        Width = 230
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        Text = #1594#1610#1585' '#1605#1581#1583#1583
        OnDropDown = SpecialiteInsEditDropDown
      end
    end
    object Panel14: TPanel
      Left = 16
      Top = 32
      Width = 284
      Height = 25
      Alignment = taLeftJustify
      Caption = #1578#1575#1585#1610#1593' '#1575#1604#1578#1587#1580#1610#1604':'
      Color = clSkyBlue
      TabOrder = 2
      object DateInsEdit: TDateTimePicker
        Left = 1
        Top = 3
        Width = 200
        Height = 20
        Date = 45086.696481388890000000
        Time = 45086.696481388890000000
        TabOrder = 0
      end
    end
    object Panel15: TPanel
      Left = 16
      Top = 64
      Width = 284
      Height = 25
      Alignment = taLeftJustify
      Caption = #1605#1587#1578#1608#1609' '#1575#1604#1578#1603#1608#1610#1606':'
      Color = clSkyBlue
      TabOrder = 3
      object NiveauFormationEdit: TComboBox
        Left = 6
        Top = 4
        Width = 195
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = '1'
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
      end
    end
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 268
    Width = 641
    Height = 65
    Caption = #1575#1604#1605#1587#1578#1608#1609' '#1575#1604#1578#1593#1604#1610#1605#1610' :'
    TabOrder = 5
    object Panel16: TPanel
      Left = 328
      Top = 24
      Width = 285
      Height = 25
      Alignment = taLeftJustify
      Caption = #1575#1604#1605#1587#1578#1608#1609':'
      Color = clSkyBlue
      TabOrder = 0
      object NiveauScoInsEdit: TComboBox
        Left = -2
        Top = 4
        Width = 230
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        Text = #1594#1610#1585' '#1605#1581#1583#1583
        Items.Strings = (
          #1605#1575#1587#1578#1585
          #1575#1604#1587#1606#1577' '#1575#1604#1579#1575#1604#1579#1577' '#1579#1575#1606#1608#1610
          #1575#1604#1587#1606#1577' '#1575#1604#1579#1575#1606#1610#1577' '#1579#1575#1606#1608#1610
          #1575#1604#1587#1606#1577' '#1575#1604#1575#1608#1604#1609' '#1579#1575#1606#1608#1610
          #1575#1604#1587#1606#1577' '#1575#1604#1585#1575#1576#1593#1577' '#1605#1578#1608#1587#1591
          #1575#1604#1587#1606#1577' '#1575#1604#1579#1575#1604#1579#1577' '#1605#1578#1608#1587#1591
          #1575#1604#1587#1606#1577' '#1575#1604#1575#1608#1604#1609' '#1605#1578#1608#1587#1591
          #1575#1604#1578#1575#1587#1593#1577' '#1575#1587#1575#1587#1610
          #1575#1604#1579#1575#1605#1606#1577' '#1575#1587#1575#1587#1610
          #1575#1604#1587#1575#1576#1593#1577' '#1575#1587#1575#1587#1610
          #1575#1604#1587#1575#1583#1587#1577' '#1575#1576#1578#1583#1575#1574#1610
          #1575#1604#1582#1575#1605#1587#1577' '#1575#1576#1578#1583#1575#1574#1610
          #1576#1583#1608#1606)
      end
    end
    object Panel17: TPanel
      Left = 8
      Top = 24
      Width = 297
      Height = 25
      Alignment = taLeftJustify
      Caption = #1575#1604#1605#1572#1587#1587#1577' '#1575#1604#1578#1593#1604#1610#1605#1610#1577
      Color = clSkyBlue
      TabOrder = 1
      object EcoleEdit: TComboBox
        Left = 5
        Top = 2
        Width = 204
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnDropDown = EcoleEditDropDown
      end
    end
  end
  object GroupBox6: TGroupBox
    Left = 8
    Top = 440
    Width = 641
    Height = 49
    Caption = #1605#1593#1604#1608#1605#1575#1578' '#1575#1590#1575#1601#1610#1577':'
    TabOrder = 6
    object Panel18: TPanel
      Left = 13
      Top = 14
      Width = 284
      Height = 25
      Alignment = taLeftJustify
      Color = clSkyBlue
      TabOrder = 0
      object RemarqueEdit: TLabeledEdit
        Left = 0
        Top = 3
        Width = 229
        Height = 21
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.BiDiMode = bdRightToLeft
        EditLabel.Caption = #1575#1604#1605#1604#1575#1581#1592#1577
        EditLabel.ParentBiDiMode = False
        LabelPosition = lpRight
        TabOrder = 0
      end
    end
    object Panel19: TPanel
      Left = 335
      Top = 16
      Width = 276
      Height = 25
      Alignment = taLeftJustify
      Color = clSkyBlue
      TabOrder = 1
      object NumTelInsEdit: TLabeledEdit
        Left = 3
        Top = 2
        Width = 225
        Height = 21
        EditLabel.Width = 48
        EditLabel.Height = 13
        EditLabel.BiDiMode = bdRightToLeft
        EditLabel.Caption = #1585#1602#1605' '#1575#1604#1607#1575#1578#1601
        EditLabel.ParentBiDiMode = False
        LabelPosition = lpRight
        TabOrder = 0
      end
    end
  end
  object Panel20: TPanel
    Left = 340
    Top = 1
    Width = 305
    Height = 25
    Alignment = taLeftJustify
    Caption = #1575#1604#1583#1608#1585#1577':'
    Color = clSkyBlue
    TabOrder = 7
    object PeriodeEdit: TEdit
      Left = 5
      Top = 2
      Width = 252
      Height = 21
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 272
    Top = 496
    Width = 377
    Height = 113
    Caption = #1575#1604#1585#1594#1576#1575#1578':'
    TabOrder = 8
    object Panel24: TPanel
      Left = 63
      Top = 16
      Width = 276
      Height = 25
      Alignment = taLeftJustify
      Caption = #1575#1604#1585#1601#1576#1577' 1:'
      Color = clSkyBlue
      TabOrder = 0
      object sp1edit: TComboBox
        Left = 24
        Top = 3
        Width = 205
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnDropDown = SpecialiteInsEditDropDown
      end
    end
    object Panel23: TPanel
      Left = 63
      Top = 48
      Width = 276
      Height = 25
      Alignment = taLeftJustify
      Caption = #1575#1604#1585#1594#1576#1577' 2:'
      Color = clSkyBlue
      TabOrder = 1
      object sp2edit: TComboBox
        Left = 24
        Top = 3
        Width = 205
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnDropDown = SpecialiteInsEditDropDown
      end
    end
    object Panel25: TPanel
      Left = 63
      Top = 80
      Width = 276
      Height = 25
      Alignment = taLeftJustify
      Caption = #1575#1604#1585#1601#1576#1577' 3:'
      Color = clSkyBlue
      TabOrder = 2
      object sp3edit: TComboBox
        Left = 24
        Top = 3
        Width = 205
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnDropDown = SpecialiteInsEditDropDown
      end
    end
  end
end
