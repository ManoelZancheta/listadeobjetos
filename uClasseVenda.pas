unit uClasseVenda;

interface

uses uClasseVendaItem, System.Generics.Collections, SysUtils;

type
   TVenda = class
      private
         FData          : String;
         FCodigo        : Integer;
         FHora          : String;
         FListaProdutos : TObjectList<TVendaItem>;

      protected
      public
         property intCodigo        : Integer                 read FCodigo        write FCodigo;
         property strDataVenda     : String                  read FData          write FData;
         property strHoraVenda     : String                  read FHora          write FHora;
         property lstListaProdutos : TObjectList<TVendaItem> read FListaProdutos write FListaProdutos;


         //Função para adicionar itens na venda
         function adicionarProdutos(pProduto: String): boolean;


         constructor Create;
         destructor Destroy; override;

      published

   end;

implementation

{ TVenda }


function TVenda.adicionarProdutos(pProduto: String): boolean;
begin
   FListaProdutos.Add(TVendaItem.Create);
   FListaProdutos[FListaProdutos.Count -1].strProduto := pProduto;
end;

constructor TVenda.Create;
begin
   inherited Create;


   //Cria uma lista vazia, ponta para receber objetos do tipo TVendaItem
   FListaProdutos := TObjectList<TVendaItem>.Create;
end;

destructor TVenda.Destroy;
begin
   //FreeAndNil na lista, destruirá todos os objetos TVendaItem da lista
   FreeAndNil(FListaProdutos);

   inherited;
end;

end.
