class Book < ApplicationRecord
  validates_uniqueness_of :title
end
