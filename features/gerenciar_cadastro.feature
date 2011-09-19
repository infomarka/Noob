# language: pt
# Source: http://github.com/aslakhellesoy/cucumber/blob/master/examples/i18n/pt/features/adicao.feature
# Updated: Tue May 25 15:52:12 +0200 2010
Funcionalidade: Cadastro e Login
  Para entrar no sistema
  como usuário não logado
  eu quero me cadastrar.

  Cenário: Cadastrar usuário
    Dado que eu estou na página principal
    Quando eu clico em "Cadastro"
    Então eu devo estar na página de cadastro
    Quando eu preencho "usuario_email" com "xuxa@email.com"
    E eu preencho "usuario_password" com "baixinhos"
    E eu preencho "usuario_password_confirmation" com "baixinhos"
    E eu aperto "usuario_submit"
    Então eu devo ver "Cadastrado com sucesso."

 
  Cenário: Login
    Dado que eu estou na página principal
    Quando eu clico em "Login"
    Então eu devo estar na página de login
    Quando eu preencho "usuario_email" com "ana@email.com"
    E eu preencho "usuario_password" com "123456"
    E eu aperto "usuario_submit"
    Então eu devo ver "Conectado com sucesso."


  Cenário: Logout
    Dado que eu estou logado como "ana@email.com" com a senha "123456"
    Quando eu clico em "Logout"
    Então eu devo estar na página principal
    Então eu devo ver "Desconectado com sucesso."