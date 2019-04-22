class Book < ApplicationRecord
  validates_uniqueness_of :title
  before_validation :titleize_attributes

  belongs_to :author, optional: true

  def titleize_attributes
    self.title  = title.titleize
  end
end
