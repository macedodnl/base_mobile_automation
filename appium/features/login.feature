#language:pt

@Login
Funcionalidade: Login  
    Para que eu possa fazer compras  dos itens  clássicos
    Sendo um usuário cadastrado
    Posso me autenticar pela tela de login
@Login_sucesso
Cenário: Efetuar autenticação com sucesso
    Dado que eu acesse a tela de login
    Quando eu faço login com "tony@stark.com" e "pass123"
    Então posso ver a tela minha conta
@Login_falha
Cenário: Efetuar autenticação com falha
    Dado que eu acesse a tela de login
    Quando eu faço login com "tony@stark.com" e "!@#"
    Então posso ver a tela minha conta