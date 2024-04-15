require "pry"

class User
    attr_accessor :user_email, :user_age
    @@all_user = []

    def initialize(user_email_to_save, user_age_to_save)
        @user_age = user_age_to_save
        @user_email = user_email_to_save
        @@all_user << self
    end
   
    def self.all
        return @@all_user
    end

    def show_itself
        return self
    end

    def show_name
        return 
    end

    def self.find_by_email(email)
        # email = @user_email
        # puts email
        @@all_user.each do |iter|
            if iter.user_email == email
                puts "oui #{iter.user_email} voila son age: #{iter.user_age} et voila son id: #{iter.show_itself} et c'est quoi ce truc: #{iter.object_id}"
            end
        end
        return nil
    end
end

