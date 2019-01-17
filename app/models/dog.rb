class Dog < ApplicationRecord
  has_many :employees

  def self.sorted_dogs
    self.all.sort_by { |d| d.employees.count }
  end
end
