unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    Nama: TLabel;
    DISKRIPSI: TLabel;
    edtNama: TEdit;
    edtDeskripsi: TEdit;
    btnSimpan: TButton;
    btnEdit: TButton;
    btnHapus: TButton;
    btnBatal: TButton;
    dbgrd1: TDBGrid;
    MasukanNama: TLabel;
    edtMasukanNama: TEdit;
    ZConnection1: TZConnection;
    ZSatuan: TZQuery;
    dssatuan: TDataSource;
    procedure btnSimpanClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btnHapusClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;
implementation

{$R *.dfm}

procedure TForm1.btnSimpanClick(Sender: TObject);
begin
ZSatuan.SQL.Clear;
ZSatuan.SQL.Add('INSERT INTO satuan (nama, deskripsi) VALUES ("' + edtNama.Text + '", "' + edtDeskripsi.Text + '")');
ZSatuan.ExecSQL;

ZSatuan.SQL.Clear;
ZSatuan.SQL.Add('SELECT * FROM satuan');
ZSatuan.Open;
ShowMessage('Data Berhasil Disimpan');

end;

procedure TForm1.btnEditClick(Sender: TObject);
begin
    Zsatuan.SQL.Clear;
    Zsatuan.SQL.Add('UPDATE satuan SET nama = :nama, deskripsi = :deskripsi WHERE id = :id');
    Zsatuan.Params.ParamByName('nama').AsString := edtNama.Text;
    Zsatuan.Params.ParamByName('deskripsi').AsString := edtDeskripsi.Text;
    Zsatuan.Params.ParamByName('id').AsString := a;
    Zsatuan.ExecSQL;
    ShowMessage('Data Berhasil Diupdate');
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
  edtNama.Text := Zsatuan.Fields[1].AsString;
  edtDeskripsi.Text := Zsatuan.Fields[2].AsString;
  a := Zsatuan.Fields[0].AsString;
end;

procedure TForm1.btnHapusClick(Sender: TObject);
begin
  ZSatuan.SQL.Clear;
  ZSatuan.SQL.Add('delete from satuan WHERE id = "'+a+'"');
  ZSatuan.ExecSQL;

  ZSatuan.SQL.Clear;
  ZSatuan.SQL.Add('SELECT * FROM satuan');
  ZSatuan.Open;
ShowMessage('Data Berhasil Dihapus');

end;

procedure TForm1.btnBatalClick(Sender: TObject);
begin
  // Reset nilai kontrol input ke nilai sebelumnya atau kosong
  edtNama.Text := '';
  edtDeskripsi.Text := '';

  // Memuat ulang data dari tabel atau query
  ZSatuan.SQL.Clear;
  ZSatuan.SQL.Add('SELECT * FROM satuan');
  ZSatuan.Open;
  ShowMessage('Operasi dibatalkan');
end;

end.
