class TelephoneDir < ApplicationRecord
    self.per_page = 3

    validates :firstname, :phone, :doorno, :street, :area, :city, :state, :country, presence: true
    validates_each :emailid do |record, attr, value|
        record.errors.add(attr, 'Invalid! e-mail.') if value =~ /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
    end
    validates :phone, numericality: true
    validates :firstname, :area, :city, :state, :country, length: { minimum: 2 }
    validates :phone, uniqueness: true
    # validates :name, length: { is: 10 }

    before_create :save_to_db
    before_update :save_to_db
    
    private
    def save_to_db
        self.firstname= firstname.capitalize
        self.lastname= lastname.capitalize
    end
end
