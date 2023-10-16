unit uBuscaCNPJ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, IdMultipartFormData,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  IdSSLOpenSSL, IdHTTP, ExtCtrls, ComObj, ActiveX, IdCoderMIME,
  AxCtrls, Vcl.Buttons, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  Vcl.Mask, superobject;

type
  TfrmBuscaCNPJ = class(TForm)
    edtCNPJ: TMaskEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    mmResult: TMemo;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    lbAbertura: TLabel;
    lbSituacao: TLabel;
    lbRazaoSocial: TLabel;
    lbNomeFant: TLabel;
    lbPorte: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    function HttpRequest(const aBody: string; const aMethod: String; aURL: String; aTimeout: integer; const aContentType: string = '') : TStringStream;
  public
    { Public declarations }
  end;

var
  frmBuscaCNPJ: TfrmBuscaCNPJ;

implementation

{$R *.dfm}

uses uFuncoes;


procedure TfrmBuscaCNPJ.BitBtn1Click(Sender: TObject);
var
  CNPJ, url     : String;
 _StringStream  : TStringStream;
 objRetorno     : ISuperObject;

begin
  CNPJ := ApenasNumeros(edtCNPJ.Text);
  if CNPJ = '' then
  begin
    ShowMessage('Informe o CNPJ!');
    edtCNPJ.SetFocus;
    edtCNPJ.SelectAll;
    Exit;
  end;

  url := 'https://www.receitaws.com.br/v1/cnpj/'+CNPJ;

  try
    _StringStream := HttpRequest(NullAsStringValue, 'GET', url, 100000, 'application/json');

    objRetorno    := SO(Utf8ToAnsi(_StringStream.DataString));
    mmResult.Text := (objRetorno.AsJSon(True));

    if objRetorno.S['status'] = 'ERROR' then
    begin
      ShowMessage('Não foi possível buscar as informações do CNPJ: '+edtCNPJ.Text);
      edtCNPJ.SetFocus;
      edtCNPJ.SelectAll;
      Exit;
    end
    else
    begin
      lbAbertura.Caption      := objRetorno.S['abertura'];
      lbSituacao.Caption      := objRetorno.S['situacao'];
      lbRazaoSocial.Caption   := objRetorno.S['nome'];
      lbNomeFant.Caption      := objRetorno.S['fantasia'];
      lbPorte.Caption         := objRetorno.S['porte'];

    end;
  finally
    _StringStream.Free;
  end;
end;

function TfrmBuscaCNPJ.HttpRequest(const aBody, aMethod: String; aURL: String; aTimeout: integer; const aContentType: string): TStringStream;
var
  Request       : OleVariant;
  HttpStream    : IStream;
  OleStream     : TOleStream;
  _StringStream : TStringStream;
begin
  CoInitialize(nil);
  _StringStream := TStringStream.Create;
  try
    Request := CreateOleObject('WinHttp.WinHttpRequest.5.1');
    Request.Open(aMethod, aURL, False);
    Request.SetRequestHeader('Content-Type', aContentType);
    Request.Send(aBody);
    HttpStream := IUnknown(Request.ResponseStream) as IStream;

    OleStream := TOleStream.Create(HttpStream);
    _StringStream.LoadFromStream(OleStream);

    Result := _StringStream
  finally
    OleStream.Free;
    Request := Unassigned;
    CoUninitialize;
  end;

end;

end.
