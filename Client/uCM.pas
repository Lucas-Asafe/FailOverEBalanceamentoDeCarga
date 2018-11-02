unit uCM;

interface

uses
  System.SysUtils, System.Classes, uCC, Data.DbxDatasnap,
  Data.DBXCommon, IPPeerClient, Data.DB, Data.SqlExpr, Data.DbxHTTPLayer;

type
  TCM = class(TDataModule)
    SQLConnection1: TSQLConnection;
  private
    FInstanceOwner: Boolean;
    FSMClient: TSMClient;
    function GetSMClient: TSMClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property SMClient: TSMClient read GetSMClient write FSMClient;

end;

var
  CM: TCM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

constructor TCM.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TCM.Destroy;
begin
  FSMClient.Free;
  inherited;
end;

function TCM.GetSMClient: TSMClient;
begin
  if FSMClient = nil then
  begin
    SQLConnection1.Open;
    FSMClient:= TSMClient.Create(SQLConnection1.DBXConnection, FInstanceOwner);
  end;
  Result := FSMClient;
end;

end.
