Dado('que o usuario queira se logar') do
    login.load
  end
  
  Quando('ele digitar a credenciais validas') do
    @test.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
    
  end
  
  Entao('deve acessar o site com sucesso') do
    home.checkLoginSucessful
    
  end