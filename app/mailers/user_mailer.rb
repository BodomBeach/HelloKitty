class UserMailer < ApplicationMailer
 def order_email(user)
     mail(from: "hugopayetsync@gmail.com", to: user,
          subject: "Votre commande")

 end

 def admin_order_email(user,amount)
 	@user = user
 	@amount = amount
 	mail(from: "hugopayetsync@gmail.com", to: "admin@admin.com",
          subject: "Whoop whoop nouvelle commande")
 end


end

