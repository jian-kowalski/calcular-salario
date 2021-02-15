unit uPessoaFactory;

interface

uses
  uEnumFuncao, uPessoa;

type
  TPessoaFactory = class
  private
  public

  function ConstruirPessoa(AtFuncao: TFuncao): TPessoa;

  end;

implementation

uses
  uProgramador, uAnalista, uTeste;

{ TPessoaFactory }

function TPessoaFactory.ConstruirPessoa(AtFuncao: TFuncao): TPessoa;
begin
  case AtFuncao of
    tfProgramador: Result := TProgramador.Create;
    tfAnalista:    Result := TAnalista.Create;
    tfTeste:       Result := TTeste.Create;
  else
    Result := TPessoa.Create;
  end;
end;

end.
