unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uClasseVenda, uClasseVendaItem;

type
  TForm8 = class(TForm)
    Button1: TButton;
    txtProduto: TLabeledEdit;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8    : TForm8;
  objVenda : TVenda;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
   if trim(txtProduto.Text) = '' then
      begin
         showmessage('Informe um Produto!');
         exit;
   end;

   if objVenda = nil then
      begin
         objVenda := TVenda.Create;

         objVenda.intCodigo    := 1;
         objVenda.strDataVenda := formatdatetime('dd/mm/yyyy', now);
         objVenda.strHoraVenda := formatdatetime('hh:mm:ss', now);

         objvenda.lstListaProdutos.Clear;
   end;

   objVenda.adicionarProdutos(txtProduto.Text);

   txtProduto.Text := '';

   txtProduto.SetFocus;
end;

procedure TForm8.Button2Click(Sender: TObject);
var
   i : Integer;
begin
   if objVenda = nil then
      begin
         showmessage('Venda sem produtos lançados!');
         exit;
   end;

   memo1.Lines.Clear;

   memo1.Lines.Add(stringofchar('=', 30));
   memo1.Lines.Add('Venda Nº: ' + objVenda.intCodigo.ToString);
   memo1.lines.add('Data    : ' + objVenda.strDataVenda);
   memo1.lines.add('Hora    : ' + objVenda.strHoraVenda);
   memo1.Lines.Add(stringofchar('=', 30));

   for i := 0 to Pred(objVenda.lstListaProdutos.Count) do
      begin
         memo1.Lines.Add(objVenda.lstListaProdutos[i].strProduto);
         memo1.Lines.Add(stringofchar('=', 30));
   end;
end;

procedure TForm8.FormDestroy(Sender: TObject);
begin
   if objVenda <> nil then
      begin
         FreeAndNil(objVenda);
   end;
end;

end.
