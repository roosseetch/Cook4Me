class Office < ActiveRecord::Base
    belongs_to :country
    belongs_to :city

    has_many :clients
    has_many :orders
    has_many :phones


    validates :name, :address, :image_url, presence: true
    # validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :name, uniqueness: true
    validates :image_url, allow_blank: true, format: {
        with: %r{\.(gif|jpg|png)\Z}i,
        message: 'must be a URL for GIF, JPG or PNG image.'
    }

end
