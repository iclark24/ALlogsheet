class Logsheet < ApplicationRecord
  belongs_to :user
  has_many :adventures
  has_many :charclasses
  has_many :magicitems
  has_many :tieronetcps
  has_many :tiertwotcps
  has_many :tierthreetcps
  has_many :tierfourtcps

end
