class Office < ActiveRecord::Base
    belongs_to :country
    belongs_to :city
    has_one :catering
    has_many :phones
end
