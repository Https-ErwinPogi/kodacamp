class Ticket < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :age, presence: true
  validates :country, presence: true
end
