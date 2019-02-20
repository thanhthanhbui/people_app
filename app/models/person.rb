class Person < ApplicationRecord
  has_one :address

  validates :first_name, :last_name, presence: true
  validates :age, numericality: true

  def self.by_first_name
    order(:first_name)
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
