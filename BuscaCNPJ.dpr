program BuscaCNPJ;

uses
  Vcl.Forms,
  uBuscaCNPJ in 'uBuscaCNPJ.pas' {frmBuscaCNPJ};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmBuscaCNPJ, frmBuscaCNPJ);
  Application.Run;
end.
