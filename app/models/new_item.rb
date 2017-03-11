class NewItem < ApplicationRecord
  has_many :comments
  validates :lead, length: {maximum: 250}, allow_blank: true

end
