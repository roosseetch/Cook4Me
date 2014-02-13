class Chef < ActiveRecord::Base

  has_many :users
  has_many :phones

  has_one :catering

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" },
   :default_url => "/images/:style/missing.png"
end
