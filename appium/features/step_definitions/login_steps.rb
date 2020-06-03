Dado("que eu acesse a tela de login") do
  @home_page = Home.new
  @home_page.sel_autenticar
end

Quando("eu faço login com {string} e {string}") do |email, senha|
  @login_page = Login.new
  @login_page.logar(email, senha)
end

Então("posso ver a tela minha conta") do
  @home_page.sel_autenticar
  @perfil_page = Perfil.new
  @perfil_page.validar_login
end
