class LoginPage < SitePrism::Page

    set_url Environment
    element :emailField, :id, "username"
    element :passwordField, :id, "password"
    element :loginButton, :xpath, "/html/body/div/main/div[2]/div[1]/form/div[4]/button"

    def userLogin(email, password)
        emailField.set (email)
        passwordField.set (password)
        loginButton.click
    end

end