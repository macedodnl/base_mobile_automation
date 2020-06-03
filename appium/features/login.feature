#language:pt

@Login
Funcionalidade: Login  
    Para que eu possa fazer compras  dos itens  clássicos
    Sendo um usuário cadastrado
    Posso me autenticar pela tela de login

Cenário: Usuário logado
    Dado que eu acesse a tela de login
    Quando eu faço login com "tony@stark.com" e "pass123"
    Então posso ver a tela minha conta