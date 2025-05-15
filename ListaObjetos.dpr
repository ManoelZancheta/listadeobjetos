program ListaObjetos;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form8},
  uClasseVendaItem in 'uClasseVendaItem.pas',
  uClasseVenda in 'uClasseVenda.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown   := true;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
