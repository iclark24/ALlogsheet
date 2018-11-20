class Logsheet < ApplicationRecord
  belongs_to :user
  has_many :adventures
  has_many :charclasses
  has_many :magicitems
  has_one :tieronetcp
  has_one :tiertwotcp
  has_one :tierthreetcp
  has_one :tierfourtcp

end
