class HomePage < SitePrism::Page

    element :userName, :xpath, "/html/body/div[6]/header/div/nav/ul/li[1]/a/span"
    element :navBarHome, :xpath, "/html/body/div[6]/header/div/nav/ul/li[3]/a/span"
    element :myIcon, :xpath, "/html/body/div[6]/header/div/nav/ul/li[4]/a/span"

    def checkLoginSucessful
        expect(userName.text).to eql "Início"
        expect(navBarHome.text).to eql "Vagas"
        expect(myIcon.text).to eql "Mensagens"
    end

end