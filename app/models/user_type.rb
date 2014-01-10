class UserType < ActiveRecord::Base
    has_many :users

    # Type of possible phones, used in dropdowns and seed values
    NAMES = ['Administrator', 'Client', 'Caterer']
end
