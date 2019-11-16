unit uBloqueia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Registry,
  Vcl.ImgList;

type
  TFormUSBLocker = class(TForm)
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUSBLocker: TFormUSBLocker;

implementation

{$R *.dfm}

uses uSenha;

procedure TFormUSBLocker.BitBtn1Click(Sender: TObject);
var
Reg: TRegistry;
begin
  try
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    Reg.OpenKey('\SYSTEM\CurrentControlSet\Services\USBSTOR\',False);

    if RadioGroup1.ItemIndex = 0 then
    begin
      Reg.WriteInteger('Start',4);
      MessageDlg('USB bloqueada!',mtInformation,[mbOK],1);
    end else begin
      Reg.WriteInteger('Start',3);
      MessageDlg('USB Liberada!',mtInformation,[mbOK],1);
    end;

    Reg.CloseKey;
    Reg.Free;
  except
    begin
      MessageDlg('Houve um erro ao acessar o registro, não foi possivel bloquear!',mtInformation,[mbOK],1);
    end;
  end;
end;

procedure TFormUSBLocker.FormShow(Sender: TObject);
begin
  FormSenha.ShowModal;
end;

end.
