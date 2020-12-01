object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1040#1075#1073#1080#1089'.'#1040#1076#1084#1080#1085
  ClientHeight = 506
  ClientWidth = 804
  Color = clBtnFace
  TransparentColorValue = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 0
    Top = 487
    Width = 804
    Height = 19
    Align = alBottom
    Alignment = taRightJustify
    Caption = '(C) '#1050#1080#1073#1077#1088#1050#1054#1058', '#1042#1072#1085#1076#1099#1096#1077#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 589
    ExplicitWidth = 215
  end
  object Password: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 487
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object GridPanel6: TGridPanel
      Left = 0
      Top = 0
      Width = 804
      Height = 487
      Align = alClient
      ColumnCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Label9
          Row = 0
        end
        item
          Column = 0
          ColumnSpan = 2
          Control = Button2
          Row = 1
        end
        item
          Column = 1
          Control = Edit1
          Row = 0
        end>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 0
      object Label9: TLabel
        Left = 1
        Top = 209
        Width = 401
        Height = 34
        Align = alBottom
        Alignment = taCenter
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -28
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 243
      end
      object Button2: TButton
        Left = 1
        Top = 243
        Width = 802
        Height = 50
        Align = alTop
        Caption = #1042#1086#1081#1090#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -28
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Button2Click
      end
      object Edit1: TEdit
        Left = 402
        Top = 201
        Width = 401
        Height = 42
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -28
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 1
        OnKeyUp = Edit1KeyUp
      end
    end
  end
  object Main: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 487
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 299
      Width = 804
      Height = 13
      Align = alTop
      Caption = #1051#1086#1075':'
      ExplicitWidth = 22
    end
    object Button1: TButton
      Left = 0
      Top = 274
      Width = 804
      Height = 25
      Hint = 
        #1055#1088#1080' '#1085#1072#1078#1072#1090#1080#1080' '#1073#1091#1076#1077#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#1086' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1087#1086' '#1089#1087#1080#1089#1082#1091' '#1079#1072#1082#1072#1079#1086#1074' '#1089#1086#1075#1083#1072#1089#1085#1086' ' +
        #1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1074#1082#1083#1072#1076#1082#1077' '#1074#1099#1096#1077
      Align = alTop
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object GridPanel1: TGridPanel
      Left = 0
      Top = 0
      Width = 804
      Height = 274
      Align = alTop
      BevelOuter = bvNone
      ColumnCollection = <
        item
          Value = 14.695418676641220000
        end
        item
          Value = 85.304581323358780000
        end>
      ControlCollection = <
        item
          Column = 1
          Control = PageControl1
          Row = 0
          RowSpan = 2
        end
        item
          Column = 0
          Control = Panel1
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end
        item
          SizeStyle = ssAuto
        end
        item
          SizeStyle = ssAuto
        end>
      TabOrder = 1
      object PageControl1: TPageControl
        Left = 118
        Top = 0
        Width = 686
        Height = 274
        Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1077' '#1076#1077#1081#1089#1090#1074#1080#1077
        ActivePage = TabSheet2
        Align = alClient
        Anchors = []
        MultiLine = True
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1082#1083#1072#1076
          object GridPanel2: TGridPanel
            Left = 0
            Top = 0
            Width = 678
            Height = 246
            Align = alClient
            BevelOuter = bvNone
            ColumnCollection = <
              item
                Value = 31.705816507784980000
              end
              item
                Value = 31.776358636289080000
              end
              item
                Value = 36.517824855925940000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = ComboBox1
                Row = 0
              end
              item
                Column = 2
                Control = ComboBox2
                Row = 0
              end
              item
                Column = 1
                Control = Label3
                Row = 0
              end>
            RowCollection = <
              item
                Value = 48.870299647528010000
              end
              item
                Value = 51.129700352471990000
              end>
            TabOrder = 0
            object ComboBox1: TComboBox
              Left = 0
              Top = 0
              Width = 214
              Height = 22
              Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1072#1082#1086#1081' '#1089#1082#1083#1072#1076' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1080#1079#1084#1077#1085#1080#1090#1100
              Align = alTop
              Style = csOwnerDrawFixed
              TabOrder = 0
              Items.Strings = (
                #1058#1077#1082#1091#1097#1080#1081' '#1089#1082#1083#1072#1076
                #1057#1082#1083#1072#1076' '#1087#1088#1080#1077#1084#1072
                #1057#1082#1083#1072#1076' '#1074#1099#1076#1072#1095#1080)
            end
            object ComboBox2: TComboBox
              Left = 429
              Top = 0
              Width = 249
              Height = 22
              Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1072' '#1082#1072#1082#1086#1081' '#1089#1082#1083#1072#1076' '#1080#1079#1084#1077#1085#1103#1077#1084
              Align = alTop
              Style = csOwnerDrawFixed
              TabOrder = 1
            end
            object Label3: TLabel
              Left = 214
              Top = 0
              Width = 215
              Height = 21
              Align = alTop
              Alignment = taCenter
              Caption = #1080#1079#1084#1077#1085#1080#1090#1100' '#1085#1072
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 99
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1092#1080#1089#1082#1072#1083#1100#1085#1099#1081' '#1087#1088#1080#1079#1085#1072#1082' '#1086#1087#1083#1072#1090
          ImageIndex = 1
          object GridPanel3: TGridPanel
            Left = 0
            Top = 0
            Width = 678
            Height = 246
            Align = alClient
            BevelOuter = bvNone
            ColumnCollection = <
              item
                Value = 49.741951811878020000
              end
              item
                Value = 50.258048188121980000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label4
                Row = 0
              end
              item
                Column = 1
                Control = ComboBox4
                Row = 0
              end
              item
                Column = 0
                Control = Label6
                Row = 1
              end
              item
                Column = 1
                Control = ComboBox5
                Row = 1
              end
              item
                Column = 0
                Control = Label7
                Row = 2
              end
              item
                Column = 1
                Control = ComboBox6
                Row = 2
              end>
            RowCollection = <
              item
                Value = 28.260195926207650000
              end
              item
                Value = 28.509814225808540000
              end
              item
                Value = 43.229989847983810000
              end>
            TabOrder = 0
            object Label4: TLabel
              Left = 0
              Top = 0
              Width = 337
              Height = 21
              Align = alTop
              Caption = #1060#1080#1089#1082#1072#1083#1100#1085#1099#1081' '#1087#1088#1080#1079#1085#1072#1082' '#1091' '#1086#1087#1083#1072#1090' '#1082#1072#1088#1090#1086#1081':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 294
            end
            object ComboBox4: TComboBox
              Left = 337
              Top = 0
              Width = 341
              Height = 22
              Hint = #1042#1099#1073#1077#1088#1080#1090#1077' - '#1092#1080#1089#1082#1072#1083#1100#1085#1072#1103' '#1086#1087#1083#1072#1090#1072' '#1080#1083#1080' '#1085#1077#1090
              Align = alTop
              Style = csOwnerDrawFixed
              TabOrder = 0
              Items.Strings = (
                #1053#1077' '#1080#1079#1084#1077#1085#1103#1077#1084
                #1060#1080#1089#1082#1072#1083#1100#1085#1072#1103' '#1086#1087#1083#1072#1090#1072
                #1053#1077' '#1092#1080#1089#1082#1072#1083#1100#1085#1072#1103' '#1086#1087#1083#1072#1090#1072)
            end
            object Label6: TLabel
              Left = 0
              Top = 69
              Width = 337
              Height = 21
              Align = alTop
              Caption = #1060#1080#1089#1082#1072#1083#1100#1085#1099#1081' '#1087#1088#1080#1079#1085#1072#1082' '#1091' '#1086#1087#1083#1072#1090' '#1085#1072#1083#1080#1095#1082#1086#1081':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 315
            end
            object ComboBox5: TComboBox
              Left = 337
              Top = 69
              Width = 341
              Height = 22
              Hint = #1042#1099#1073#1077#1088#1080#1090#1077' - '#1092#1080#1089#1082#1072#1083#1100#1085#1072#1103' '#1086#1087#1083#1072#1090#1072' '#1080#1083#1080' '#1085#1077#1090
              Align = alTop
              Style = csOwnerDrawFixed
              TabOrder = 1
              Items.Strings = (
                #1053#1077' '#1080#1079#1084#1077#1085#1103#1077#1084
                #1060#1080#1089#1082#1072#1083#1100#1085#1072#1103' '#1086#1087#1083#1072#1090#1072
                #1053#1077' '#1092#1080#1089#1082#1072#1083#1100#1085#1072#1103' '#1086#1087#1083#1072#1090#1072)
            end
            object Label7: TLabel
              Left = 0
              Top = 139
              Width = 337
              Height = 21
              Align = alTop
              Caption = #1054#1087#1083#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1072' '#1095#1077#1088#1077#1079' POS-'#1090#1077#1088#1084#1080#1085#1072#1083
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 310
            end
            object ComboBox6: TComboBox
              Left = 337
              Top = 139
              Width = 341
              Height = 22
              Hint = #1042#1099#1073#1077#1088#1080#1090#1077' - '#1090#1077#1088#1084#1080#1085#1072#1083#1100#1085#1072#1103' '#1086#1087#1083#1072#1090#1072' '#1080#1083#1080' '#1085#1077#1090
              Align = alTop
              Style = csOwnerDrawFixed
              TabOrder = 2
              Items.Strings = (
                #1053#1077' '#1080#1079#1084#1077#1085#1103#1077#1084
                #1058#1077#1088#1084#1080#1085#1072#1083#1100#1085#1072#1103' '#1086#1087#1083#1072#1090#1072
                #1053#1077' '#1090#1077#1088#1084#1080#1085#1072#1083#1100#1085#1072#1103' '#1086#1087#1083#1072#1090#1072)
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1090#1072#1090#1091#1089
          ImageIndex = 2
          object Label5: TLabel
            Left = 0
            Top = 0
            Width = 678
            Height = 21
            Align = alTop
            Alignment = taCenter
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1090#1072#1090#1091#1089' '#1079#1072#1082#1072#1079#1086#1074' '#1085#1072':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 225
          end
          object ComboBox3: TComboBox
            Left = 0
            Top = 21
            Width = 678
            Height = 22
            Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1072#1082#1086#1081' '#1089#1090#1072#1090#1091#1089' '#1091#1089#1090#1072#1085#1086#1074#1080#1090#1100
            Align = alTop
            Style = csOwnerDrawFixed
            TabOrder = 0
            Items.Strings = (
              #1053#1086#1074#1099#1081
              #1053#1072' '#1093#1088#1072#1085#1077#1085#1080#1080
              #1042' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1080
              #1048#1089#1087#1086#1083#1085#1077#1085#1085#1099#1081'  '
              #1042#1099#1076#1072#1085#1085#1099#1081
              #1047#1072#1082#1088#1099#1090#1099#1081
              #1054#1090#1084#1077#1085#1105#1085#1085#1099#1081)
          end
        end
        object TabSheet5: TTabSheet
          Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
          ImageIndex = 4
          object ComboBox7: TComboBox
            Left = 0
            Top = 0
            Width = 678
            Height = 21
            Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1072#1082#1086#1081' '#1089#1090#1072#1090#1091#1089' '#1091#1089#1090#1072#1085#1086#1074#1080#1090#1100
            Align = alTop
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 0
            Top = 21
            Width = 678
            Height = 21
            Align = alTop
            PasswordChar = '*'
            TabOrder = 1
            TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1074#1099#1081' '#1087#1072#1088#1086#1083#1100'...'
          end
          object RadioGroup1: TRadioGroup
            Left = 0
            Top = 42
            Width = 678
            Height = 46
            Align = alTop
            Caption = #1044#1077#1081#1089#1090#1074#1080#1077
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              #1059#1079#1085#1072#1090#1100' '#1087#1072#1088#1086#1083#1100
              #1057#1084#1077#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100)
            TabOrder = 2
          end
        end
        object TabSheet4: TTabSheet
          Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1087#1088#1086#1080#1079#1074#1086#1083#1100#1085#1099#1081' '#1079#1072#1087#1088#1086#1089
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Memo3: TMemo
            Left = 0
            Top = 0
            Width = 678
            Height = 164
            Hint = #1042#1074#1077#1076#1080#1090#1077' SQL-'#1079#1072#1087#1088#1086#1089
            Align = alClient
            TabOrder = 0
          end
          object GridPanel4: TGridPanel
            Left = 0
            Top = 205
            Width = 678
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            ColumnCollection = <
              item
                Value = 49.710381836536800000
              end
              item
                Value = 50.289618163463200000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = RadioButton1
                Row = 0
              end
              item
                Column = 1
                Control = RadioButton2
                Row = 0
              end>
            RowCollection = <
              item
                Value = 100.000000000000000000
              end
              item
                SizeStyle = ssAuto
              end>
            TabOrder = 1
            object RadioButton1: TRadioButton
              Left = 0
              Top = 0
              Width = 337
              Height = 41
              Align = alClient
              Caption = 
                #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1076#1083#1103' '#1082#1072#1078#1076#1086#1081' '#1089#1090#1088#1086#1082#1080' '#1089#1087#1080#1089#1082#1072' '#1079#1072#1082#1072#1079#1086#1074'. '#1055#1077#1088#1077#1084#1077#1085#1085#1072#1103' :var - '#1089#1090 +
                #1088#1086#1082#1072' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1079#1072#1082#1072#1079#1086#1074'.'
              Checked = True
              TabOrder = 0
              TabStop = True
              WordWrap = True
            end
            object RadioButton2: TRadioButton
              Left = 337
              Top = 0
              Width = 341
              Height = 41
              Align = alClient
              Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1086#1076#1080#1085' '#1088#1072#1079
              TabOrder = 1
            end
          end
          object GridPanel5: TGridPanel
            Left = 0
            Top = 164
            Width = 678
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            ColumnCollection = <
              item
                Value = 49.562731990703600000
              end
              item
                Value = 50.437268009296400000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = RadioButton3
                Row = 0
              end
              item
                Column = 1
                Control = RadioButton4
                Row = 0
              end>
            RowCollection = <
              item
                Value = 100.000000000000000000
              end>
            TabOrder = 2
            object RadioButton3: TRadioButton
              Left = 0
              Top = 0
              Width = 336
              Height = 41
              Align = alClient
              Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1079#1072#1087#1088#1086#1089' '#1073#1077#1079' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072' '
              Checked = True
              TabOrder = 0
              TabStop = True
              WordWrap = True
            end
            object RadioButton4: TRadioButton
              Left = 336
              Top = 0
              Width = 342
              Height = 41
              Align = alClient
              Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1079#1072#1087#1088#1086#1089' '#1080' '#1087#1086#1083#1091#1095#1080#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090
              TabOrder = 1
            end
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 118
        Height = 274
        Align = alClient
        Anchors = []
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 0
          Top = 0
          Width = 118
          Height = 19
          Align = alTop
          Alignment = taCenter
          Caption = #1057#1087#1080#1089#1086#1082' '#1079#1072#1082#1072#1079#1086#1074':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Memo1: TMemo
          Left = 0
          Top = 19
          Width = 118
          Height = 255
          Hint = #1057#1102#1076#1072' '#1074#1074#1086#1076#1080#1084' '#1087#1077#1088#1077#1095#1077#1085#1100' '#1079#1072#1082#1072#1079#1086#1074'. '#1054#1076#1085#1072' '#1089#1090#1088#1086#1082#1072' - '#1086#1076#1080#1085' '#1079#1072#1082#1072#1079'.'
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
        end
      end
    end
    object Memo2: TMemo
      Left = 0
      Top = 312
      Width = 804
      Height = 175
      Hint = #1057#1102#1076#1072' '#1073#1091#1076#1077#1090' '#1074#1099#1074#1086#1076#1080#1090#1100#1089#1103' '#1088#1077#1079#1091#1083#1100#1090#1072#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1093' '#1076#1077#1081#1089#1090#1074#1080#1081
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 2
    end
  end
end
