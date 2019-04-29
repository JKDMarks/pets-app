class Owner < ApplicationRecord
  has_many :pets, dependent: :destroy

  validates :first_name, presence: true, uniqueness: true
  validates :age, numericality: {greater_than_or_equal_to: 18, only_integer: true}

  def self.owners_two_or_more_pets
    Owner.select do |owner|
      owner.pets.count >= 2
    end
  end
end
