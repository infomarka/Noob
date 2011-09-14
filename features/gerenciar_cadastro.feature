# language: pt
# Source: http://github.com/aslakhellesoy/cucumber/blob/master/examples/i18n/pt/features/adicao.feature
# Updated: Tue May 25 15:52:12 +0200 2010
Funcionalidade: Cadastro e Login
  Para entrar no sistema
  como usuário não logado
  eu quero me cadastrar.

  @javascript
  Cenário: Cadastrar usuário
    Dado que eu estou na página principal
    Quando eu clico em "Cadastro"
    Então eu devo estar na página de cadastro
    Quando eu preencho "usuario_email" com "Ana@email.com"
    E eu preencho "usuario_password" com "123456"
    E eu preencho "usuario_password_confirmation" com "123456"
    E eu aperto "usuario_submit"
    Então eu devo ver "Cadastrado com sucesso."