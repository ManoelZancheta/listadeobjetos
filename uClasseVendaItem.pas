unit uClasseVendaItem;

interface

type
   TVendaItem = class
      private
         FProduto: String;
      protected
      public
         property strProduto : String read FProduto write FProduto;

         constructor Create;
         destructor Destroy; override;

      published

   end;

implementation

{ TVendaItem }

constructor TVendaItem.Create;
begin
   inherited Create;
end;

destructor TVendaItem.Destroy;
begin
   inherited;
end;

end.
