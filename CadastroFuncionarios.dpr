program CadastroFuncionarios;

uses
  Vcl.Forms,
  uEnumFuncao in 'src\enum\uEnumFuncao.pas',
  uExceptionNegocio in 'src\exception\uExceptionNegocio.pas',
  uPessoa in 'src\classes\uPessoa.pas',
  uPessoaFactory in 'src\classes\uPessoaFactory.pas',
  uAnalista in 'src\classes\uAnalista.pas',
  uTeste in 'src\classes\uTeste.pas',
  uProgramador in 'src\classes\uProgramador.pas',
  uFrmPrincipal in 'src\view\uFrmPrincipal.pas' {FrmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
