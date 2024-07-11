unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;

implementation
uses Unit2;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('insert into satuan values(null, :value1, :value2)');
DataModule2.ZQuery1.Params.ParamByName('value1').Value := Edit1.Text;
DataModule2.ZQuery1.Params.ParamByName('value2').Value := Edit2.Text;
DataModule2.ZQuery1.ExecSQL ;

DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('select * from satuan');
DataModule2.ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
with DataModule2.ZQuery1 do
begin
  SQL.Clear;
  DataModule2.ZQuery1.SQL.Add ('update satuan set nama="'+ Edit1.Text +'", deskripsi="'+ Edit2.Text +'" where id= "'+a+'"');

  ExecSQL ;

  SQL.Clear;
  SQL.Add('Select * from satuan');
  Open;
end;
ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
with DataModule2.ZQuery1 do
 begin
 SQL.Clear;
 SQL.Add('Delete from satuan where id= "'+a+'"');
 ExecSQL ;

  SQL.Clear;
  SQL.Add('Select * from satuan');
  Open;
end;
ShowMessage('Data Berhasil DiDelete!');
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text := DataModule2.ZQuery1.Fields[1].AsString;
a:= DataModule2.ZQuery1.Fields[0].AsString;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Edit1.Text :='';
Edit2.Text :='';
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
  with DataModule2.ZQuery1 do
  begin
    SQL.Clear;
    SQL.Add('select * from satuan where nama like "%'+Edit1.Text+'%"');
    Open;
  end;
end;

end.
