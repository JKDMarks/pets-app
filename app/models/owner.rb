class Owner < ApplicationRecord
  has_many :pets

  validates :first_name, presence: true, uniqueness: true
  validates :age, numericality: {minimum: 18, only_integer: true}
end
