class Book < ApplicationRecord
    validates :name, :author, uniqueness: true
    validates :name, uniqueness: true

    before_create :save_to_db
    before_update :save_to_db

    # after_create_commit :log_user_saved_to_db
    # after_update_commit :log_user_saved_to_db

    # private
    # def log_user_saved_to_db
    #     puts name + '#{name} by #{author}'+ author
    #   end
    
    private
    def save_to_db
        self.name= name.capitalize
        self.author= name + ' by ' + author.capitalize
    end
end
