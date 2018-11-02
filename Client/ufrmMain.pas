unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmClient = class(TForm)
    lblPorta: TLabel;
    edtMensagem: TEdit;
    btnSend: TButton;
    lblMensagemEnviada: TLabel;
    procedure btnSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClient: TfrmClient;

implementation

uses
  uCM;

{$R *.dfm}

procedure TfrmClient.btnSendClick(Sender: TObject);
begin
  lblMensagemEnviada.Caption := CM.SMClient.EchoString(edtMensagem.Text);
end;

end.
