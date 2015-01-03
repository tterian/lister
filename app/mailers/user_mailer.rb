class UserMailer < ApplicationMailer
    default from: "noreply@example.com"

    def account_activation(user)
        @user = user
        mail to: user.email, subject: "Account activation"
    end

    def password_reset(user)
        @user = user
        mail to: user.mail, subject: "Password reset"
    end
end
