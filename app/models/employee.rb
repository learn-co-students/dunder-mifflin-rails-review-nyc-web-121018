class Employee < ApplicationRecord
  belongs_to :dog
  validates :title, uniqueness: true
  validate :has_alias

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def has_alias
    if self.alias != "none"
      Employee.all.each do |e|
        if e.alias.match(self.alias)
          errors.add(:alias, "Dwight says get a unique alias.")
        end
      end
    end
  end

end
