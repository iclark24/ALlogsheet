class Logsheet < ApplicationRecord
  belongs_to :user
  has_many :adventures, dependent: :destroy
  has_many :charclasses, dependent: :destroy
  has_many :magicitems, dependent: :destroy
  has_one :tieronetcp, dependent: :destroy
  has_one :tiertwotcp, dependent: :destroy
  has_one :tierthreetcp, dependent: :destroy
  has_one :tierfourtcp, dependent: :destroy

end
