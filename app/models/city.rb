class City < ActiveRecord::Base
    has_many :offices
    has_many :caterings
end
