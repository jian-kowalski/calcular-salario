unit uPessoa;

interface

uses
  uEnumFuncao;

type
  TPessoa = class
  private
    FbDataCadastro: TDateTime;
    FcNome: String;
    function GetNome: String;
    procedure SetNome(const Value: String);
    function GetSalario: Extended;
    procedure SetSalario(const Value: Extended);
    function GetReprovacoes: Integer;
    procedure SetReprovacoes(const Value: Integer);
  protected
    FnSalario: Extended;
    FnReprovacoes: Integer;
    function PorcentagemAdicional: Extended; Virtual;
    function CalcularSalario: Extended; virtual;
  public
    constructor Create;
    property Nome: String read GetNome write SetNome;
    property Reprovacoes: Integer read GetReprovacoes write SetReprovacoes;
    property Salario: Extended read GetSalario write SetSalario;
    function ImprimirDados: String; virtual;

  end;

implementation

uses
  System.SysUtils, DateUtils, uExceptionNegocio;

{ TPessoa }


function TPessoa.CalcularSalario: Extended;
begin
  Result := FnSalario + (FnSalario * PorcentagemAdicional);
end;

constructor TPessoa.Create;
begin
  inherited Create;
  FbDataCadastro := Now;
end;

function TPessoa.GetNome: String;
begin
  Result := FcNome;
end;

function TPessoa.GetReprovacoes: Integer;
begin
  Result := FnReprovacoes;
end;

function TPessoa.GetSalario: Extended;
begin
  Result := FnSalario;
end;

function TPessoa.ImprimirDados: String;
begin
  Result := 'Nome: ' + FcNome + sLineBreak +
            'Salario: ' + FnSalario.ToString + sLineBreak +
            'Com reprovações: ' + FnReprovacoes.ToString + sLineBreak +
            'Totalizando: ' + CalcularSalario.ToString;
end;

function TPessoa.PorcentagemAdicional: Extended;
begin
  Result := 0.001;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  if Value = EmptyStr then
    raise ExceptionNomeNaoInformado.Create
  else
    FcNome := Value;
end;

procedure TPessoa.SetReprovacoes(const Value: Integer);
begin
  FnReprovacoes := Value;
end;

procedure TPessoa.SetSalario(const Value: Extended);
begin
  if Value <= 0 then
    raise ExceptionSalarioDeveSerMaiorQueZero.Create
  else
    FnSalario := Value;
end;

end.
