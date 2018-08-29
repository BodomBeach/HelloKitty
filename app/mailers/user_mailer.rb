class UserMailer < ApplicationMailer
 def order_email(user)
     mail(from: "hugopayetsync@gmail.com", to: user,
          subject: "Salut salut")
   end

end
