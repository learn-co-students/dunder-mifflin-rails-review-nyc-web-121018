class Employee < ApplicationRecord
  belongs_to :dog
  #
  # No one at Dunder Mifflin can have the same alias and/or job title

  validates :alias, uniqueness: true
  validates :job_title, uniqueness: true


end
