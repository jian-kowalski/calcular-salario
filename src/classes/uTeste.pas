unit uTeste;

interface

uses
  uPessoa;

type
  TTeste = class(TPessoa)
  protected
    function PorcentagemAdicional: Extended; override;
  end;

implementation

{ TTeste }

function TTeste.PorcentagemAdicional: Extended;
begin
  case FnReprovacoes of
    0 : Result := 0.15;
    1 : Result := 0.10;
    2..4 : Result := 0.01;
    5..10 : Result := -0.02
  else
    Result := -0.15;
  end;
end;

end.
