object Form1: TForm1
  Left = 553
  Top = 125
  Width = 490
  Height = 469
  Caption = 'Satuan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Nama: TLabel
    Left = 40
    Top = 24
    Width = 45
    Height = 19
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DISKRIPSI: TLabel
    Left = 40
    Top = 56
    Width = 75
    Height = 19
    Caption = 'DISKRIPSI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object MasukanNama: TLabel
    Left = 40
    Top = 272
    Width = 124
    Height = 19
    Caption = 'MASUKAN NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtNama: TEdit
    Left = 152
    Top = 24
    Width = 233
    Height = 21
    TabOrder = 0
    Text = 'edtNama'
  end
  object edtDeskripsi: TEdit
    Left = 152
    Top = 56
    Width = 233
    Height = 21
    TabOrder = 1
    Text = 'edtDeskripsi'
  end
  object btnSimpan: TButton
    Left = 48
    Top = 96
    Width = 65
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = btnSimpanClick
  end
  object btnEdit: TButton
    Left = 136
    Top = 96
    Width = 73
    Height = 25
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = btnEditClick
  end
  object btnHapus: TButton
    Left = 232
    Top = 96
    Width = 81
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = btnHapusClick
  end
  object btnBatal: TButton
    Left = 328
    Top = 96
    Width = 57
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = btnBatalClick
  end
  object dbgrd1: TDBGrid
    Left = 40
    Top = 136
    Width = 345
    Height = 121
    DataSource = dssatuan
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edtMasukanNama: TEdit
    Left = 176
    Top = 272
    Width = 209
    Height = 21
    TabOrder = 7
    Text = 'edtMasukanNama'
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\zeos\libmysql.dll'
    Left = 416
    Top = 24
  end
  object ZSatuan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM satuan')
    Params = <>
    Left = 416
    Top = 80
  end
  object dssatuan: TDataSource
    DataSet = ZSatuan
    Left = 416
    Top = 136
  end
end
