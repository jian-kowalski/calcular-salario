unit uExceptionNegocio;

interface

uses
  System.SysUtils;

type
  ExceptionNomeNaoInformado = class(Exception)
  public
    constructor Create; reintroduce;
  end;

  ExceptionSalarioDeveSerMaiorQueZero = class(Exception)
  public
    constructor Create; reintroduce;
  end;

  ExceptionRGNaoInformado = class(Exception)
  public
    constructor Create; reintroduce;
  end;

  ExceptionRGJaInformado = class(Exception)
  public
    constructor Create; reintroduce;
  end;

implementation

{ ExceptionFuncaoVazia }


{ ExceptionRGJaInformado }

constructor ExceptionRGJaInformado.Create;
begin
  Self.Message := 'RG j� informado para outro funcionario';
end;

{ ExceptionNomeNaoInformado }

constructor ExceptionNomeNaoInformado.Create;
begin
  Self.Message := 'Nome do funcionario n�o informado';
end;

{ ExceptionSalarioNaoInformado }

constructor ExceptionSalarioDeveSerMaiorQueZero.Create;
begin
  Self.Message := 'Salario informado deve ser maior que zero.';
end;

{ ExceptionRGNaoInformado }

constructor ExceptionRGNaoInformado.Create;
begin
  Self.Message := 'RG do funcionario n�o informado ou invalido';
end;

end.
