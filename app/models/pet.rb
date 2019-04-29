class Pet < ApplicationRecord
  belongs_to :owner

  validates :name, presence: true
  validates :species, inclusion: {in: ["dog", "cat", "bird"], message: "%{value} is not valid."}
end
