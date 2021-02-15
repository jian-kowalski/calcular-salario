unit uAnalista;

interface

uses
  uPessoa;

type
  TAnalista = class(TPessoa)
  protected
    function PorcentagemAdicional: Extended; override;
  end;

implementation

{ TAnalista }

function TAnalista.PorcentagemAdicional: Extended;
begin
  case FnReprovacoes of
    0 : Result := 0.25;
    1 : Result := 0.15;
    2..7 : Result := 0;
  else
    Result :=  - ((FnReprovacoes-7) * 0.05);
  end;
end;

end.
