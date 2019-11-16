unit uSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFormSenha = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSenha: TFormSenha;

implementation

{$R *.dfm}

procedure TFormSenha.BitBtn1Click(Sender: TObject);
begin
  if Edit1.Text = 'abc123' then
  begin
    Close;
  end else begin
    MessageDlg('Senha incorreta.',mtInformation,[mbOK],1);
  end;
end;

procedure TFormSenha.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormSenha.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    BitBtn1.Click;
  end;
end;

end.
