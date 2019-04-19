require 'pry'
class Book < ApplicationRecord
  validates_uniqueness_of :title, :author
  before_validation :titleize_attributes

  def titleize_attributes
    self.title  = title.titleize
    self.author = author.titleize
  end
end
