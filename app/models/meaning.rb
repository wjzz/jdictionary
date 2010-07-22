class Meaning < ActiveRecord::Base
  CATEGORY = %w(word_meaning idiom)
  
  validates_inclusion_of :category, :in => CATEGORY
  belongs_to :word
end
