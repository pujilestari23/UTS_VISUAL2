object Form1: TForm1
  Left = 320
  Top = 127
  Width = 928
  Height = 480
  Caption = 'Form1'
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
    Left = 48
    Top = 16
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label2: TLabel
    Left = 40
    Top = 72
    Width = 42
    Height = 13
    Caption = 'Deskripsi'
  end
  object Label3: TLabel
    Left = 64
    Top = 320
    Width = 87
    Height = 13
    Caption = 'MASUKAN NAMA: '
  end
  object Edit1: TEdit
    Left = 128
    Top = 16
    Width = 209
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 128
    Top = 64
    Width = 209
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 56
    Top = 120
    Width = 81
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 120
    Width = 113
    Height = 33
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 328
    Top = 120
    Width = 113
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 464
    Top = 120
    Width = 105
    Height = 33
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 192
    Width = 369
    Height = 105
    DataSource = DataModule2.DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit3: TEdit
    Left = 160
    Top = 320
    Width = 233
    Height = 21
    TabOrder = 7
    OnChange = Edit3Change
  end
end
