class Login
  def logar(email, senha)
    find_element(id: "qaninja.com.pixel:id/usernameTxt").send_keys email
    find_element(id: "qaninja.com.pixel:id/passwordTxt").send_keys senha
    find_element(id: "qaninja.com.pixel:id/loginButt").click
  end
end
