unit uProgramador;

interface

uses
  uPessoa;

type
  TProgramador = class(TPessoa)
  protected
    function PorcentagemAdicional: Extended; override;
  end;

implementation

uses
  System.SysUtils;

{ TProgramador }


function TProgramador.PorcentagemAdicional: Extended;
begin
  case FnReprovacoes of
    0 : Result := 0.20;
    1 : Result := 0.15;
    2..4 : Result := 0.05;
    5..10 : Result := 0
  else
    Result := -0.20;
  end;
end;

end.
