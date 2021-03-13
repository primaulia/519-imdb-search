class Director < ApplicationRecord
  has_many :movies, dependent: :destroy

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
