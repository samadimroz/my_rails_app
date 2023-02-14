class PostmanMailer < ApplicationMailer
    def alert_admin(data)
        @name = data.name
        @author = data.author
        mail(to: "imrozsamad@gmail.com", subject: "ALERT- A new book was added")

    end
end
