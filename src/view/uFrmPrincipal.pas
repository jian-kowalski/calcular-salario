unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask,
  uPessoa;

type
  TFrmPrincipal = class(TForm)
    EB_NOME: TEdit;
    lbFuncao: TLabel;
    mmObs: TMemo;
    cbTipoFuncao: TComboBox;
    lbNome: TLabel;
    EB_SALARIO: TMaskEdit;
    lbSalario: TLabel;
    btCalcular: TButton;
    EB_REPROVACOES: TMaskEdit;
    blReprocacoes: TLabel;
    procedure btCalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularSalario;
    function CriarObejtoPessoa: TPessoa;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  System.SysUtils, uPessoaFactory, uEnumFuncao;

{$R *.dfm}


procedure TFrmPrincipal.btCalcularClick(Sender: TObject);
begin
  CalcularSalario;
end;

procedure TFrmPrincipal.CalcularSalario;
var
  oPessoa: TPessoa;
begin
  oPessoa             := CriarObejtoPessoa;
  oPessoa.Nome        := EB_NOME.Text;
  oPessoa.Salario     := StrToFloatDef(EB_SALARIO.Text, 0);
  oPessoa.Reprovacoes := StrToIntDef(EB_REPROVACOES.Text, 0);
  mmObs.Clear;
  mmObs.Lines.Add(oPessoa.ImprimirDados);
end;

function TFrmPrincipal.CriarObejtoPessoa: TPessoa;
var
 oFactoryPessoa: TPessoaFactory;
begin
  oFactoryPessoa := TPessoaFactory.Create;
  try
    Result := oFactoryPessoa.ConstruirPessoa(tFuncao(cbTipoFuncao.ItemIndex));
  finally
    FreeAndNil(oFactoryPessoa);
  end;
end;


end.
