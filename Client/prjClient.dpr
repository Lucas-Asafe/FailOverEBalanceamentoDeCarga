program prjClient;

uses
  Vcl.Forms,
  ufrmMain in 'ufrmMain.pas' {frmClient},
  uCC in 'uCC.pas',
  uCM in 'uCM.pas' {CM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmClient, frmClient);
  Application.CreateForm(TCM, CM);
  Application.Run;
end.
