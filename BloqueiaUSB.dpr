program BloqueiaUSB;

uses
  Vcl.Forms,
  uBloqueia in 'uBloqueia.pas' {FormUSBLocker},
  uSenha in 'uSenha.pas' {FormSenha},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Ruby Graphite');
  Application.CreateForm(TFormUSBLocker, FormUSBLocker);
  Application.CreateForm(TFormSenha, FormSenha);
  Application.Run;
end.
