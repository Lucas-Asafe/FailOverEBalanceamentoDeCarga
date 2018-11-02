unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    edtPorta: TEdit;
    btnStartStop: TButton;
    lblPorta: TLabel;
    procedure btnStartStopClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  uSC;

{$R *.dfm}

procedure TfrmMain.btnStartStopClick(Sender: TObject);
begin
  if SC.DSServer1.Started then
  begin
    SC.DSServer1.Stop();
    Caption := 'Servidor parado...';
  end
  else
  begin
    SC.DSTCPServerTransport1.Port := StrToInt(edtPorta.Text);
    SC.DSServer1.Start();
    Caption := 'Servidor rodando na porta ' + edtPorta.Text + '...';
  end;
end;

end.

